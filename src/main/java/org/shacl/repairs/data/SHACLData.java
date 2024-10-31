package org.shacl.repairs.data;

import org.eclipse.rdf4j.model.Value;
import org.eclipse.rdf4j.model.Resource;

import java.util.*;

public class SHACLData {

    private static SHACLData singleton;

    private SHACLData() {
    }

    public static SHACLData get() {

        if(singleton == null) {
            singleton = new SHACLData();
        }
        return singleton;
    }

    public static void init() {

        singleton = new SHACLData();
    }

    private static final String baseURI = "http://repairs.shacl.org";

    private final Map<Value, Set<Resource>> targetNodes = new HashMap<>();

    private final Set<String> constantsFacts = new HashSet<>();
    private final Set<String> dataFacts = new LinkedHashSet<>();
    private final Set<String> datatypes = new HashSet<>();

    public static String getBaseURI() {
        return baseURI;
    }

    public Map<Value, Set<Resource>> getTargetNodes() {
        return targetNodes;
    }

    public Set<String> getConstantsFacts() {
        return constantsFacts;
    }

    public Set<String> getDataFacts() {
        return dataFacts;
    }

    public Set<String> getDatatypes() {
        return datatypes;
    }
}
