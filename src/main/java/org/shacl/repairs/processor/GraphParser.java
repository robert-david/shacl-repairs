package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Literal;
import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.Namespace;
import org.eclipse.rdf4j.model.Statement;
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
                        .add(class2 + "(X):-" + class1 + "(X) .\n");

            } else {

                shaclData.getDataFacts()
                        .add(ns(instances_nss, statement.getPredicate())
                                + "(\"" + ns(instances_nss, statement.getSubject()) + "\",\""
                                + ns(instances_nss, statement.getObject()) + "\") .\n");

                if (statement.getObject().isLiteral()) {

                    Literal literal = (Literal) statement.getObject();
                    shaclData.getDataFacts()
                            .add(ns(instances_nss, literal.getDatatype())
                                    + "(\"" + ns(instances_nss, statement.getObject()) + "\") .\n");
                }
            }
        }
    }
}
