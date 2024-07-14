package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.*;
import org.eclipse.rdf4j.model.vocabulary.RDF;
import org.eclipse.rdf4j.model.vocabulary.SHACL;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.BasicParserSettings;
import org.shacl.repairs.data.RepairData;

import java.util.*;

import static org.shacl.repairs.processor.Utils.ns;

public class RepairStrategyParser {

    public static void createRepairStrategyRules(
            Model dataModel,
            RepairData repairData) {

        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Set<Namespace> rss_nss = dataModel.getNamespaces();

        Map<Value, RepairStrategy> repairStrategies = new HashMap();

        for (Statement statement : dataModel) {

            if (statement.getPredicate().equals(RDF.TYPE) &&
                    statement.getObject().toString().equals("http://www.w3.org/ns/shacl/repairs#RepairStrategy")) {

                repairStrategies.put(statement.getSubject(), new RepairStrategy(statement.getSubject()));
            }
        }

        for (Value iri : repairStrategies.keySet()) {

            for (Statement statement : dataModel.getStatements(repairStrategies.get(iri).iri, null, null)) {

                if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#read-only")) {

                    repairStrategies.get(iri).readonly.add(new Repair((Resource) statement.getObject()));

                } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#preference")) {

                        repairStrategies.get(iri).preferences.add(new Repair((Resource) statement.getObject()));

                } else if (statement.getPredicate().equals(RDF.TYPE)) {
                    // do nothing
                } else {
                    throw new RuntimeException("Unknown repair strategy predicate " + statement.getPredicate());
                }
            }

