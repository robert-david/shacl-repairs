package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Namespace;
import org.eclipse.rdf4j.model.Value;
import org.eclipse.rdf4j.model.impl.SimpleBNode;
import org.eclipse.rdf4j.sail.memory.model.MemBNode;

import java.util.Set;

public class Utils {

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
                    //id = id.replaceFirst("" + id.charAt(0), "" + ("" + id.charAt(0)).toLowerCase().charAt(0));
                    id = id.replaceFirst("" + id.charAt(0), "" + ("" + id.charAt(0)).charAt(0));
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

        id = id.replaceAll("-","_");
        return id;
    }

    public static String getNsURI(Set<Namespace> ns, String id) {

        for (Namespace n : ns) {
            if (id.equals(n.getPrefix())) {
                return n.getName();
            }
        }
        return null;
    }
}
