package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.*;
import org.eclipse.rdf4j.model.vocabulary.RDF;
import org.eclipse.rdf4j.model.vocabulary.RDFS;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.BasicParserSettings;
import org.shacl.repairs.data.SHACLData;

import java.util.Set;

import static org.shacl.repairs.processor.Utils.ns;

public class GraphParser {

    public static void createGraphFacts(
            Model dataModel,
            SHACLData shaclData) {

        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Set<Namespace> instances_nss = dataModel.getNamespaces();

        for (Statement statement : dataModel) {

            if (statement.getPredicate().equals(RDF.TYPE)) {
                shaclData.getDataFacts()
                        .add(ns(instances_nss, statement.getObject())
                                + "(\"" + ns(instances_nss, statement.getSubject()) + "\") .\n");

            } else if (statement.getPredicate().equals(RDFS.SUBCLASSOF)) {
                String class1 = ns(instances_nss, statement.getSubject());
                String class2 = ns(instances_nss, statement.getObject());
                shaclData.getDataFacts()
                        .add("rdfs_subClassOf(\"" + class1 + "\",\"" + class2 + "\") .\n");

            } else {

                if (statement.getObject().isLiteral()) {

                    shaclData.getDataFacts()
                            .add(ns(instances_nss, statement.getPredicate())
                                    + "(\"" + ns(instances_nss, statement.getSubject())
                                    + "\",\"" + ns(instances_nss, statement.getObject()).replace("\"","\\\"")
                                    //+ "\",\"" + StringEscapeUtils.escapeJava(ns(instances_nss, statement.getObject())
                                    .replaceAll("\n"," ")
                                    .replaceAll("\t"," ")
                            + "\") .\n");

                    Literal literal = (Literal) statement.getObject();
                    shaclData.getDataFacts()
                            .add(ns(instances_nss, literal.getDatatype())
                                    + "(\"" + ns(instances_nss, statement.getObject()).replace("\"","\\\"")
                                    .replaceAll("\n"," ")
                                    .replaceAll("\t"," ")
                                    + "\") .\n");
                } else {

                    shaclData.getDataFacts()
                            .add(ns(instances_nss, statement.getPredicate())
                                    + "(\"" + ns(instances_nss, statement.getSubject())
                                    + "\",\"" + ns(instances_nss, statement.getObject()) + "\") .\n");
                }
            }
        }
    }
}
