package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.*;
import org.eclipse.rdf4j.model.vocabulary.RDF;
import org.eclipse.rdf4j.model.vocabulary.SHACL;
import org.eclipse.rdf4j.model.vocabulary.XSD;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.BasicParserSettings;
import org.shacl.repairs.data.RepairData;

import java.util.*;

import static org.shacl.repairs.processor.Utils.ns;

public class RepairStrategyParser {

    public static void createRepairStrategyRules(
            Model repairStrategiesModel,
            Model dataModel,
            RepairData repairData) {

        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Set<Namespace> rss_nss = repairStrategiesModel.getNamespaces();

        Map<Value, RepairStrategy> repairStrategies = new HashMap();

        for (Statement statement : repairStrategiesModel) {

            if (statement.getPredicate().equals(RDF.TYPE) &&
                    statement.getObject().toString().equals("http://www.w3.org/ns/shacl/repairs#RepairStrategy")) {

                repairStrategies.put(statement.getSubject(), new RepairStrategy(statement.getSubject()));
            }
        }

        for (Value iri : repairStrategies.keySet()) {

            for (Statement statement : repairStrategiesModel.getStatements(repairStrategies.get(iri).iri, null, null)) {

                if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#hasConstraint")) {

                    repairStrategies.get(iri).constraint.add(new Repair((Resource) statement.getObject()));

                } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#hasPreference")) {

                    repairStrategies.get(iri).preference.add(new Repair((Resource) statement.getObject()));

                } else if (statement.getPredicate().equals(RDF.TYPE)) {
                    // do nothing
                } else {
                    throw new RuntimeException("Unknown repair strategy predicate " + statement.getPredicate());
                }
            }

