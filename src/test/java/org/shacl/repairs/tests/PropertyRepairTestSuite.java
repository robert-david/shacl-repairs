package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class PropertyRepairTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_property_01() throws IOException {

        String testPath = path + "/tests/property/test_property_01";
        r.createRepairProgram(
                testPath + "/test_property_01_data.ttl",
                testPath + "/test_property_01_shapes.ttl",
                testPath + "/test_property_01_rules.pl");

        String result = r.runProgram(testPath + "/test_property_01_rules.pl");

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);

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

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);

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

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_worksFor(\"_ann\",\"1648\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_worksFor(\"_ann\",\"1649\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_worksFor(\"_ann\",\"1650\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_organization(\"1648\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_organization(\"1649\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_organization(\"1650\"))") == 1);

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

        assertTrue(result.contains("Models       : 9"));
        assertTrue(result.contains("Optimal    : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 6);

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

        assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShapeA)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShapeB)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_worksFor(\"_ann\",\"1654\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_worksFor(\"_ann\",\"1655\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_organization(\"1654\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_organization(\"1655\"))") == 1);

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

        assertTrue(result.contains("Models       : 11+"));
        assertTrue(result.contains("Optimal    : 10"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_employeeShape)") == 10);
        assertTrue(StringUtils.countMatches(result,"del(_worksFor(\"_ann\",\"_company1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(_worksFor(\"_ann\",\"_company2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_organization(\"_company1\"))") == 8);
        assertTrue(StringUtils.countMatches(result,"add(_organization(\"_company2\"))") == 8);

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

        assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_organization(\"_company1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_organization(\"_company2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_worksFor(\"_ann\",\"1651\"))") == 1);

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

        assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_firstName(\"_ann\",\"") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_givenName(\"_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_givenName(\"_ann\",\"") == 2);

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

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(_firstName(\"_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_firstName(\"_ann\",\"ANN\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_givenName(\"_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_givenName(\"_ann\",\"ANN\"))") == 1);

        r.writeResult(testPath + "/test_property_09_result.txt", result);
    }
}