            for (Repair repair : repairStrategies.get(iri).readonly) {

                for (Statement statement : dataModel.getStatements(repair.iri, null, null)) {

                    if (statement.getPredicate().equals(SHACL.PATH)) {

                        if (repair.path != null) {
                            throw new RuntimeException("sh:path " + repair.path + " for shr:read-only already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.path = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#action")) {

                        if (repair.action != null) {
                            throw new RuntimeException("shr:action " + repair.action + " for shr:read-only already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.action = (Resource) statement.getObject();

                    } else if (statement.getPredicate().stringValue().equals("http://www.w3.org/ns/shacl/repairs#values")) {

                        repair.values = new ArrayList();

                        Value rest = statement.getObject();

                        if (rest.isBNode()) {
                            while (rest.isBNode()) {

                                if (!RDF.NIL.equals(rest)) {
                                    Statement first = dataModel.getStatements((Resource) rest, RDF.FIRST, null).iterator().next();
                                    repair.values.add(first.getObject());
                                }
                                rest = dataModel.getStatements((Resource) rest, RDF.REST, null).iterator().next().getObject();
                            }
                        } else {
                            repair.values.add(rest);
                        }

                    } else {
                        throw new RuntimeException("Unknown repair strategy predicate " + statement.getPredicate());
                    }
                }

                if (repair.path == null) {
                    throw new RuntimeException("Missing sh:path for shr:read-only");
                }
                if (repair.action == null) {
                    throw new RuntimeException("Missing shr:action for shr:read-only");
                }
            }

            for (Repair repair : repairStrategies.get(iri).preferences) {

                for (Statement statement : dataModel.getStatements(repair.iri, null, null)) {

                    if (statement.getPredicate().equals(SHACL.PATH)) {

                        if (repair.path != null) {
                            throw new RuntimeException("sh:path " + repair.path + " for shr:preference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.path = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl/repairs#action")) {

                        if (repair.action != null) {
                            throw new RuntimeException("shr:action " + repair.action + " for shr:preference already defined. Cannot add  " + statement.getObject().toString());
                        }
                        repair.action = (Resource) statement.getObject();

                    } else if (statement.getPredicate().stringValue().equals("http://www.w3.org/ns/shacl/repairs#values")) {

                        repair.values = new ArrayList();

                        Value rest = statement.getObject();

                        if (rest.isBNode()) {
                            while (rest.isBNode()) {

                                if (!RDF.NIL.equals(rest)) {
                                    Statement first = dataModel.getStatements((Resource) rest, RDF.FIRST, null).iterator().next();
                                    repair.values.add(first.getObject());
                                }
                                rest = dataModel.getStatements((Resource) rest, RDF.REST, null).iterator().next().getObject();
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

                if (repair.path == null) {
                    throw new RuntimeException("Missing sh:path for shr:preference");
                }
                if (repair.action == null) {
                    throw new RuntimeException("Missing shr:action for shr:preference");
                }

                if (repair.values == null && repair.function == null) {
                    throw new RuntimeException("No values or function defined for shr:preference");
                }

                if (repair.values != null && repair.function != null) {
                    throw new RuntimeException("Both values and function defined for shr:preference");
                }
            }
        }

        for (Value iri : repairStrategies.keySet()) {

            RepairStrategy rs = repairStrategies.get(iri);

            for (Repair repair : rs.readonly) {

                    if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#add")) {

                        if (repair.values != null) {
                            for (Value value : repair.values) {
                                repairData.getRepairStrategyRules().add(
                                        ":-add(" + ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, value) + "\")) .\n"
                                );
                            }
                        } else {
                            repairData.getRepairStrategyRules().add(
                                    ":-add(" + ns(rss_nss, repair.path) + "(X,Y)) .\n"
                            );
                        }

                    } else if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#delete")) {

                        if (repair.values != null) {
                            for (Value value : repair.values) {
                                repairData.getRepairStrategyRules().add(
                                        ":-del(" + ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, value) + "\")) .\n"
                                );
                            }
                        } else {
                            repairData.getRepairStrategyRules().add(
                                    ":-del(" + ns(rss_nss, repair.path) + "(X,Y)) .\n"
                            );
                        }

                    } else {
                        throw new RuntimeException("Unknown shr:action " + repair.action + " for shr:read-only");
                    }
            }

            for (Repair repair : rs.preferences) {

                    if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#add")) {

                        if (repair.values != null) {
                            for (int i = 0; i < repair.values.size(); i++) {
                                repairData.getRepairStrategyRules().add(
                                        "#maximize { " + (repair.values.size() - i) + "@0,X: add(" +
                                                ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, repair.values.get(i)) + "\")) } .\n"
                                );
                            }
                        }

                        if (repair.function != null) {
                            // T'OD'O: makes sense to have function for add ??
//                            if (repair.function.toString().equals("http://www.w3.org/ns/shacl/repairs#minValue")) {
//
//                                repairData.getRepairStrategyRules().add(
//                                        "#maximize { 1@0,X,Y: del(" + ns(rss_nss, repair.path) + "(X,Y))," + ns(rss_nss, repair.path) + "_(X,Z,\"t**\"),Y<Z } .\n");
//
//                            } else if (repair.function.toString().equals("http://www.w3.org/ns/shacl/repairs#maxValue")) {
//
//                                repairData.getRepairStrategyRules().add(
//                                        "#maximize { 1@0,X,Y: del(" + ns(rss_nss, repair.path) + "(X,Y))," + ns(rss_nss, repair.path) + "_(X,Z,\"t**\"),Y>Z } .\n");
//
//                            } else {
//                                throw new RuntimeException("Unkown shr:function " + repair.function.toString() + " for shr:preference");
//                            }
                        }

                    } else if (repair.action.toString().equals("http://www.w3.org/ns/shacl/repairs#delete")) {

                        if (repair.values != null) {
                            for (int i = 0; i < repair.values.size(); i++) {
                                repairData.getRepairStrategyRules().add(
                                        "#minimize { " + (i + 1) + "@0,X: del(" +
                                                ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, repair.values.get(i)) + "\")) } .\n"
                                );
                            }
                        }

                        if (repair.function != null) {
                            if (repair.function.toString().equals("http://www.w3.org/ns/shacl/repairs#minValue")) {

                                repairData.getRepairStrategyRules().add(
                                        "#maximize { 1@0,X,Y: del(" + ns(rss_nss, repair.path) + "(X,Y))," + ns(rss_nss, repair.path) + "_(X,Z,\"t**\"),Y<Z } .\n");

                            } else if (repair.function.toString().equals("http://www.w3.org/ns/shacl/repairs#maxValue")) {

                                repairData.getRepairStrategyRules().add(
                                        "#maximize { 1@0,X,Y: del(" + ns(rss_nss, repair.path) + "(X,Y))," + ns(rss_nss, repair.path) + "_(X,Z,\"t**\"),Y>Z } .\n");

                            } else {
                                throw new RuntimeException("Unkown shr:function " + repair.function.toString() + " for shr:preference");
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
        Set<Repair> readonly = new HashSet();
        Set<Repair> preferences = new HashSet();
    }

    private static class Repair {

        public Repair(Resource iri) {
            this.iri = iri;
        }

        Resource iri;
        Resource path;
        Resource action;
        public List<Value> values;
        public IRI function;

    }
}