            for (Repair repair : repairStrategies.get(iri).constraint) {

                for (Statement statement : repairStrategiesModel.getStatements(repair.iri, null, null)) {

                    if (statement.getPredicate().equals(SHACL.PATH)) {

                        if (repair.path != null) {
                            throw new RuntimeException("sh:path " + repair.path + " for shr:hasConstraint already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.path = (Resource) statement.getObject();

                    } else if (statement.getPredicate().equals(SHACL.CLASS)) {

                        if (repair.clazz != null) {
                            throw new RuntimeException("sh:class " + repair.clazz + " for shr:hasConstraint already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.clazz = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#condition")) {

                        if (repair.condition != null) {
                            throw new RuntimeException("shr:condition " + repair.condition + " for shr:hasConstraint already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.condition = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#action")) {

                        if (repair.action != null) {
                            throw new RuntimeException("shr:action " + repair.action + " for shr:hasConstraint already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.action = (Resource) statement.getObject();

                    } else if (statement.getPredicate().stringValue().equals("http://www.w3.org/ns/shacl/repairs#values")) {

                        repair.values = new ArrayList();

                        Value rest = statement.getObject();

                        if (rest.isBNode()) {
                            while (rest.isBNode()) {

                                if (!RDF.NIL.equals(rest)) {
                                    Statement first = repairStrategiesModel.getStatements((Resource) rest, RDF.FIRST, null).iterator().next();
                                    repair.values.add(first.getObject());
                                }
                                rest = repairStrategiesModel.getStatements((Resource) rest, RDF.REST, null).iterator().next().getObject();
                            }
                        } else {
                            repair.values.add(rest);
                        }
                    } else {
                        throw new RuntimeException("Unknown repair strategy predicate " + statement.getPredicate());
                    }
                }

                if (repair.path == null && repair.clazz == null) {
                    throw new RuntimeException("Missing sh:class or sh:path for shr:hasConstraint");
                }
                if (repair.action == null) {
                    throw new RuntimeException("Missing shr:action for shr:hasConstraint");
                }
            }

            for (Repair repair : repairStrategies.get(iri).preference) {

                for (Statement statement : repairStrategiesModel.getStatements(repair.iri, null, null)) {

                    if (statement.getPredicate().equals(SHACL.PATH)) {

                        if (repair.path != null) {
                            throw new RuntimeException("sh:path " + repair.path + " for shr:hasPreference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.path = (Resource) statement.getObject();

                    } else if (statement.getPredicate().equals(SHACL.CLASS)) {

                        if (repair.clazz != null) {
                            throw new RuntimeException("sh:class " + repair.clazz + " for shr:hasPreference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.clazz = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#condition")) {

                        if (repair.condition != null) {
                            throw new RuntimeException("sh:condition " + repair.condition + " for shr:hasPreference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.condition = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#weight")) {

                        if (repair.weight != null) {
                            throw new RuntimeException("shr:weight " + repair.weight + " for shr:hasPreference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        if (!statement.getObject().isLiteral() ||
                                !XSD.INT.equals(((Literal) statement.getObject()).getDatatype())){
                            throw new RuntimeException("shr:weight for shr:hasPreference must be specified as xsd:int. Cannot use  " + statement.getObject().toString());
                        }
                        repair.weight = ((Literal) statement.getObject()).intValue();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#action")) {

                        if (repair.action != null) {
                            throw new RuntimeException("shr:action " + repair.action + " for shr:hasPreference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.action = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#preferenceType")) {

                        if (repair.type != null) {
                            throw new RuntimeException("shr:preferenceType " + repair.type + " for shr:hasPreference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.type = (Resource) statement.getObject();

                    } else if (statement.getPredicate().stringValue().equals("http://www.w3.org/ns/shacl/repairs#values")) {

                        repair.values = new ArrayList();

                        Value rest = statement.getObject();

                        if (rest.isBNode()) {
                            while (rest.isBNode()) {

                                if (!RDF.NIL.equals(rest)) {
                                    Statement first = repairStrategiesModel.getStatements((Resource) rest, RDF.FIRST, null).iterator().next();
                                    repair.values.add(first.getObject());
                                }
                                rest = repairStrategiesModel.getStatements((Resource) rest, RDF.REST, null).iterator().next().getObject();
                            }
                        } else {
                            repair.values.add(rest);
                        }

                    } else if (statement.getPredicate().stringValue().equals("http://www.w3.org/ns/shacl/repairs#function")) {

                        repair.function = (IRI) statement.getObject();

                    } else {
                        throw new RuntimeException("Unknown repair strategy predicate " + statement.getPredicate());
                    }
                }

                if (repair.path == null && repair.clazz == null) {
                    throw new RuntimeException("Missing sh:class or sh:path for shr:hasConstraint");
                }
                if (repair.action == null) {
                    throw new RuntimeException("Missing shr:action for shr:hasPreference");
                }

                if (repair.values != null && repair.function != null) {
                    throw new RuntimeException("Both values and function defined for shr:hasPreference");
                }
            }
        }

        for (Value iri : repairStrategies.keySet()) {

            RepairStrategy rs = repairStrategies.get(iri);

            for (Repair repair : rs.constraint) {

                String action;
                if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#add")) {
                    action = "add";
                } else if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#delete")) {
                    action = "del";
                } else {
                    throw new RuntimeException("Unknown shr:action " + repair.action + " for shr:hasConstraint");
                }

                String condition = "";
                if (repair.condition != null) {
                    condition = "," + ns(rss_nss, repair.condition) + "(X)";
                }

                if (repair.clazz != null) {

                    repairData.getRepairStrategyRules().add(
                            ":-" + action + "(" + ns(rss_nss, repair.clazz) + "(X))" + condition + " .\n"
                    );

                } else if (repair.path != null) {
                    if (repair.values != null) {
                        for (Value value : repair.values) {
                            repairData.getRepairStrategyRules().add(
                                    ":-" + action + "(" + ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, value) + "\"))" + condition + " .\n"
                            );
                        }
                    } else {
                        repairData.getRepairStrategyRules().add(
                                ":-" + action + "(" + ns(rss_nss, repair.path) + "(X,Y))" + condition + " .\n"
                        );
                    }
                }
            }

            for (Repair repair : rs.preference) {

                String action;
                if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#add")) {
                    action = "add";
                } else if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#delete")) {
                    action = "del";
                } else {
                    throw new RuntimeException("Unknown shr:action " + repair.action + " for shr:hasPreference");
                }

                String condition = "";
                if (repair.condition != null) {
                    condition = "," + ns(rss_nss, repair.condition) + "(X)";
                }

                Integer weight = 1;
                if (repair.weight != null) {
                    weight = repair.weight;
                }

                String preferenceType;
                if (repair.type.toString().equals("http://www.w3.org/ns/shacl/repairs#change")) {
                    preferenceType = "maximize";
                } else if (repair.type.toString().equals("http://www.w3.org/ns/shacl/repairs#read-only")) {
                    preferenceType = "minimize";
                } else {
                    throw new RuntimeException("Unknown shr:preferenceType " + repair.type + " for shr:hasPreference");
                }

                if (repair.clazz != null) {

                    repairData.getRepairStrategyRules().add(
                            "#" + preferenceType + " { " + weight + "@3,X: " + action + "(" +
                                    ns(rss_nss, repair.clazz) + "(X))" + condition + " } .\n"
                    );

                } else if (repair.path != null) {
                    if (repair.values == null && repair.function == null) {
                        repairData.getRepairStrategyRules().add(
                                "#" + preferenceType + " { " + weight + "@3,X,Y: " + action + "(" +
                                        ns(rss_nss, repair.path) + "(X,Y))" + condition + " } .\n"
                        );
                    }

                    if (repair.values != null) {
                        for (int i = 0; i < repair.values.size(); i++) {
                            repairData.getRepairStrategyRules().add(
                                    "#" + preferenceType + " { " + (weight + i) + "@3,X: " + action + "(" +
                                            ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, repair.values.get(i)) + "\"))" + condition + " } .\n"
                            );
                        }
                    }

                    if (repair.function != null) {
                        if (repair.function.toString().equals("http://www.w3.org/ns/shacl/repairs#minValue")) {

                            repairData.getRepairStrategyRules().add(
                                    "#" + preferenceType + " { " + weight + "@3,X,Y: " + action + "(" + ns(rss_nss, repair.path) + "(X,Y))," + ns(rss_nss, repair.path) + "_(X,Z,\"t**\"),Y<=Z" + condition + " } .\n");

                        } else if (repair.function.toString().equals("http://www.w3.org/ns/shacl/repairs#maxValue")) {

                            repairData.getRepairStrategyRules().add(
                                    "#" + preferenceType + " { " + weight + "@3,X,Y: " + action + "(" + ns(rss_nss, repair.path) + "(X,Y))," + ns(rss_nss, repair.path) + "_(X,Z,\"t**\"),Y>=Z" + condition + " } .\n");

                        } else {
                            throw new RuntimeException("Unkown shr:function " + repair.function.toString() + " for shr:hasPreference");
                        }
                    }
                }
            }
        }
    }

    private static class RepairStrategy {

        public RepairStrategy(Resource iri) {
            this.iri = iri;
        }

        Resource iri;
        Set<Repair> constraint = new HashSet();
        Set<Repair> preference = new HashSet();
    }

    private static class Repair {

        public Repair(Resource iri) {
            this.iri = iri;
        }

        Resource iri;
        Resource path;
        public Resource clazz;
        public Resource condition;
        public Integer weight;
        Resource action;
        public Resource type;
        public List<Value> values;
        public IRI function;
    }
}