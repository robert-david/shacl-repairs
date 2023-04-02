package org.shacl.repairs.data;

import java.util.ArrayList;
import java.util.List;

public class RepairData {

    private static RepairData singleton;

    private RepairData() {
    }

    public static RepairData get() {

        if(singleton == null) {
            singleton = new RepairData();
        }
        return singleton;
    }

    public static void init() {

        singleton = new RepairData();
    }

    private final List<String> repairTargetRules = new ArrayList<>();

    private final List<String> annotationRules = new ArrayList<>();
    private final List<String> repairRules = new ArrayList<>();
    private final List<String> interpretationRules = new ArrayList<>();
    private final List<String> programConstraints = new ArrayList<>();

    private final List<String> changeSetRules = new ArrayList<>();

    private final List<String> shapeTargetRules = new ArrayList<>();

    public List<String> getRepairTargetRules() {
        return repairTargetRules;
    }

    public List<String> getAnnotationRules() {
        return annotationRules;
    }

    public List<String> getRepairRules() {
        return repairRules;
    }

    public List<String> getInterpretationRules() {
        return interpretationRules;
    }

    public List<String> getProgramConstraints() {
        return programConstraints;
    }

    public List<String> getChangeSetRules() {
        return changeSetRules;
    }

    public List<String> getShapeTargetRules() {
        return shapeTargetRules;
    }
}
