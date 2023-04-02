package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Namespace;
import org.eclipse.rdf4j.model.Value;

import java.util.Set;

public class Utils {

    public static Set<Namespace> nss;

    public static String ns(Set<Namespace> ns, Value value) {
        return ns(ns, value.stringValue());
    }
    public static String ns(Set<Namespace> ns, String id) {

        for (Namespace n : ns) {
            if (id.contains(n.getName())) {
                id = id.replaceAll(n.getName(), "");
                if (n.getPrefix().equals("")) {
                    id = id.replace(id.charAt(0), ("" + id.charAt(0)).toLowerCase().charAt(0));
                }
                id = n.getPrefix() + "_" + id;
            }
        }
        id = id.replaceAll("-","_");
        return id;
    }
}
