package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class ValueRangeRepairTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_equals_01() throws IOException {

        String testPath = path + "/tests/value_range/test_value_range_01";
        r.createRepairProgram(
                testPath + "/test_value_range_01_data.ttl",
                testPath + "/test_value_range_01_shapes.ttl",
                testPath + "/test_value_range_01_rules.pl");

        String result = r.runProgram(testPath + "/test_value_range_01_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_observation\",d_OutlierShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"1.5\"))") == 1);

        r.writeResult(testPath + "/test_value_range_01_result.txt", result);
    }

    @Test
    public void test_equals_02() throws IOException {

        String testPath = path + "/tests/value_range/test_value_range_02";
        r.createRepairProgram(
                testPath + "/test_value_range_02_data.ttl",
                testPath + "/test_value_range_02_shapes.ttl",
                testPath + "/test_value_range_02_rules.pl");

        String result = r.runProgram(testPath + "/test_value_range_02_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_observation\",d_OutlierShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"2.51\"))") == 1);

        r.writeResult(testPath + "/test_value_range_02_result.txt", result);
    }

    @Test
    public void test_equals_03() throws IOException {

        String testPath = path + "/tests/value_range/test_value_range_03";
        r.createRepairProgram(
                testPath + "/test_value_range_03_data.ttl",
                testPath + "/test_value_range_03_shapes.ttl",
                testPath + "/test_value_range_03_rules.pl");

        String result = r.runProgram(testPath + "/test_value_range_03_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_observation\",d_OutlierShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"1.5\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"2\"))") == 1);

        r.writeResult(testPath + "/test_value_range_03_result.txt", result);
    }

    @Test
    public void test_equals_04() throws IOException {

        String testPath = path + "/tests/value_range/test_value_range_04";
        r.createRepairProgram(
                testPath + "/test_value_range_04_data.ttl",
                testPath + "/test_value_range_04_shapes.ttl",
                testPath + "/test_value_range_04_rules.pl");

        String result = r.runProgram(testPath + "/test_value_range_04_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_observation\",d_OutlierShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"2.51\"))") == 1);

        r.writeResult(testPath + "/test_value_range_04_result.txt", result);
    }

    @Test
    public void test_equals_05() throws IOException {

        String testPath = path + "/tests/value_range/test_value_range_05";
        r.createRepairProgram(
                testPath + "/test_value_range_05_data.ttl",
                testPath + "/test_value_range_05_shapes.ttl",
                testPath + "/test_value_range_05_rules.pl");

        String result = r.runProgram(testPath + "/test_value_range_05_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_observation\",d_OutlierShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"0.7\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasValue(\"d_observation\",\"1.5\"))") == 1);

        r.writeResult(testPath + "/test_value_range_05_result.txt", result);
    }
}