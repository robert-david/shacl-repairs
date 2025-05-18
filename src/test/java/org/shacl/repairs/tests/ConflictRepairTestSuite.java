package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class ConflictRepairTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void test_conflict_01() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_01";
        r.createRepairProgram(
                testPath + "/test_conflict_01_data.ttl",
                testPath + "/test_conflict_01_shapes.ttl",
                testPath + "/test_conflict_01_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_01_rules.pl");

        //assertTrue(result.contains("Models       : 2"));
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_conflict_01_result.txt", result);
    }

    @Test
    public void test_conflict_02() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_02";
        r.createRepairProgram(
                testPath + "/test_conflict_02_data.ttl",
                testPath + "/test_conflict_02_shapes.ttl",
                testPath + "/test_conflict_02_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_02_rules.pl");

        //assertTrue(result.contains("Models       : 2"));
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_conflict_02_result.txt", result);
    }

    @Test
    public void test_conflict_03() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_03";
        r.createRepairProgram(
                testPath + "/test_conflict_03_data.ttl",
                testPath + "/test_conflict_03_shapes.ttl",
                testPath + "/test_conflict_03_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_03_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_NotPersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_conflict_03_result.txt", result);
    }

    @Test
    public void test_conflict_04() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_04";
        r.createRepairProgram(
                testPath + "/test_conflict_04_data.ttl",
                testPath + "/test_conflict_04_shapes.ttl",
                testPath + "/test_conflict_04_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_04_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_NotPersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_conflict_04_result.txt", result);
    }

    @Test
    public void test_conflict_05() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_05";
        r.createRepairProgram(
                testPath + "/test_conflict_05_data.ttl",
                testPath + "/test_conflict_05_shapes.ttl",
                testPath + "/test_conflict_05_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_05_rules.pl");

        //assertTrue(result.contains("Models       : 2"));
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_conflict_05_result.txt", result);
    }

    @Test
    public void test_conflict_06() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_06";
        r.createRepairProgram(
                testPath + "/test_conflict_06_data.ttl",
                testPath + "/test_conflict_06_shapes.ttl",
                testPath + "/test_conflict_06_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_06_rules.pl");

        //assertTrue(result.contains("Models       : 2"));
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_conflict_06_result.txt", result);
    }

    @Test
    public void test_conflict_07() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_07";
        r.createRepairProgram(
                testPath + "/test_conflict_07_data.ttl",
                testPath + "/test_conflict_07_shapes.ttl",
                testPath + "/test_conflict_07_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_07_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShapeB)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShapeA)") == 1);

        r.writeResult(testPath + "/test_conflict_07_result.txt", result);
    }

    @Test
    public void test_conflict_08() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_08";
        r.createRepairProgram(
                testPath + "/test_conflict_08_data.ttl",
                testPath + "/test_conflict_08_shapes.ttl",
                testPath + "/test_conflict_08_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_08_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_Vegetarian)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_steak\",d_Meat)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_eats(\"d_ann\",\"d_steak\"))") == 1);

        r.writeResult(testPath + "/test_conflict_08_result.txt", result);
    }

    @Test
    public void test_conflict_09() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_09";
        r.createRepairProgram(
                testPath + "/test_conflict_09_data.ttl",
                testPath + "/test_conflict_09_shapes.ttl",
                testPath + "/test_conflict_09_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_09_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_UnemployedShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_company1\",d_OrganizationShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_worksFor(\"d_ann\",\"d_company1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Organization(\"d_company1\"))") == 1);

        r.writeResult(testPath + "/test_conflict_09_result.txt", result);
    }

    @Test
    public void test_conflict_10() throws IOException {

        String testPath = path + "/tests/conflict/test_conflict_10";
        r.createRepairProgram(
                testPath + "/test_conflict_10_data.ttl",
                testPath + "/test_conflict_10_shapes.ttl",
                testPath + "/test_conflict_10_rules.pl");

        String result = r.runProgram(testPath + "/test_conflict_10_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_NotPersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_conflict_10_result.txt", result);
    }
}
