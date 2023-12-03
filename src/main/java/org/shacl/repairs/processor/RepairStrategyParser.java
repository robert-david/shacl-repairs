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
                    statement.getObject().toString().equals("http://www.w3.org/ns/shacl#RepairStrategy")) {

                repairStrategies.put(statement.getSubject(), new RepairStrategy(statement.getSubject()));
            }
        }

        for (Value iri : repairStrategies.keySet()) {

            for (Statement statement : dataModel.getStatements(repairStrategies.get(iri).iri, null, null)) {

                if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl#repair")) {

                    repairStrategies.get(iri).repairs.add(new Repair((Resource) statement.getObject()));

                } else if (statement.getPredicate().equals(RDF.TYPE)) {
                    // do nothing
                } else {
                    throw new RuntimeException("Unknown repair strategy predicate " + statement.getPredicate());
                }
            }

            for (Repair repair : repairStrategies.get(iri).repairs) {

                Value valueNode = null;

                for (Statement statement : dataModel.getStatements(repair.iri, null, null)) {

                    if (statement.getPredicate().equals(SHACL.PATH)) {

                        repair.path = (Resource) statement.getObject();

                    } else if (statement.getPredicate().toString().equals("http://www.w3.org/ns/shacl#action")) {

                        repair.action = (Resource) statement.getObject();

                    } else if (statement.getPredicate().equals(SHACL.NOT)) {

                        valueNode = statement.getObject();
                        repair.not = true;

                    } else if (statement.getPredicate().equals(SHACL.VALUE)) {

                        valueNode = statement.getObject();
                        repair.not = false;

                    } else if (statement.getPredicate().equals(SHACL.CLASS)) {

                        repair.clazz = (Resource) statement.getObject();

                    } else if (statement.getPredicate().stringValue().equals(SHACL.NAMESPACE + "preferenceOrder")) {

                        repair.preferenceOrder = new ArrayList();

                        Value rest = statement.getObject();
                        while (rest.isBNode()) {

                            if (!RDF.NIL.equals(rest)) {
                                Statement first = dataModel.getStatements((Resource) rest, RDF.FIRST, null).iterator().next();
                                repair.preferenceOrder.add(first.getObject());
                            }
                            rest = dataModel.getStatements((Resource) rest, RDF.REST, null).iterator().next().getObject();
                        }

                    } else {
                        throw new RuntimeException("Unknown repair strategy predicate " + statement.getPredicate());
                    }
                }

                if (repair.path != null) {
                    if (repair.not) {
                        for (Statement statement : dataModel.getStatements((Resource) valueNode, SHACL.VALUE, null)) {

                            valueNode = statement.getObject();
                        }
                    }

                    if (valueNode != null && valueNode.isBNode()) {

                        for (Statement statement : dataModel.getStatements((Resource) valueNode, null, null)) {

                            if (statement.getPredicate().equals(RDF.TYPE)) {

                                repair.value = statement.getObject();
                                repair.valueIsFunction = true;

                            } else {
                                throw new RuntimeException("Unknown strategy value type " + statement.getPredicate() + " " + statement.getObject());
                            }
                        }
                    } else {
                        repair.value = valueNode;
                        repair.valueIsFunction = false;
                    }
                }
            }
        }

        for (Value iri : repairStrategies.keySet()) {

            RepairStrategy rs = repairStrategies.get(iri);

            for (Repair repair : rs.repairs) {

                if (repair.path != null) {
                    if (repair.action.toString().equals("http://www.w3.org/ns/shacl#add")) {

                        if (repair.value != null) {

                            repairData.getRepairStrategyRules().add(
                                    "#maximize { 1@0,X: add(" +
                                    ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, repair.value) + "\")) } .\n"
                            );

                        } else {
                            throw new RuntimeException("Not implemented yet");
                        }

                    } else if (repair.not && repair.action.toString().equals("http://www.w3.org/ns/shacl#delete")) {

                        if (repair.valueIsFunction) {

                            if (repair.value.toString().equals("http://www.w3.org/ns/shacl#MinValue")) {
                                repairData.getRepairStrategyRules().add(
                                        ":-del(" + ns(rss_nss, repair.path) + "(X,M))," + ns(rss_nss, repair.path) + "(X,M)," +
                                                "M=#min {Y:" + ns(rss_nss, repair.path) + "(X,Y)} .\n"
                                );
                            } else if (repair.value.toString().equals("http://www.w3.org/ns/shacl#AnyValue")) {
                                repairData.getRepairStrategyRules().add(
                                        ":-del(" + ns(rss_nss, repair.path) + "(X,_)) .\n"
                                );
                            }

                        } else if (repair.value != null) {

                            repairData.getRepairStrategyRules().add(
                                    ":-del(" + ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, repair.value) + "\")) .\n"
                            );

                        } else {
                            throw new RuntimeException("Not implemented yet");
                        }

                    } else if (repair.preferenceOrder != null && repair.action.toString().equals("http://www.w3.org/ns/shacl#delete")) {

                        Collections.reverse(repair.preferenceOrder);

                        for (int i = 0; i < repair.preferenceOrder.size(); i++) {

                            repairData.getRepairStrategyRules().add(
                                    "#minimize { " + (i + 1) + "@0,X: del(" +
                                            ns(rss_nss, repair.path) + "(X,\"" + ns(rss_nss, repair.preferenceOrder.get(i)) + "\")) } .\n"
                            );
                        }

                    } else {
                        throw new RuntimeException("Not implemented yet");
                    }

                } else if (repair.clazz != null) {

                    if (repair.action.toString().equals("http://www.w3.org/ns/shacl#add")) {

                        repairData.getRepairStrategyRules().add(
                                "#maximize { 1@1,X: add(" + ns(rss_nss, repair.clazz) + "(X)) } .\n");

                    } else if (repair.action.toString().equals("http://www.w3.org/ns/shacl#delete")) {

                        repairData.getRepairStrategyRules().add(
                                "#maximize { 1@1,X: del(" + ns(rss_nss, repair.clazz) + "(X)) } .\n");

                    } else {
                        throw new RuntimeException("Unknown repair strategy action " + repair.action);
                    }

                } else {
                    throw new RuntimeException("Unknown repair strategy");
                }
            }
        }
    }

    private static class RepairStrategy {

        public RepairStrategy(Resource iri) {
            this.iri = iri;
        }

        Resource iri;
        Set<Repair> repairs = new HashSet();
    }

    private static class Repair {

        public List<Value> preferenceOrder;

        public Repair(Resource iri) {
            this.iri = iri;
        }

        Resource path;
        Resource action;
        Resource iri;
        boolean not;
        Value value;
        boolean valueIsFunction;
        Resource clazz;
    }
}
