package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.Namespace;
import org.eclipse.rdf4j.model.Value;
import org.eclipse.rdf4j.model.impl.LinkedHashModel;
import org.eclipse.rdf4j.model.impl.SimpleBNode;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.StatementCollector;
import org.eclipse.rdf4j.sail.memory.model.MemBNode;
import org.shacl.repairs.data.SHACLData;

import java.io.IOException;
import java.io.InputStream;
import java.util.Set;

public class Utils {

    private static Set<Namespace> commonNamespaces;
    public static Set<Namespace> nss;

    public static String ns(Set<Namespace> ns, Value value) {

        return value instanceof MemBNode ? "bnode_" + ((MemBNode) value).getID() :
                value instanceof SimpleBNode ? "bnode_" + ((SimpleBNode) value).getID() :
                ns(ns, value.stringValue());
    }

    public static String ns(Set<Namespace> ns, String id) {

        for (Namespace n : ns) {
            if (id.contains(n.getName())) {
                id = id.replaceAll(n.getName(), "");
                if (n.getPrefix().equals("")) {
                    if (id.length() == 0) {
                        id = n.getName();
                    }
                    id = id.replaceFirst("" + id.charAt(0), "" + ("" + id.charAt(0)).charAt(0));
                    id = "d_" + id;
                } else {
                    id = n.getPrefix() + "_" + id;
                }
            }
        }

        for (Namespace n : ns) {
            if (id.startsWith(n.getPrefix() + ":")) {
                id = id.replace(":","_");
            }
        }

        return id;
    }

    public static String getNsURI(Set<Namespace> ns, String id) {

        for (Namespace n : ns) {
            if (id.equals(n.getPrefix())) {
                return n.getName();
            }
            if ("".equals(n.getPrefix()) && "d".equals(id)) {
                return n.getName();
            }
        }
        return null;
    }

    public static Set<Namespace> getCommonNamespaces() {

        if (commonNamespaces == null) {

            try (InputStream inputStream = Utils.class.getResourceAsStream("common-namespaces.ttl")) {

                RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);

                Model model = new LinkedHashModel();
                rdfParser.setRDFHandler(new StatementCollector(model));
                rdfParser.parse(inputStream, SHACLData.getBaseURI());

                commonNamespaces = model.getNamespaces();

            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return commonNamespaces;
    }
}
