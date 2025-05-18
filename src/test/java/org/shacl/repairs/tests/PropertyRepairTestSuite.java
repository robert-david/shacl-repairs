package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class PropertyRepairTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void test_property_01() throws IOException {

        String testPath = path + "/tests/property/test_property_01";
        r.createRepairProgram(
                testPath + "/test_property_01_data.ttl",
                testPath + "/test_property_01_shapes.ttl",
                testPath + "/test_property_01_rules.pl");

        String result = r.runProgram(testPath + "/test_property_01_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_property_01_result.txt", result);
    }

    @Test
    public void test_property_02() throws IOException {

        String testPath = path + "/tests/property/test_property_02";
        r.createRepairProgram(
                testPath + "/test_property_02_data.ttl",
                testPath + "/test_property_02_shapes.ttl",
                testPath + "/test_property_02_rules.pl");

        String result = r.runProgram(testPath + "/test_property_02_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_property_02_result.txt", result);
    }

    @Test
    public void test_property_03() throws IOException {

        String testPath = path + "/tests/property/test_property_03";
        r.createRepairProgram(
                testPath + "/test_property_03_data.ttl",
                testPath + "/test_property_03_shapes.ttl",
                testPath + "/test_property_03_rules.pl");

        String result = r.runProgram(testPath + "/test_property_03_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_worksFor\\(\"d_ann\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 3);
        assertTrue(Pattern.compile("add\\(d_Organization\\(\"new_\\d+\"\\)\\)").matcher(result).results().count() == 3);

        r.writeResult(testPath + "/test_property_03_result.txt", result);
    }

    @Test
    public void test_property_04() throws IOException {

        String testPath = path + "/tests/property/test_property_04";
        r.createRepairProgram(
                testPath + "/test_property_04_data.ttl",
                testPath + "/test_property_04_shapes.ttl",
                testPath + "/test_property_04_rules.pl");

        String result = r.runProgram(testPath + "/test_property_04_rules.pl");

        //assertTrue(result.contains("Models       : 9"));
        assertTrue(result.contains("Optimal    : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_property_04_result.txt", result);
    }

    @Test
    public void test_property_05() throws IOException {

        String testPath = path + "/tests/property/test_property_05";
        r.createRepairProgram(
                testPath + "/test_property_05_data.ttl",
                testPath + "/test_property_05_shapes.ttl",
                testPath + "/test_property_05_rules.pl");

        String result = r.runProgram(testPath + "/test_property_05_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShapeA)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShapeB)") == 1);
        assertTrue(Pattern.compile("add\\(d_worksFor\\(\"d_ann\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 2);
        assertTrue(Pattern.compile("add\\(d_Organization\\(\"new_\\d+\"\\)\\)").matcher(result).results().count() == 2);

        r.writeResult(testPath + "/test_property_05_result.txt", result);
    }

    @Test
    public void test_property_06() throws IOException {

        String testPath = path + "/tests/property/test_property_06";
        r.createRepairProgram(
                testPath + "/test_property_06_data.ttl",
                testPath + "/test_property_06_shapes.ttl",
                testPath + "/test_property_06_rules.pl");

        String result = r.runProgram(testPath + "/test_property_06_rules.pl");

        //assertTrue(result.contains("Models       : 12"));
        assertTrue(result.contains("Optimal    : 10"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_EmployeeShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(d_worksFor(\"d_ann\",\"d_company1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_worksFor(\"d_ann\",\"d_company2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Organization(\"d_company1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Organization(\"d_company2\"))") == 2);

        r.writeResult(testPath + "/test_property_06_result.txt", result);
    }

    @Test
    public void test_property_07() throws IOException {

        String testPath = path + "/tests/property/test_property_07";
        r.createRepairProgram(
                testPath + "/test_property_07_data.ttl",
                testPath + "/test_property_07_shapes.ttl",
                testPath + "/test_property_07_rules.pl");

        String result = r.runProgram(testPath + "/test_property_07_rules.pl");

        //assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(d_Organization(\"d_company1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_Organization(\"d_company2\"))") == 1);
        assertTrue(Pattern.compile("add\\(d_worksFor\\(\"d_ann\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_07_result.txt", result);
    }

    @Test
    public void test_property_08() throws IOException {

        String testPath = path + "/tests/property/test_property_08";
        r.createRepairProgram(
                testPath + "/test_property_08_data.ttl",
                testPath + "/test_property_08_shapes.ttl",
                testPath + "/test_property_08_rules.pl");

        String result = r.runProgram(testPath + "/test_property_08_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_firstName(\"d_ann\",\"") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_givenName(\"d_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_givenName(\"d_ann\",\"") == 2);

        r.writeResult(testPath + "/test_property_08_result.txt", result);
    }

    @Test
    public void test_property_09() throws IOException {

        String testPath = path + "/tests/property/test_property_09";
        r.createRepairProgram(
                testPath + "/test_property_09_data.ttl",
                testPath + "/test_property_09_shapes.ttl",
                testPath + "/test_property_09_rules.pl");

        String result = r.runProgram(testPath + "/test_property_09_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_firstName(\"d_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_firstName(\"d_ann\",\"ANN\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_givenName(\"d_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_givenName(\"d_ann\",\"ANN\"))") == 1);

        r.writeResult(testPath + "/test_property_09_result.txt", result);
    }
}
