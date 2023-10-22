package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class LogicalRepairTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_xone_01() throws IOException {

        String testPath = path + "/tests/logical/test_logical_01";
        r.createRepairProgram(
                testPath + "/test_logical_01_data.ttl",
                testPath + "/test_logical_01_shapes.ttl",
                testPath + "/test_logical_01_rules.pl");

        String result = r.runProgram(testPath + "/test_logical_01_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_student(\"_ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_teacher(\"_ann\"))") == 1);

        r.writeResult(testPath + "/test_logical_01_result.txt", result);
    }

    @Test
    public void test_xone_02() throws IOException {

        String testPath = path + "/tests/logical/test_logical_02";
        r.createRepairProgram(
                testPath + "/test_logical_02_data.ttl",
                testPath + "/test_logical_02_shapes.ttl",
                testPath + "/test_logical_02_rules.pl");

        String result = r.runProgram(testPath + "/test_logical_02_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(_student(\"_ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_teacher(\"_ann\"))") == 1);

        r.writeResult(testPath + "/test_logical_02_result.txt", result);
    }

    @Test
    public void test_xone_03() throws IOException {

        String testPath = path + "/tests/logical/test_logical_03";
        r.createRepairProgram(
                testPath + "/test_logical_03_data.ttl",
                testPath + "/test_logical_03_shapes.ttl",
                testPath + "/test_logical_03_rules.pl");

        String result = r.runProgram(testPath + "/test_logical_03_rules.pl");

        assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_name(\"_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_lastName(\"_ann\",\"Doe\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_firstName(\"_ann\",\"Ann\"))") == 1);

        r.writeResult(testPath + "/test_logical_03_result.txt", result);
    }

    @Test
    public void test_xone_04() throws IOException {

        String testPath = path + "/tests/logical/test_logical_04";
        r.createRepairProgram(
                testPath + "/test_logical_04_data.ttl",
                testPath + "/test_logical_04_shapes.ttl",
                testPath + "/test_logical_04_rules.pl");

        String result = r.runProgram(testPath + "/test_logical_04_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_teacher(\"_ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_student(\"_ann\"))") == 1);

        r.writeResult(testPath + "/test_logical_04_result.txt", result);
    }
}
