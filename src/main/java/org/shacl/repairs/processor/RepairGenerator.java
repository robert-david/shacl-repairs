package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.Resource;
import org.eclipse.rdf4j.model.Statement;
import org.eclipse.rdf4j.model.Value;
import org.eclipse.rdf4j.model.impl.LinkedHashModel;
import org.eclipse.rdf4j.model.vocabulary.RDF;
import org.eclipse.rdf4j.model.vocabulary.RDFS;
import org.eclipse.rdf4j.repository.RepositoryConnection;
import org.eclipse.rdf4j.repository.sail.SailRepository;
import org.eclipse.rdf4j.repository.sail.SailRepositoryConnection;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.BasicParserSettings;
import org.eclipse.rdf4j.sail.memory.MemoryStore;
import org.eclipse.rdf4j.sail.shacl.ShaclSail;
import org.eclipse.rdf4j.sail.shacl.ast.NodeShape;
import org.eclipse.rdf4j.sail.shacl.ast.PropertyShape;
import org.eclipse.rdf4j.sail.shacl.ast.Shape;
import org.eclipse.rdf4j.sail.shacl.ast.constraintcomponents.*;
import org.eclipse.rdf4j.sail.shacl.ast.targets.*;
import org.shacl.repairs.data.RepairData;
import org.shacl.repairs.data.SHACLData;

import java.util.*;

import static org.shacl.repairs.processor.Utils.ns;
import static org.shacl.repairs.processor.Utils.nss;

public class RepairGenerator {

    static int shapeCount = 0;
    static boolean relaxed = true;

    public static void processRepairs(
            Model dataModel, Model shapesModel,
            SHACLData parserData, RepairData repairData
    ) {
        Utils.nss = dataModel.getNamespaces();

        shapeCount = 0;

        ShaclSail shaclSail = new ShaclSail(new MemoryStore());

        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        SailRepository shapesRepo = new SailRepository(new MemoryStore());
        try (RepositoryConnection connection = shapesRepo.getConnection()) {
            connection.add(shapesModel);
        }

        List<Shape> shapes;
        try (SailRepositoryConnection shapesRepoCacheConnection = shapesRepo.getConnection()) {
            shapes = shaclSail.getShapes(shapesRepoCacheConnection);
        }

        processTargets(shapes, dataModel);

        processShapes(shapes);

        createRepairTargetRules(parserData, repairData);
    }

    private static void createRepairTargetRules(
            SHACLData parserData,
            RepairData repairData) {

        repairData.getChangeSetRules().add("% Get all optimal models: --opt-mode=optN -n 10 --quiet=1\n");
        repairData.getChangeSetRules().add("% Change the scores of add and del to prioritize additions or deletions\n");
        repairData.getChangeSetRules().add("#minimize { 1@2,A: add(A); 1@2,D: del(D) } .\n");
        repairData.getChangeSetRules().add("#minimize { 1@3,X,S: skipTarget(X,S) } .\n");

        if (relaxed) {
            repairData.getRepairTargetRules().add("actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .\n");
        }

        for (Value id : parserData.getTargetNodes().keySet()) {
            for (Resource nodeShape : parserData.getTargetNodes().get(id)) {
                String shapeName = ns(nss,nodeShape);
                if (relaxed) {
                    repairData.getRepairTargetRules().add(shapeName + "_(\"" + ns(nss, id) + "\",\"t*\"):-actualTarget(\"" + ns(nss, id) + "\"," + shapeName + ") .\n");
                } else {
                    repairData.getRepairTargetRules().add(shapeName + "_(\"" + ns(nss, id) + "\",\"t*\") .\n");
                }
            }
        }
    }

