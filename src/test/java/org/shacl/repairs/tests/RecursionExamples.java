package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.data.RepairData;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class RecursionExamples {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void example_1() throws IOException {

        RepairData.get().setFiniteLimit(1);

        String testPath = path + "/target-recursion/example_1";
        r.createRepairProgram(
                testPath + "/example_1_data.ttl",
                testPath + "/example_1_shapes.ttl",
                testPath + "/example_1_rules.pl");

        String result = r.runProgram(testPath + "/example_1_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_StudentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_C1\",d_CourseShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Course(\"d_C1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_courseID(\"d_C1\",d_courseID(1)))") == 1);

        r.writeResult(testPath + "/example_1_result.txt", result);
    }

    @Test
    public void example_2() throws IOException {

        RepairData.get().setFiniteLimit(1);

        String testPath = path + "/target-recursion/example_2";
        r.createRepairProgram(
                testPath + "/example_2_data.ttl",
                testPath + "/example_2_shapes.ttl",
                testPath + "/example_2_rules.pl");

        String result = r.runProgram(testPath + "/example_2_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_StudentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_C1\",d_CourseShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_C2\",d_CourseShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Course(\"d_C1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_courseID(\"d_C1\",d_courseID(1)))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_courseID(\"d_C2\",\"1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_courseID(\"d_C2\",\"2\"))") == 1);

        r.writeResult(testPath + "/example_2_result.txt", result);
    }

    @Test
    public void example_3() throws IOException {

        RepairData.get().setFiniteLimit(5);

        String testPath = path + "/target-recursion/example_3";
        r.createRepairProgram(
                testPath + "/example_3_data.ttl",
                testPath + "/example_3_shapes.ttl",
                testPath + "/example_3_rules.pl");

        String result = r.runProgram(testPath + "/example_3_rules.pl");

        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_Ben\",d_StudentShape)") == 1);

        r.writeResult(testPath + "/example_3_result.txt", result);
    }
}