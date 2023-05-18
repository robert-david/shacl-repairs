package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.*;
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
import org.eclipse.rdf4j.sail.shacl.ast.paths.*;
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
                            addShapeAssignment(shape, statement.getSubject());
                        }
                    }
                }

                // sh:targetNode
                if (target instanceof TargetNode) {
                    for (Value targetNode : ((TargetNode) target).getTargetNodes()) {
                        addShapeAssignment(shape, targetNode);
                    }
                }

                // sh:targetSubjectsOf
                if (target instanceof TargetSubjectsOf) {
                    for (IRI iri : ((TargetSubjectsOf) target).getTargetSubjectsOf()) {
                        for (Statement statement : dataModel.getStatements(null, iri, null)) {
                            addShapeAssignment(shape, statement.getSubject());
                        }
                    }
                }

                // sh:targetObjectsOf
                if (target instanceof TargetObjectsOf) {
                    for (IRI iri : ((TargetObjectsOf) target).getTargetObjectsOf()) {
                        for (Statement statement : dataModel.getStatements(null, iri, null)) {
                            addShapeAssignment(shape, statement.getObject());
                        }
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
                    addShapeAssignment(shape, statement.getSubject());
                }
            }
        }
    }

    private static void addShapeAssignment(Shape shape, Value target) {

        if (!SHACLData.get().getTargetNodes().containsKey(target)) {
            HashSet<Resource> shapeAssignments = new HashSet<>();
            SHACLData.get().getTargetNodes().put(target, shapeAssignments);
        }
        SHACLData.get().getTargetNodes().get(target).add(shape.getId());
    }

    private static void processShapes(List<Shape> shapes) {

        Map<Resource, HashSet<ConstraintComponent>> shapeMap = new HashMap<>();

        for (Shape shape : shapes) {

            if (!shapeMap.containsKey(shape.getId())) {
                shapeMap.put(shape.getId(), new HashSet<>());
            }

            if (shape.getConstraintComponents().size() == 1) {
                shapeMap.get(shape.getId()).addAll(Collections.singletonList(shape));
            } else {
                shapeMap.get(shape.getId()).addAll(shape.getConstraintComponents());
            }
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

    public static void createPropertyRules(String path) {

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
    }

    public static String processPathExpression(String shapeName, Path path) {

        if (path instanceof SimplePath) {

            String pathName = getPathName(path);
            createPropertyRules(pathName);

            String rule = shapeName + "_st_(X,Y,\"t*\"):-" + shapeName + "_(X,_)" + "," + pathName + "_(X,Y,\"t*\") .\n";

            RepairData.get().getAnnotationRules().add(rule);

            rule = shapeName + "_st_(X,Y,\"t**\"):-" + pathName + "_(X,Y,\"t**\")," + shapeName + "_st_(X,Y,\"t*\"),not " + shapeName + "_st_(X,Y,\"f\") .\n";
            RepairData.get().getInterpretationRules().add(rule);

        } else if (path instanceof InversePath) {

            String pathName = getPathName(path);
            createPropertyRules(pathName);

            String rule = shapeName + "_st_(X,Y,\"t*\"):-" + shapeName + "_(X,_)" + "," + pathName + "_(Y,X,\"t*\") .\n";
            RepairData.get().getAnnotationRules().add(rule);

            rule = shapeName + "_st_(X,Y,\"t**\"):-" + pathName + "_(Y,X,\"t**\")," + shapeName + "_st_(X,Y,\"t*\"),not " + shapeName + "_st_(X,Y,\"f\") .\n";
            RepairData.get().getInterpretationRules().add(rule);

        } else if (path instanceof SequencePath) {

            SequencePath seq = (SequencePath) path;
            for (Path pathEl : seq.getSequence()) {
                if (pathEl instanceof SimplePath || pathEl instanceof InversePath) {

                    createPropertyRules(getPathName(pathEl));
                } else {
                    throw new RuntimeException("sequence path contains not supported element " + pathEl.getClass().getSimpleName());
                }
            }

            int count = -1;
            String rule = shapeName + "_(X,_)";
            for (Path pathEl : seq.getSequence()) {
                if (pathEl instanceof SimplePath) {
                    rule += "," + getPathName(pathEl) +
                            "_(X" + (count >= 0 ? count : "") + ",X" + (count + 1) + ",\"t*\")";
                } else if (pathEl instanceof InversePath) {
                    rule += "," + getPathName(pathEl) +
                            "_(X" + (count + 1) + ",X" + (count >= 0 ? count : "") + ",\"t*\")";
                } else {
                    throw new RuntimeException("sequence path contains not supported element " + pathEl.getClass().getSimpleName());
                }
                count++;
            }
            rule = shapeName + "_st_(X,X" + count + ",\"t*\"):-" + rule;
            rule += " .\n";

            RepairData.get().getAnnotationRules().add(rule);

            count = -1;
            rule = shapeName + "_st_(X,Y,\"t*\"),not " + shapeName + "_st_(X,Y,\"f\")";
            for (Path pathEl : seq.getSequence()) {
                if (pathEl instanceof SimplePath) {
                    rule += "," + getPathName(pathEl) +
                            "_(X" + (count >= 0 ? count : "") + ",X" + (count + 1) + ",\"t**\")";
                } else if (pathEl instanceof InversePath) {
                    rule += "," + getPathName(pathEl) +
                            "_(X" + (count + 1) + ",X" + (count >= 0 ? count : "") + ",\"t**\")";
                } else {
                    throw new RuntimeException("sequence path contains not supported element " + pathEl.getClass().getSimpleName());
                }
                count++;
            }

            rule = shapeName + "_st_(X,Y,\"t**\"):-" + rule  +" .\n";
            RepairData.get().getInterpretationRules().add(rule);

        } else {
            throw new RuntimeException("path expression " + path.getClass().getSimpleName() + " not supported");
        }

        return shapeName + "_st";
    }

    public static void processPropertyShape(String shapeName, Collection<PropertyShape> propertyShapes) {

        String notRepair = "";

        Set<ConstraintComponent> propertyConstraints = new HashSet<>();
        Set<ConstraintComponent> qualifiedPropertyConstraints = new HashSet<>();
        Set<ConstraintComponent> valueNodeConstraints = new HashSet<>();
        Set<ConstraintComponent> constantConstraints = new HashSet<>();

        Path path = null;
        String pathNode = null;
        String st = null;

        boolean hasMinCount = false;

        for (PropertyShape propertyShape : propertyShapes) {

            path = propertyShape.getPath();
            if (st == null) {
                st = processPathExpression(shapeName, propertyShape.getPath());
                pathNode = ns(nss, propertyShape.getPath().getId());

            } else {
                if (!pathNode.equals(ns(nss, propertyShape.getPath().getId()))) {
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
                        || constraintComponent instanceof DatatypeConstraintComponent
                        || constraintComponent instanceof InConstraintComponent) {
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

            getCardinalityRules(s, path, st, 1, Collections.singletonList(constantConstraint));
        }

        // if no sh:minCount was given, then add sh:minCount 0 as a default
        if (!hasMinCount) {
            propertyConstraints.add(new MinCountConstraintComponent(0));
        }

        for (ConstraintComponent constraintComponent : qualifiedPropertyConstraints) {

            if (constraintComponent instanceof QualifiedMinCountConstraintComponent) {

                long qualifiedMinCount =
                        ((QualifiedMinCountConstraintComponent) constraintComponent).getQualifiedMinCount();
                RepairData.get().getRepairRules().add("% sh:qualifiedMinCount " + qualifiedMinCount + " for " + shapeName + "\n");

                String s = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
                notRepair += s + "_(X,\"f\");";

                getCardinalityRules(s, path, st, qualifiedMinCount,
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

                getCardinalityRules(s, path, st, qualifiedMaxCount+1,
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

                getCardinalityRules(s, path, st, minCount, valueNodeConstraints);

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

                getCardinalityRules(s, path, st, maxCount+1, valueNodeConstraints);

            } else if (constraintComponent instanceof EqualsConstraintComponent) {

                String equalsName = ns(nss, ((EqualsConstraintComponent) constraintComponent).getPredicate());
                getEqualsRules(shapeName, st, equalsName);
            }
        }

        RepairData.get().getRepairRules().add("% universal for " + shapeName + "\n");
        if ((propertyConstraints.size() + qualifiedPropertyConstraints.size()) > 0) {

            String s = "s" + shapeCount++;

            RepairData.get().getRepairRules().add(s + "_(X,\"t*\"):-" + shapeName + "_(X,\"t*\") .\n");
            notRepair += s + "_(X,\"f\");";

            getUniversalRules(s, path, st, valueNodeConstraints);

        } else {

            getUniversalRules(shapeName, path, st, valueNodeConstraints);
        }

        if (!"".equals(notRepair)) {
            notRepair = notRepair.substring(0, notRepair.length() - 1);
            notRepair += ":-" + shapeName + "_(X,\"f\") .\n";

            RepairData.get().getRepairRules().add(notRepair);
        }
    }

    private static void getPropertyPathCutRule(String shapeName, Path path, String sink) {

        if (path instanceof SimplePath) {

            RepairData.get().getRepairRules().add(
                    ns(nss, path.getId()) + "_(X,Y,\"f\"):-" + shapeName + "_(X,\"f\")," + ns(nss, path.getId()) + "_(X,Y,\"t*\")," + sink + "_(X,Y,\"f\") .\n");

        } else if (path instanceof InversePath) {

            InversePath inv = (InversePath) path;
            String pathName = ns(nss, inv.getInversePath().getId());

            RepairData.get().getRepairRules().add(
                    pathName + "_(Y,X,\"f\"):-" + shapeName + "_(X,\"f\")," + pathName + "_(Y,X,\"t*\")," + sink + "_(X,Y,\"f\") .\n");

        } else if (path instanceof SequencePath) {

            String head = "";

            int count = -1;
            String body = shapeName + "_(X,\"f\")";
            for (Path pathEl : ((SequencePath) path).getSequence()) {
                if (pathEl instanceof SimplePath) {
                    body += "," + getPathName(pathEl) +
                            "_(X" + (count >= 0 ? count : "") + ",X" + (count + 1) + ",\"t*\")";
                    head += getPathName(pathEl) +
                            "_(X" + (count >= 0 ? count : "") + ",X" + (count + 1) + ",\"f\");";
                } else if (pathEl instanceof InversePath) {
                    body += "," + getPathName(pathEl) +
                            "_(X" + (count + 1) + ",X" + (count >= 0 ? count : "") + ",\"t*\")";
                    head += getPathName(pathEl) +
                            "_(X" + (count + 1) + ",X" + (count >= 0 ? count : "") + ",\"f\");";
                } else {
                    throw new RuntimeException("sequence path contains not supported element " + pathEl.getClass().getSimpleName());
                }
                count++;
            }
            body = body + "," + sink + "_(X,X" + count + ",\"f\") .\n";

            head = head.substring(0,head.length()-1);

            RepairData.get().getRepairRules().add(head + ":-" + body);

        } else {
            throw new RuntimeException("path expression " + path.getClass().getSimpleName() + " not supported");
        }
    }

    private static String getPathName(Path path) {
        if (path instanceof SimplePath) {
            return ns(nss, path.getId());
        } else if (path instanceof InversePath) {
            return ns(nss, ((InversePath) path).getInversePath().getId());
        } else {
            throw new RuntimeException("path represents not supported element " + path.getClass().getSimpleName());
        }
    }

    private static void getCardinalityRules(String shapeName, Path path, String st, long minCount, Collection<ConstraintComponent> valueNodeConstraints) {

        String firstPath;
        if (path instanceof SimplePath) {

            firstPath = ns(nss, path.getId());

            String repairChoices = ";choose(" + shapeName + ",X," + firstPath + ",0):-" + shapeName + "_(X,\"t*\") .\n";

            for (int i = 1; i <= minCount; i++) {

                repairChoices = ";choose(" + shapeName + ",X," + firstPath + "," + i + ")" + repairChoices;

                RepairData.get().getRepairRules().add(
                        firstPath + "_(X,@new(" + shapeName + ",X," + firstPath + ",1.." + i + "),\"t\")" +
                                ":-choose(" + shapeName + ",X," + firstPath + "," + i + ") .\n");
            }

            if (!repairChoices.startsWith(";")) {
                throw new RuntimeException("Error processing choose options for " + shapeName);
            }
            repairChoices = repairChoices.substring(1);

            RepairData.get().getRepairRules().add(repairChoices);

            if (SHACLData.get().getConstantsFacts().size() > 0) {
                RepairData.get().getRepairRules().add(
                        "0 {" + firstPath + "_(X,Y,\"t\"):const(Y)} " +
                                SHACLData.get().getConstantsFacts().size() +
                                ":-" + shapeName + "_(X,\"t*\") .\n"
                );
                RepairData.get().getChangeSetRules().add("#minimize { 1@1,X,Y: " + firstPath + "_(X,Y,\"t\"), const(Y) } .\n");
            }

        } else if (path instanceof InversePath) {

            firstPath = getPathName(path);

            String repairChoices = ";choose(" + shapeName + ",X," + firstPath + ",0):-" + shapeName + "_(X,\"t*\") .\n";

            for (int i = 1; i <= minCount; i++) {

                repairChoices = ";choose(" + shapeName + ",X," + firstPath + "," + i + ")" + repairChoices;

                RepairData.get().getRepairRules().add(
                        firstPath + "_(@new(" + shapeName + ",X," + firstPath + ",1.." + i + "),X,\"t\")" +
                                ":-choose(" + shapeName + ",X," + firstPath + "," + i + ") .\n");
            }

            if (!repairChoices.startsWith(";")) {
                throw new RuntimeException("Error processing choose options for " + shapeName);
            }
            repairChoices = repairChoices.substring(1);

            RepairData.get().getRepairRules().add(repairChoices);

            if (SHACLData.get().getConstantsFacts().size() > 0) {
                RepairData.get().getRepairRules().add(
                        "0 {" + firstPath + "_(Y,X,\"t\"):const(Y)} " +
                                SHACLData.get().getConstantsFacts().size() +
                                ":-" + shapeName + "_(X,\"t*\") .\n"
                );
                RepairData.get().getChangeSetRules().add("#minimize { 1@1,Y,X: " + firstPath + "_(Y,X,\"t\"), const(Y) } .\n");
            }

        } else if (path instanceof SequencePath) {

            createSequencePathRules((SequencePath) path, shapeName, minCount);

        } else {
            throw new RuntimeException("path expression " + path.getClass().getSimpleName() + " not supported");
        }

        String s = "s" + shapeCount++;

        long allowed = minCount > 0 ? (minCount - 1) : 0;
        RepairData.get().getRepairRules().add(
                "(C-" + allowed + ") {" +
                        st + "_(X,Y,\"f\"):" + st + "_(X,Y,\"t*\")" +//,not " + s + "_(Y,\"f\")" +
                        ";" +
                        s + "_(Y,\"f\"):" + st + "_(X,Y,\"t*\"),not " + st + "_(X,Y,\"f\")" +
                        "} (C-" + allowed + "):-"
                        + shapeName + "_(X,\"f\")," +
                        "#count {Y:" + st + "_(X,Y,\"t*\")}=C," +
                        "C>" + allowed +
                        " .\n");

        getPropertyPathCutRule(shapeName, path, st);

        RepairData.get().getRepairRules().add(
                minCount + " {" +
                        s + "_(Y,\"t*\"):" + st + "_(X,Y,\"t**\")" +
                        "} " + (
                        Math.max(minCount,SHACLData.get().getConstantsFacts().size())
                ) +
                        ":-"
                        + shapeName + "_(X,\"t*\") .\n");

        RepairData.get().getRepairRules().add("\n");

        getNodeConstraintRules(s, valueNodeConstraints, false);

        RepairData.get().getRepairRules().add("\n");
    }

    private static void getUniversalRules(String shapeName, Path path, String st, Set<ConstraintComponent> valueNodeConstraints) {

        String notName = "s" + shapeCount++;

        RepairData.get().getRepairRules().add(notName + "_(X,\"f\"):-" + shapeName + "_(X,\"t*\") .\n");
        RepairData.get().getRepairRules().add(notName + "_(X,\"t*\"):-" + shapeName + "_(X,\"f\") .\n");

        shapeName = notName;

        String firstPath;

        if (path instanceof SimplePath) {

            firstPath = getPathName(path);

            String repairChoices = ";choose(" + shapeName + ",X," + firstPath + ",0):-" + shapeName + "_(X,\"t*\") .\n";
            repairChoices = ";choose(" + shapeName + ",X," + firstPath + "," + 1 + ")" + repairChoices;

            RepairData.get().getRepairRules().add(
                    firstPath + "_(X,@new(" + shapeName + ",X," + firstPath + ",1.." + 1 + "),\"t\")" +
                            ":-choose(" + shapeName + ",X," + firstPath + "," + 1 + ") .\n");

            if (!repairChoices.startsWith(";")) {
                throw new RuntimeException("Error processing choose options for " + shapeName);
            }
            repairChoices = repairChoices.substring(1);
            RepairData.get().getRepairRules().add(repairChoices);

            if (SHACLData.get().getConstantsFacts().size() > 0) {
                RepairData.get().getRepairRules().add(
                        "0 {" + firstPath + "_(X,Y,\"t\"):const(Y)} " +
                                SHACLData.get().getConstantsFacts().size() +
                                ":-" + shapeName + "_(X,\"t*\") .\n"
                );
                RepairData.get().getChangeSetRules().add("#minimize { 1@1,X,Y: " + firstPath + "_(X,Y,\"t\"), const(Y) } .\n");
            }

        } else if (path instanceof InversePath) {

            firstPath = getPathName(path);

            String repairChoices = ";choose(" + shapeName + ",X," + firstPath + ",0):-" + shapeName + "_(X,\"t*\") .\n";
            repairChoices = ";choose(" + shapeName + ",X," + firstPath + "," + 1 + ")" + repairChoices;

            RepairData.get().getRepairRules().add(
                    firstPath + "_(@new(" + shapeName + ",X," + firstPath + ",1.." + 1 + "),X,\"t\")" +
                            ":-choose(" + shapeName + ",X," + firstPath + "," + 1 + ") .\n");

            if (!repairChoices.startsWith(";")) {
                throw new RuntimeException("Error processing choose options for " + shapeName);
            }
            repairChoices = repairChoices.substring(1);
            RepairData.get().getRepairRules().add(repairChoices);

            if (SHACLData.get().getConstantsFacts().size() > 0) {
                RepairData.get().getRepairRules().add(
                        "0 {" + firstPath + "_(Y,X,\"t\"):const(Y)} " +
                                SHACLData.get().getConstantsFacts().size() +
                                ":-" + shapeName + "_(X,\"t*\") .\n"
                );
                RepairData.get().getChangeSetRules().add("#minimize { 1@1,Y,X: " + firstPath + "_(Y,X,\"t\"), const(Y) } .\n");
            }

        } else if (path instanceof SequencePath) {

            createSequencePathRules((SequencePath) path, shapeName, 1);

        } else {
            throw new RuntimeException("path expression " + path.getClass().getSimpleName() + " not supported");
        }

        String s = "s" + shapeCount++;

        long allowed = 0;
        RepairData.get().getRepairRules().add(
                "(C-" + allowed + ") {" +
                        st + "_(X,Y,\"f\"):" + st + "_(X,Y,\"t*\")" +//,not " + s + "_(Y,\"f\")" +
                        ";" +
                        s + "_(Y,\"f\"):" + st + "_(X,Y,\"t*\"),not " + st + "_(X,Y,\"f\")" +
                        "} (C-" + allowed + "):-"
                        + shapeName + "_(X,\"f\")," +
                        "#count {Y:" + st + "_(X,Y,\"t*\")}=C," +
                        "C>" + allowed +
                        " .\n");

        getPropertyPathCutRule(shapeName, path, st);

        RepairData.get().getRepairRules().add(
                1 + " {" +
                        s + "_(Y,\"t*\"):" + st + "_(X,Y,\"t**\")" +
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

    private static String createSubPathRuleBody(String shapeName, SequencePath seq, int pI) {

        String ruleBody = "";

        for (int spI = 0; spI < pI; spI++) {
            String currentPathName = getPathName(seq.getSequence().get(spI));

            if (seq.getSequence().get(spI) instanceof SimplePath) {

                ruleBody +=
                        currentPathName + "_(X" +
                                ((spI-1) >= 0 ? (spI-1) : "") +
                                ",X" + spI + ",\"t**\"),";
            } else if (seq.getSequence().get(spI) instanceof InversePath) {
                ruleBody +=
                        currentPathName + "_(X" + spI + ",X" +
                                ((spI-1) >= 0 ? (spI-1) : "") +
                                ",\"t**\"),";
            } else {
                throw new RuntimeException("path represents not supported element " + seq.getSequence().get(pI).getClass().getSimpleName());
            }
        }
        ruleBody += shapeName + "_(X,\"t*\") .\n";

        return ruleBody;
    }

    public static void createSequencePathRules(SequencePath seq, String shapeName, long minCount) {

        for (int pI = 0; pI < seq.getSequence().size(); pI++) {

            String nextPath = getPathName(seq.getSequence().get(pI));
            String nextObject;

            String repairChoices;
            String ruleBody = createSubPathRuleBody(shapeName, seq, pI);

            if (pI < (seq.getSequence().size() - 1)) {

                String currentPathIndex = ((pI-1) >= 0 ? (pI-1) + "" : "");

                nextObject = "@new(" + shapeName + ",X" + currentPathIndex +"," + nextPath + "," + 1 + ")";

                if (seq.getSequence().get(pI) instanceof SimplePath) {

                    repairChoices = "choose(" + shapeName + ",X" + currentPathIndex + "," + nextPath + "," + 1 + ");" +
                            "choose(" + shapeName + ",X" + currentPathIndex + "," + nextPath + ",0):-" + ruleBody;
                    RepairData.get().getRepairRules().add(repairChoices);

                    String repairChoice = nextPath + "_(X" + currentPathIndex + "," + nextObject + ",\"t\"):-"
                            + "choose(" + shapeName + ",X" + currentPathIndex + "," + nextPath + "," + 1 + "),"
                            + ruleBody;
                    RepairData.get().getRepairRules().add(repairChoice);

                } else if (seq.getSequence().get(pI) instanceof InversePath) {

                    repairChoices = "choose(" + shapeName + "," + nextObject + "," + nextPath + "," + 1 + ");" +
                            "choose(" + shapeName + "," + nextObject + "," + nextPath + ",0):-" + ruleBody;
                    RepairData.get().getRepairRules().add(repairChoices);

                    String repairChoice = nextPath + "_(" + nextObject + ",X" + currentPathIndex + ",\"t\"):-"
                            + "choose(" + shapeName + "," + nextObject + "," + nextPath + "," + 1 + "),"
                            + ruleBody;
                    RepairData.get().getRepairRules().add(repairChoice);

                } else {
                    throw new RuntimeException("path represents not supported element " + seq.getSequence().get(pI).getClass().getSimpleName());
                }

            } else if (pI == (seq.getSequence().size() - 1)) {

                repairChoices = ":-" + ruleBody;

                for (int i = 0; i <= minCount; i++) {

                    if (seq.getSequence().get(pI) instanceof SimplePath) {

                        nextObject = "@new(" + shapeName + ",X" + (seq.getSequence().size() - 2) +"," + nextPath + ",1.." + i + ")";

                        repairChoices = ";choose(" + shapeName + ",X" + (seq.getSequence().size() - 2) + "," + nextPath + "," + i + ")" + repairChoices;

                        if (i > 0) {
                            String repairChoice =
                                    nextPath + "_(X" + (seq.getSequence().size() - 2) + "," + nextObject + ",\"t\")" +
                                            ":-choose(" + shapeName + ",X" + (seq.getSequence().size() - 2) + "," + nextPath + "," + i + "),"
                                            + ruleBody;
                            RepairData.get().getRepairRules().add(repairChoice);

                            if (SHACLData.get().getConstantsFacts().size() > 0) {
                                repairChoice =
                                        "0 {" + nextPath + "_(X" + (seq.getSequence().size() - 2) + ",Y,\"t\"):const(Y)} " +
                                                SHACLData.get().getConstantsFacts().size() +
                                                ":-"
                                                //"choose(" + shapeName + ",X" + (seq.getSequence().size() - 2) + "," + nextPath + "," + i + "),"
                                                + ruleBody;
                                RepairData.get().getRepairRules().add(repairChoice);
                                RepairData.get().getChangeSetRules().add("#minimize { 1@1,X,Y: " + nextPath + "_(X,Y,\"t\"), const(Y) } .\n");
                            }
                        }

                    } else if (seq.getSequence().get(pI) instanceof InversePath) {

                        nextObject = "@new(" + shapeName + ",X" + (seq.getSequence().size() - 2) + "," + nextPath + ",1.." + i + ")";

                        repairChoices = ";choose(" + shapeName + ",X" + (seq.getSequence().size() - 2) + "," + nextPath + "," + i + ")" + repairChoices;

                        if (i > 0) {
                            String repairChoice =
                                    nextPath + "_(" + nextObject + ",X" + (seq.getSequence().size() - 2) + ",\"t\")" +
                                            ":-choose(" + shapeName + ",X" + (seq.getSequence().size() - 2) + "," + nextPath + "," + i + "),"
                                            + ruleBody;
                            RepairData.get().getRepairRules().add(repairChoice);

                            if (SHACLData.get().getConstantsFacts().size() > 0) {
                                repairChoice =
                                        "0 {" + nextPath + "_(Y,X" + (seq.getSequence().size() - 2) + ",\"t\"):const(Y)} " +
                                                SHACLData.get().getConstantsFacts().size() +
                                                ":-"
                                                //"choose(" + shapeName + ",X" + (seq.getSequence().size() - 2) + "," + nextPath + "," + i + "),"
                                                + ruleBody;
                                RepairData.get().getRepairRules().add(repairChoice);
                                RepairData.get().getChangeSetRules().add("#minimize { 1@1,Y,X: " + nextPath + "_(Y,X,\"t\"), const(Y) } .\n");
                            }
                        }

                    } else {
                        throw new RuntimeException("path represents not supported element " + seq.getSequence().get(pI).getClass().getSimpleName());
                    }
                }

                if (!repairChoices.startsWith(";")) {
                    throw new RuntimeException("No constraints for sh:or " + shapeName);
                }
                repairChoices = repairChoices.substring(1);

                RepairData.get().getRepairRules().add(repairChoices);

            } else {
                throw new RuntimeException("Error processing choose options for " + shapeName);
            }
        }
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

        } else if (constraintComponent instanceof InConstraintComponent) {

            String notName = "s" + shapeCount++;

            RepairData.get().getRepairRules().add(notName + "_(X,\"f\"):-" + shapeName + "_(X,\"t*\") .\n");
            RepairData.get().getRepairRules().add(notName + "_(X,\"t*\"):-" + shapeName + "_(X,\"f\") .\n");

            String notRepair = "";

            for (Value value : ((InConstraintComponent) constraintComponent).getIn()) {

                String nodeName = "s" + shapeCount++;

                RepairData.get().getRepairRules().add(nodeName + "_(X,\"t*\"):-" + notName + "_(X,\"t*\") .\n");
                notRepair += nodeName + "_(X,\"f\");";

                String constName = "s" + shapeCount++;
                RepairData.get().getRepairRules().add(constName + "_(X,\"f\"):-" + nodeName + "_(X,\"t*\") .\n");
                RepairData.get().getRepairRules().add(constName + "_(X,\"t*\"):-" + nodeName + "_(X,\"f\") .\n");

                String valueName = (value.isLiteral() ?
                        value.toString() : "\"" + ns(nss, value) + "\"");
                RepairData.get().getProgramConstraints().add(":-" + constName + "_(X,\"t*\"),X!="
                        + valueName
                        + " .\n");

                RepairData.get().getProgramConstraints().add(":-" +
                        constName + "_(X,\"f\"),X="
                        + valueName
                        + " .\n");
            }

            if (!"".equals(notRepair)) {
                if (!notRepair.endsWith(";")) throw new RuntimeException("no constraints for shape " + notName);
                notRepair = notRepair.substring(0, notRepair.length() - 1);
                notRepair += ":-" + notName + "_(X,\"f\") .\n";

                RepairData.get().getRepairRules().add(notRepair);
            }

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