    private static void processTargets(List<Shape> shapes, Model dataModel) {

        for (Shape shape : shapes) {
            for (Target target : shape.getTarget()) {

                // sh:targetClass
                if (target instanceof TargetClass) {
                    for (Resource targetClass : ((TargetClass) target).getTargetClass()) {

                        for (Statement statement : dataModel.getStatements(null, RDF.TYPE, targetClass)) {

                            if (!SHACLData.get().getTargetNodes().containsKey(statement.getSubject())) {
                                HashSet<Resource> shapeAssignments = new HashSet<>();
                                SHACLData.get().getTargetNodes().put(statement.getSubject(), shapeAssignments);
                            }
                            SHACLData.get().getTargetNodes().get(statement.getSubject()).add(shape.getId());
                        }
                    }
                }

                // sh:targetNode
                if (target instanceof TargetNode) {
                    for (Value targetNode : ((TargetNode) target).getTargetNodes()) {

                        if (!SHACLData.get().getTargetNodes().containsKey(targetNode)) {
                            HashSet<Resource> shapeAssignments = new HashSet<>();
                            SHACLData.get().getTargetNodes().put(targetNode, shapeAssignments);
                        }
                        SHACLData.get().getTargetNodes().get(targetNode).add(shape.getId());
                    }
                }

                // sh:targetSubjectsOf
                if (target instanceof TargetSubjectsOf) {
                    for (Statement statement : dataModel.getStatements(null, target.getPredicate(), null)) {

                        if (!SHACLData.get().getTargetNodes().containsKey(statement.getSubject())) {
                            HashSet<Resource> shapeAssignments = new HashSet<>();
                            SHACLData.get().getTargetNodes().put(statement.getSubject(), shapeAssignments);
                        }
                        SHACLData.get().getTargetNodes().get(statement.getSubject()).add(shape.getId());
                    }
                }

                // sh:targetObjectsOf
                if (target instanceof TargetObjectsOf) {
                    for (Statement statement : dataModel.getStatements(null, target.getPredicate(), null)) {

                        if (!SHACLData.get().getTargetNodes().containsKey(statement.getObject())) {
                            HashSet<Resource> shapeAssignments = new HashSet<>();
                            SHACLData.get().getTargetNodes().put(statement.getObject(), shapeAssignments);
                        }
                        SHACLData.get().getTargetNodes().get(statement.getObject()).add(shape.getId());
                    }
                }
            }

            // implicit shape targets based on rdf:type
            Model model = new LinkedHashModel();
            model = shape.toModel(model);

            if (model.getStatements(shape.getId(), RDF.TYPE, RDFS.CLASS).iterator().hasNext()
                    || model.getStatements(shape.getId(), RDFS.SUBCLASSOF, null).iterator().hasNext()
                    || model.getStatements(null, RDFS.SUBCLASSOF, shape.getId()).iterator().hasNext()) {

                for (Statement statement : dataModel.getStatements(null, RDF.TYPE, shape.getId())) {

                    if (!SHACLData.get().getTargetNodes().containsKey(statement.getSubject())) {
                        HashSet<Resource> shapeAssignments = new HashSet<>();
                        SHACLData.get().getTargetNodes().put(statement.getSubject(), shapeAssignments);
                    }
                    SHACLData.get().getTargetNodes().get(statement.getSubject()).add(shape.getId());
                }
            }
        }
    }

    private static void processShapes(List<Shape> shapes) {

        Map<Resource, HashSet<ConstraintComponent>> shapeMap = new HashMap<>();

        for (Shape shape : shapes) {

            if (!shapeMap.containsKey(shape.getId())) {
                shapeMap.put(shape.getId(), new HashSet<>());
            }
            shapeMap.get(shape.getId()).addAll(shape.getConstraintComponents());
        }

        for (Resource shape : shapeMap.keySet()) {

            String shapeName = ns(nss, shape);

            if (shapeMap.get(shape).size() == 1) {

                dispatch(shapeName, shapeMap.get(shape).stream().findFirst().get(), false);

            } else if (shapeMap.get(shape).size() > 1) {

                processConjunction(shapeName, shapeMap.get(shape), false);
            }
        }
    }

