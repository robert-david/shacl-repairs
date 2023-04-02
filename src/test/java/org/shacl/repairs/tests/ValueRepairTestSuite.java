package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.*;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class ValueRepairTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_value_01() throws IOException {

        String testPath = path + "/tests/value/test_value_01";
        r.createRepairProgram(
                testPath + "/test_value_01_data.ttl",
                testPath + "/test_value_01_shapes.ttl",
                testPath + "/test_value_01_rules.pl");

        String result = r.runProgram(testPath + "/test_value_01_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"Ann\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1206\"))") == 1);

        r.writeResult(testPath + "/test_value_01_result.txt", result);
    }

    @Test
    public void test_value_02() throws IOException {

        String testPath = path + "/tests/value/test_value_02";
        r.createRepairProgram(
                testPath + "/test_value_02_data.ttl",
                testPath + "/test_value_02_shapes.ttl",
                testPath + "/test_value_02_rules.pl");

        String result = r.runProgram(testPath + "/test_value_02_rules.pl");

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1205\"))") == 1);

        r.writeResult(testPath + "/test_value_02_result.txt", result);
    }

    @Test
    public void test_value_03() throws IOException {

        String testPath = path + "/tests/value/test_value_03";
        r.createRepairProgram(
                testPath + "/test_value_03_data.ttl",
                testPath + "/test_value_03_shapes.ttl",
                testPath + "/test_value_03_rules.pl");

        String result = r.runProgram(testPath + "/test_value_03_rules.pl");

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1205\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1206\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_name(\"_ann\",\"ANN\"))") == 1);

        r.writeResult(testPath + "/test_value_03_result.txt", result);
    }

    @Test
    public void test_value_04() throws IOException {

        String testPath = path + "/tests/value/test_value_04";
        r.createRepairProgram(
                testPath + "/test_value_04_data.ttl",
                testPath + "/test_value_04_shapes.ttl",
                testPath + "/test_value_04_rules.pl");

        String result = r.runProgram(testPath + "/test_value_04_rules.pl");

        assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"Ann\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1206\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1208\"))") == 1);

        r.writeResult(testPath + "/test_value_04_result.txt", result);
    }

    @Test
    public void test_value_05() throws IOException {

        String testPath = path + "/tests/value/test_value_05";
        r.createRepairProgram(
                testPath + "/test_value_05_data.ttl",
                testPath + "/test_value_05_shapes.ttl",
                testPath + "/test_value_05_rules.pl");

        String result = r.runProgram(testPath + "/test_value_05_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"Ann\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1206\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_name(\"_ann\",\"ANN\"))") == 2);

        r.writeResult(testPath + "/test_value_05_result.txt", result);
    }

    @Test
    public void test_value_06() throws IOException {

        String testPath = path + "/tests/value/test_value_06";
        r.createRepairProgram(
                testPath + "/test_value_06_data.ttl",
                testPath + "/test_value_06_shapes.ttl",
                testPath + "/test_value_06_rules.pl");

        String result = r.runProgram(testPath + "/test_value_06_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1206\"))") == 1);

        r.writeResult(testPath + "/test_value_06_result.txt", result);
    }

    @Test
    public void test_value_07() throws IOException {

        String testPath = path + "/tests/value/test_value_07";
        r.createRepairProgram(
                testPath + "/test_value_07_data.ttl",
                testPath + "/test_value_07_shapes.ttl",
                testPath + "/test_value_07_rules.pl");

        String result = r.runProgram(testPath + "/test_value_07_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"Ann\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1206\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_person(\"ANN\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_person(\"Ann\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_person(\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_person(\"1206\"))") == 1);

        r.writeResult(testPath + "/test_value_07_result.txt", result);
    }

    @Test
    public void test_value_08() throws IOException {

        String testPath = path + "/tests/value/test_value_08";
        r.createRepairProgram(
                testPath + "/test_value_08_data.ttl",
                testPath + "/test_value_08_shapes.ttl",
                testPath + "/test_value_08_rules.pl");

        String result = r.runProgram(testPath + "/test_value_08_rules.pl");

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1205\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_name(\"_ann\",\"ANN\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_person(\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_person(\"1205\"))") == 1);

        r.writeResult(testPath + "/test_value_08_result.txt", result);
    }

    @Test
    public void test_value_09() throws IOException {

        String testPath = path + "/tests/value/test_value_09";
        r.createRepairProgram(
                testPath + "/test_value_09_data.ttl",
                testPath + "/test_value_09_shapes.ttl",
                testPath + "/test_value_09_rules.pl");

        String result = r.runProgram(testPath + "/test_value_09_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_name(\"_ann\",\"ANN\"))") == 2);

        r.writeResult(testPath + "/test_value_09_result.txt", result);
    }

    @Test
    public void test_value_10() throws IOException {

        String testPath = path + "/tests/value/test_value_10";
        r.createRepairProgram(
                testPath + "/test_value_10_data.ttl",
                testPath + "/test_value_10_shapes.ttl",
                testPath + "/test_value_10_rules.pl");

        String result = r.runProgram(testPath + "/test_value_10_rules.pl");

        assertTrue(result.contains("Models       : 3"));

        r.writeResult(testPath + "/test_value_10_result.txt", result);
    }

    @Test
    public void test_value_11() throws IOException {

        String testPath = path + "/tests/value/test_value_11";
        r.createRepairProgram(
                testPath + "/test_value_11_data.ttl",
                testPath + "/test_value_11_shapes.ttl",
                testPath + "/test_value_11_rules.pl");

        String result = r.runProgram(testPath + "/test_value_11_rules.pl");

        assertTrue(result.contains("Models       : 2"));
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"_ann\",_personShape)") == 1);

        r.writeResult(testPath + "/test_value_11_result.txt", result);
    }

    @Test
    public void test_value_12() throws IOException {

        String testPath = path + "/tests/value/test_value_12";
        r.createRepairProgram(
                testPath + "/test_value_12_data.ttl",
                testPath + "/test_value_12_shapes.ttl",
                testPath + "/test_value_12_rules.pl");

        String result = r.runProgram(testPath + "/test_value_12_rules.pl");

        assertTrue(result.contains("Models       : 2"));
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"_ann\",_personShape)") == 1);

        r.writeResult(testPath + "/test_value_12_result.txt", result);
    }

    @Test
    public void test_value_13() throws IOException {

        String testPath = path + "/tests/value/test_value_13";
        r.createRepairProgram(
                testPath + "/test_value_13_data.ttl",
                testPath + "/test_value_13_shapes.ttl",
                testPath + "/test_value_13_rules.pl");

        String result = r.runProgram(testPath + "/test_value_13_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1205\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1206\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_name(\"_ann\",\"ANN\"))") == 1);

        r.writeResult(testPath + "/test_value_13_result.txt", result);
    }

    @Test
    public void test_value_14() throws IOException {

        String testPath = path + "/tests/value/test_value_14";
        r.createRepairProgram(
                testPath + "/test_value_14_data.ttl",
                testPath + "/test_value_14_shapes.ttl",
                testPath + "/test_value_14_rules.pl");

        String result = r.runProgram(testPath + "/test_value_14_rules.pl");
        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 4);

        r.writeResult(testPath + "/test_value_14_result.txt", result);
    }

    @Test
    public void test_value_15() throws IOException {

        String testPath = path + "/tests/value/test_value_15";
        r.createRepairProgram(
                testPath + "/test_value_15_data.ttl",
                testPath + "/test_value_15_shapes.ttl",
                testPath + "/test_value_15_rules.pl");

        String result = r.runProgram(testPath + "/test_value_15_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 4);

        r.writeResult(testPath + "/test_value_15_result.txt", result);
    }

    @Test
    public void test_value_16() throws IOException {

        String testPath = path + "/tests/value/test_value_16";
        r.createRepairProgram(
                testPath + "/test_value_16_data.ttl",
                testPath + "/test_value_16_shapes.ttl",
                testPath + "/test_value_16_rules.pl");

        String result = r.runProgram(testPath + "/test_value_16_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_personShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_name(\"_ann\",\"1204\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_person(\"ANN\"))") == 1);

        r.writeResult(testPath + "/test_value_16_result.txt", result);
    }
}