    private static void processConjunction(String shapeName, Collection<? extends ConstraintComponent> constraintComponents, boolean universal) {

        Map<Resource, HashSet<PropertyShape>> propertyShapes = new HashMap<>();
        Set<ConstraintComponent> nodeConstraints = new HashSet<>();

        String notRepair = "";

        for (ConstraintComponent constraintComponent : constraintComponents) {

            if (constraintComponent instanceof PropertyShape) {

                PropertyShape propertyShape = (PropertyShape) constraintComponent;

                if (!propertyShapes.containsKey(propertyShape.getId())) {
                    propertyShapes.put(propertyShape.getId(), new HashSet<>());
                }
                propertyShapes.get(propertyShape.getId()).add(propertyShape);

            } else {

                nodeConstraints.add(constraintComponent);
            }
        }

        for (Resource propertyShape : propertyShapes.keySet()) {

            RepairData.get().getRepairRules().add(
                    ns(nss, propertyShape) + "_(X,\"t*\"):-" +
                            shapeName + "_(X,\"t*\") .\n");

            notRepair += ns(nss, propertyShape) + "_(X,\"f\");";

            processPropertyShape(ns(nss, propertyShape), propertyShapes.get(propertyShape));
        }

        for (ConstraintComponent nodeConstraint : nodeConstraints) {

            String nodeName = "s" + shapeCount++;

            RepairData.get().getRepairRules().add(nodeName + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");

            dispatch(nodeName, nodeConstraint, universal);

            notRepair += nodeName + "_(X,\"f\");";
        }

        if (!"".equals(notRepair)) {
            if (!notRepair.endsWith(";")) throw new RuntimeException("no constraints for shape " + shapeName);
            notRepair = notRepair.substring(0, notRepair.length() - 1);
            notRepair += ":-" + shapeName + "_(X,\"f\") .\n";

            RepairData.get().getRepairRules().add(notRepair);
        }
    }

    private static void processDisjunction(String shapeName, Collection<? extends ConstraintComponent> constraintComponents, boolean universal) {

        Map<Resource, HashSet<PropertyShape>> propertyShapes = new HashMap<>();
        Set<ConstraintComponent> nodeConstraints = new HashSet<>();

        String orRepair = "";

        for (ConstraintComponent constraintComponent : constraintComponents) {

            if (constraintComponent instanceof PropertyShape) {

                PropertyShape propertyShape = (PropertyShape) constraintComponent;

                if (!propertyShapes.containsKey(propertyShape.getId())) {
                    propertyShapes.put(propertyShape.getId(), new HashSet<>());
                }
                propertyShapes.get(propertyShape.getId()).add(propertyShape);

            } else {

                nodeConstraints.add(constraintComponent);
            }
        }

        for (Resource propertyShape : propertyShapes.keySet()) {

            RepairData.get().getRepairRules().add(
                    ns(nss, propertyShape) + "_(X,\"f\"):-" +
                            shapeName + "_(X,\"f\") .\n");

            orRepair += ns(nss, propertyShape) + "_(X,\"t*\");";

            processPropertyShape(ns(nss, propertyShape), propertyShapes.get(propertyShape));
        }

        for (ConstraintComponent nodeConstraint : nodeConstraints) {

            String nodeName = "s" + shapeCount++;

            RepairData.get().getRepairRules().add(nodeName + "_(X,\"f\"):-" + shapeName + "_(X,\"f\") .\n");

            dispatch(nodeName, nodeConstraint, universal);

            orRepair += nodeName + "_(X,\"t*\");";
        }

        if (!"".equals(orRepair)) {
            if (!orRepair.endsWith(";")) throw new RuntimeException("no constraints for shape " + shapeName);
            orRepair = orRepair.substring(0, orRepair.length() - 1);
            orRepair += ":-" + shapeName + "_(X,\"t*\") .\n";

            RepairData.get().getRepairRules().add(orRepair);
        }
    }

    public static void processPropertyShape(String shapeName, Collection<PropertyShape> propertyShapes) {

        String notRepair = "";

        Set<ConstraintComponent> propertyConstraints = new HashSet<>();
        Set<ConstraintComponent> qualifiedPropertyConstraints = new HashSet<>();
        Set<ConstraintComponent> valueNodeConstraints = new HashSet<>();
        Set<ConstraintComponent> constantConstraints = new HashSet<>();

        String path = null;

        boolean hasMinCount = false;

        for (PropertyShape propertyShape : propertyShapes) {

            if (path == null) {
                path = ns(nss, propertyShape.getPath().getId());
            } else {
                if (!path.equals(ns(nss, propertyShape.getPath().getId()))) {
                    throw new RuntimeException("Duplicate path on shape " + shapeName +
                            "; " + path + " " + (ns(nss, propertyShape.getPath().getId())));
                }
            }

            for (ConstraintComponent constraintComponent : propertyShape.getConstraintComponents()) {

                if (constraintComponent instanceof MinCountConstraintComponent) {
                    hasMinCount = true;
                }

                if (constraintComponent instanceof MinCountConstraintComponent
                        || constraintComponent instanceof MaxCountConstraintComponent
                        || constraintComponent instanceof EqualsConstraintComponent
                ) {
                    propertyConstraints.add(constraintComponent);
                } else if (constraintComponent instanceof QualifiedMinCountConstraintComponent
                        || constraintComponent instanceof QualifiedMaxCountConstraintComponent) {
                    qualifiedPropertyConstraints.add(constraintComponent);
                } else if (constraintComponent instanceof ClassConstraintComponent
                        || constraintComponent instanceof AndConstraintComponent
                        || constraintComponent instanceof OrConstraintComponent
                        || constraintComponent instanceof NotConstraintComponent
                        || constraintComponent instanceof NodeShape
                        || constraintComponent instanceof PropertyShape
                        || constraintComponent instanceof DatatypeConstraintComponent) {
                    valueNodeConstraints.add(constraintComponent);
                } else if (constraintComponent instanceof HasValueConstraintComponent) {
                    constantConstraints.add(constraintComponent);
                } else {
                    // "Ignoring unknown constraint " + constraintComponent.getClass().getSimpleName()
                }
            }
        }

        for (ConstraintComponent constantConstraint : constantConstraints) {

            String s = "s" + shapeCount++;

            RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
            notRepair += s + "_(X,\"f\");";

            getCardinalityRules(s, path, 1, Collections.singletonList(constantConstraint));
        }

        // if no sh:minCount was given, then add sh:minCount 0 as a default
        if (!hasMinCount) {
            propertyConstraints.add(new MinCountConstraintComponent(0));
        }

        RepairData.get().getAnnotationRules().add(path + "_(X,Y,\"t*\"):-" + path + "(X,Y) .\n");
        RepairData.get().getAnnotationRules().add(path + "_(X,Y,\"t*\"):-" + path + "_(X,Y,\"t\") .\n");

        RepairData.get().getInterpretationRules().add(
                path + "_(X,Y,\"t**\"):-" +
                        path + "_(X,Y,\"t*\"),not " + path + "_(X,Y,\"f\") .\n");

        RepairData.get().getProgramConstraints().add(
                ":-" + path + "_(X,Y,\"t\")," + path + "_(X,Y,\"f\") .\n");

        RepairData.get().getChangeSetRules().add("add(" + path + "(X,Y)):-" + path + "_(X,Y,\"t**\"),not " + path + "(X,Y) .\n");
        RepairData.get().getChangeSetRules().add("del(" + path + "(X,Y)):-" + path + "_(X,Y,\"f\")," + path + "(X,Y) .\n");

        RepairData.get().getRepairRules().add("\n");

        for (ConstraintComponent constraintComponent : qualifiedPropertyConstraints) {

            if (constraintComponent instanceof QualifiedMinCountConstraintComponent) {

                long qualifiedMinCount =
                        ((QualifiedMinCountConstraintComponent) constraintComponent).getQualifiedMinCount();
                RepairData.get().getRepairRules().add("% sh:qualifiedMinCount " + qualifiedMinCount + " for " + shapeName + "\n");

                String s = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
                notRepair += s + "_(X,\"f\");";

                getCardinalityRules(s, path, qualifiedMinCount,
                        Collections.singletonList(((QualifiedMinCountConstraintComponent) constraintComponent).getQualifiedValueShape()));

            } else if (constraintComponent instanceof QualifiedMaxCountConstraintComponent) {

                long qualifiedMaxCount = ((QualifiedMaxCountConstraintComponent) constraintComponent).getQualifiedMaxCount();
                RepairData.get().getRepairRules().add("% sh:qualifiedMaxCount " + qualifiedMaxCount + " for " + shapeName + "\n");

                String s = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
                notRepair += s + "_(X,\"f\");";

                String notName = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(notName + "_(X,\"f\"):-" + s + "_(X,\"t*\") .\n");
                RepairData.get().getRepairRules().add(notName + "_(X,\"t*\"):-" + s + "_(X,\"f\") .\n");

                s = notName;

                getCardinalityRules(s, path, qualifiedMaxCount+1,
                        Collections.singletonList(((QualifiedMaxCountConstraintComponent) constraintComponent).getQualifiedValueShape()));
            }
        }

        for (ConstraintComponent constraintComponent : propertyConstraints) {

            if (constraintComponent instanceof MinCountConstraintComponent) {

                long minCount = ((MinCountConstraintComponent) constraintComponent).getMinCount();
                RepairData.get().getRepairRules().add("% sh:minCount " + minCount + " for " + shapeName + "\n");

                String s = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
                notRepair += s + "_(X,\"f\");";

                getCardinalityRules(s, path, minCount, valueNodeConstraints);

            } else if (constraintComponent instanceof MaxCountConstraintComponent) {

                long maxCount = ((MaxCountConstraintComponent) constraintComponent).getMaxCount();
                RepairData.get().getRepairRules().add("% sh:maxCount " + maxCount + " for " + shapeName + "\n");

                String s = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
                notRepair += s + "_(X,\"f\");";

                String notName = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(notName + "_(X,\"f\"):-" + s + "_(X,\"t*\") .\n");
                RepairData.get().getRepairRules().add(notName + "_(X,\"t*\"):-" + s + "_(X,\"f\") .\n");

                s = notName;

                getCardinalityRules(s, path, maxCount+1, valueNodeConstraints);

            } else if (constraintComponent instanceof EqualsConstraintComponent) {

                String equalsName = ns(nss, ((EqualsConstraintComponent) constraintComponent).getPredicate());
                getEqualsRules(shapeName, path, equalsName);
            }
        }

        RepairData.get().getRepairRules().add("% universal for " + shapeName + "\n");
        if ((propertyConstraints.size() + qualifiedPropertyConstraints.size()) > 0) {

            String s = "s" + shapeCount++;

            RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
            notRepair += s + "_(X,\"f\");";

            getUniversalRules(s, path, valueNodeConstraints);

        } else {

            getUniversalRules(shapeName, path, valueNodeConstraints);
        }

        if (!"".equals(notRepair)) {
            notRepair = notRepair.substring(0, notRepair.length() - 1);
            notRepair += ":-" + shapeName + "_(X,\"f\") .\n";

            RepairData.get().getRepairRules().add(notRepair);
        }
    }

    private static void getCardinalityRules(String shapeName, String path, long minCount, Collection<ConstraintComponent> valueNodeConstraints) {

        String repairChoices = ";choose(" + shapeName + ",X," + path + ",0):-" + shapeName + "_(X,\"t*\") .\n";

        for (int i = 1; i <= minCount; i++) {

            repairChoices = ";choose(" + shapeName + ",X," + path + "," + i + ")" + repairChoices;

            RepairData.get().getRepairRules().add(
                    path + "_(X,@new(" + shapeName + ",X," + path + ",1.." + i + "),\"t\")" +
                            ":-choose(" + shapeName + ",X," + path + "," + i + ") .\n");
        }
        if (!repairChoices.startsWith(";")) {
            throw new RuntimeException("No constraints for sh:or " + shapeName);
        }
        repairChoices = repairChoices.substring(1);

        RepairData.get().getRepairRules().add(repairChoices);

        String s = "s" + shapeCount++;

        long allowed = minCount > 0 ? (minCount - 1) : 0;
        RepairData.get().getRepairRules().add(
                "(C-" + allowed + ") {" +
                        path + "_(X,Y,\"f\"):" + path + "(X,Y)" +//,not " + s + "_(Y,\"f\")" +
                        ";" +
                        s + "_(Y,\"f\"):" + path + "_(X,Y,\"t*\"),not " + path + "_(X,Y,\"f\")" +
                        "} (C-" + allowed + "):-"
                        + shapeName + "_(X,\"f\")," +
                        "#count {Y:" + path + "_(X,Y,\"t*\")}=C," +
                        "C>" + allowed +
                        " .\n");

        // value node shape
        if (SHACLData.get().getConstantsFacts().size() > 0) {
            RepairData.get().getRepairRules().add(
                    "0 {" + path + "_(X,Y,\"t\"):const(Y)} " +
                            SHACLData.get().getConstantsFacts().size() +
                            ":-" + shapeName + "_(X,\"t*\") .\n"
            );
            RepairData.get().getChangeSetRules().add("#minimize { 1@1,X,Y: " + path + "_(X,Y,\"t\"), const(Y) } .\n");
        }

        RepairData.get().getRepairRules().add(
                minCount + " {" +
                        s + "_(Y,\"t*\"):" + path + "_(X,Y,\"t**\")" +
                        "} " + (
                        Math.max(minCount,SHACLData.get().getConstantsFacts().size())
                ) +
                        ":-"
                        + shapeName + "_(X,\"t*\") .\n");

        RepairData.get().getRepairRules().add("\n");

        getNodeConstraintRules(s, valueNodeConstraints, false);

        RepairData.get().getRepairRules().add("\n");
    }

    private static void getUniversalRules(String shapeName, String path, Set<ConstraintComponent> valueNodeConstraints) {

        String notName = "s" + shapeCount++;

        RepairData.get().getRepairRules().add(notName + "_(X,\"f\"):-" + shapeName + "_(X,\"t*\") .\n");
        RepairData.get().getRepairRules().add(notName + "_(X,\"t*\"):-" + shapeName + "_(X,\"f\") .\n");

        shapeName = notName;

        String repairChoices = ";choose(" + shapeName + ",X," + path + ",0):-" + shapeName + "_(X,\"t*\") .\n";

        for (int i = 1; i <= 1; i++) {

            repairChoices = ";choose(" + shapeName + ",X," + path + "," + i + ")" + repairChoices;

            RepairData.get().getRepairRules().add(
                    path + "_(X,@new(" + shapeName + ",X," + path + ",1.." + i + "),\"t\")" +
                            ":-choose(" + shapeName + ",X," + path + "," + i + ") .\n");
        }
        if (!repairChoices.startsWith(";")) {
            throw new RuntimeException("No constraints for sh:or " + shapeName);
        }
        repairChoices = repairChoices.substring(1);

        RepairData.get().getRepairRules().add(repairChoices);

        String s = "s" + shapeCount++;

        long allowed = 0;
        RepairData.get().getRepairRules().add(
                "(C-" + allowed + ") {" +
                        path + "_(X,Y,\"f\"):" + path + "(X,Y)" +//,not " + s + "_(Y,\"f\")" +
                        ";" +
                        s + "_(Y,\"f\"):" + path + "_(X,Y,\"t*\"),not " + path + "_(X,Y,\"f\")" +
                        "} (C-" + allowed + "):-"
                        + shapeName + "_(X,\"f\")," +
                        "#count {Y:" + path + "_(X,Y,\"t*\")}=C," +
                        "C>" + allowed +
                        " .\n");

        // value node shape
        if (SHACLData.get().getConstantsFacts().size() > 0) {
            RepairData.get().getRepairRules().add(
                    "0 {" + path + "_(X,Y,\"t\"):const(Y)} " +
                            SHACLData.get().getConstantsFacts().size() +
                            ":-" + shapeName + "_(X,\"t*\") .\n"
            );
            RepairData.get().getChangeSetRules().add("#minimize { 1@1,X,Y: " + path + "_(X,Y,\"t\"), const(Y) } .\n");
        }

        RepairData.get().getRepairRules().add(
                1 + " {" +
                        s + "_(Y,\"t*\"):" + path + "_(X,Y,\"t**\")" +
                        "} " + (
                        Math.max(1, SHACLData.get().getConstantsFacts().size())
                ) +
                        ":-"
                        + shapeName + "_(X,\"t*\") .\n");

        notName = "s" + shapeCount++;

        RepairData.get().getRepairRules().add(notName + "_(X,\"f\"):-" + s + "_(X,\"t*\") .\n");
        RepairData.get().getRepairRules().add(notName + "_(X,\"t*\"):-" + s + "_(X,\"f\") .\n");

        s = notName;

        RepairData.get().getRepairRules().add("\n");

        getNodeConstraintRules(s, valueNodeConstraints, true);

        RepairData.get().getRepairRules().add("\n");
    }

    private static void getEqualsRules(String shapeName, String path, String equalsName) {

        RepairData.get().getAnnotationRules().add(equalsName + "_(X,Y,\"t*\"):-" + equalsName + "(X,Y) .\n");
        RepairData.get().getAnnotationRules().add(equalsName + "_(X,Y,\"t*\"):-" + equalsName + "_(X,Y,\"t\") .\n");

        RepairData.get().getRepairRules().add(equalsName + "_(X,Y,\"t\"):-" +
                shapeName + "_(X,\"t*\")," + path + "_(X,Y,\"t*\") .\n");
        RepairData.get().getRepairRules().add(path + "_(X,Y,\"t\"):-" +
                shapeName + "_(X,\"t*\")," + equalsName + "_(X,Y,\"t*\") .\n");

        RepairData.get().getRepairRules().add("1 {" + path + "_(X,Y,\"f\");" + equalsName + "_(X,Y,\"f\")} 1:-" +
                shapeName + "_(X,\"f\")," + path + "_(X,Y,\"t*\")," + equalsName + "_(X,Y,\"t*\") .\n");

        RepairData.get().getRepairRules().add("\n");

        RepairData.get().getInterpretationRules().add(
                equalsName + "_(X,Y,\"t**\"):-" +
                        equalsName + "_(X,Y,\"t*\"),not " + equalsName + "_(X,Y,\"f\") .\n");

        RepairData.get().getChangeSetRules().add("add(" + equalsName + "(X,Y)):-" + equalsName + "_(X,Y,\"t**\"),not " + equalsName + "(X,Y) .\n");
        RepairData.get().getChangeSetRules().add("del(" + equalsName + "(X,Y)):-" + equalsName + "_(X,Y,\"f\")," + equalsName + "(X,Y) .\n");

        RepairData.get().getProgramConstraints().add(":-" + equalsName + "_(X,Y,\"t\")," + equalsName + "_(X,Y,\"f\") .\n");
    }

    public static void getNodeConstraintRules(String shapeName, Collection<ConstraintComponent> nodeConstraints, boolean universal) {

        // value node shape
        if (nodeConstraints.size() == 0) {
            RepairData.get().getProgramConstraints().add(":-" + shapeName + "_(X,\"f\") .\n");
        } else if (nodeConstraints.size() == 1) {
            dispatch(shapeName, nodeConstraints.stream().findFirst().get(), universal);
        } else {
            processConjunction(shapeName, nodeConstraints, universal);
        }
    }

    public static void dispatch(String shapeName, ConstraintComponent constraintComponent, boolean universal) {

        if (constraintComponent instanceof NodeShape) {

            getNodeConstraintRules(shapeName, ((NodeShape) constraintComponent).getConstraintComponents(), universal);

        } else if (constraintComponent instanceof PropertyShape) {

            RepairData.get().getRepairRules().add(
                            ns(nss, ((PropertyShape) constraintComponent).getId()) + "_(X,\"t*\"):-" +
                                    shapeName + "_(X,\"t*\") .\n");

            RepairData.get().getRepairRules().add(
                    ns(nss, ((PropertyShape) constraintComponent).getId()) + "_(X,\"f\"):-" +
                            shapeName + "_(X,\"f\") .\n");

            processPropertyShape(
                    ns(nss, ((PropertyShape) constraintComponent).getId()),
                    Collections.singletonList((PropertyShape) constraintComponent));

        } else if (constraintComponent instanceof ClassConstraintComponent) {

            String className = ns(nss, ((ClassConstraintComponent) constraintComponent).getConstraintClass());

            RepairData.get().getAnnotationRules().add(className + "_(X,\"t*\"):-" + className + "(X) .\n");
            RepairData.get().getAnnotationRules().add(className + "_(X,\"t*\"):-" + className + "_(X,\"t\") .\n");

            RepairData.get().getRepairRules().add(className + "_(X,\"t\"):-" + shapeName + "_(X,\"t*\") .\n");
            RepairData.get().getRepairRules().add(className + "_(X,\"f\"):-" + shapeName + "_(X,\"f\") .\n");

            RepairData.get().getInterpretationRules().add(
                    className + "_(X,\"t**\"):-" + className + "_(X,\"t*\"),not " + className + "_(X,\"f\") .\n");

            RepairData.get().getProgramConstraints().add(":-" + className + "_(X,\"t\")," + className + "_(X,\"f\") .\n");

            RepairData.get().getChangeSetRules().add("add(" + className + "(X)):-" + className + "_(X,\"t**\"),not " + className + "(X) .\n");
            RepairData.get().getChangeSetRules().add("del(" + className + "(X)):-" + className + "_(X,\"f\")," + className + "(X) .\n");

        } else if (constraintComponent instanceof AndConstraintComponent) {

            AndConstraintComponent and = (AndConstraintComponent) constraintComponent;
            processConjunction(shapeName, and.getAnd(), universal);

        } else if (constraintComponent instanceof OrConstraintComponent) {

            OrConstraintComponent and = (OrConstraintComponent) constraintComponent;
            processDisjunction(shapeName, and.getOr(), universal);

        } else if (constraintComponent instanceof NotConstraintComponent) {

            NotConstraintComponent not = (NotConstraintComponent) constraintComponent;

            String notName = ns(nss, not.getId());

            RepairData.get().getRepairRules().add(notName + "_(X,\"f\"):-" + shapeName + "_(X,\"t*\") .\n");
            RepairData.get().getRepairRules().add(notName + "_(X,\"t*\"):-" + shapeName + "_(X,\"f\") .\n");

            dispatch(notName, not.getNot(), universal);

        } else if (constraintComponent instanceof HasValueConstraintComponent) {

            Value value = ((HasValueConstraintComponent) constraintComponent).getHasValue();
            String valueName = (value.isLiteral() ?
                    value.toString() : "\"" + ns(nss, value) + "\"");

                RepairData.get().getProgramConstraints().add(":-" + shapeName + "_(X,\"t*\"),X!="
                        + valueName
                        + " .\n");

                RepairData.get().getProgramConstraints().add(":-" +
                        shapeName + "_(X,\"f\"),X="
                        + valueName
                        + " .\n");

        } else if (constraintComponent instanceof EqualsConstraintComponent) {

            throw new RuntimeException("sh:equals is only supported on property shapes");

        } else if (constraintComponent instanceof DatatypeConstraintComponent) {

            String datatype = ns(nss, ((DatatypeConstraintComponent) constraintComponent).getDatatype());

            RepairData.get().getAnnotationRules().add(datatype + "_(X,\"t*\"):-" + datatype + "(X) .\n");
            RepairData.get().getAnnotationRules().add(datatype + "_(X,\"t*\"):-" + datatype + "_(X,\"t\") .\n");

            RepairData.get().getRepairRules().add(datatype + "_(X,\"t\"):-" + shapeName + "_(X,\"t*\") .\n");
            RepairData.get().getRepairRules().add(datatype + "_(X,\"f\"):-" + shapeName + "_(X,\"f\") .\n");

            RepairData.get().getInterpretationRules().add(
                    datatype + "_(X,\"t**\"):-" + datatype + "_(X,\"t*\"),not " + datatype + "_(X,\"f\") .\n");

            RepairData.get().getProgramConstraints().add(":-" + datatype + "_(X,\"t\")," + datatype + "_(X,\"f\") .\n");

            RepairData.get().getChangeSetRules().add("add(" + datatype + "(X)):-" + datatype + "_(X,\"t**\"),not " + datatype + "(X) .\n");
            RepairData.get().getChangeSetRules().add("del(" + datatype + "(X)):-" + datatype + "_(X,\"f\")," + datatype + "(X) .\n");
        }
    }
}
