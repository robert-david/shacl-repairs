package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class EqualsRepairTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_equals_01() throws IOException {

        String testPath = path + "/tests/equals/test_equals_01";
        r.createRepairProgram(
                testPath + "/test_equals_01_data.ttl",
                testPath + "/test_equals_01_shapes.ttl",
                testPath + "/test_equals_01_rules.pl");

        String result = r.runProgram(testPath + "/test_equals_01_rules.pl");

        //assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_studentShape)") == 4);

        assertTrue(StringUtils.countMatches(result,"add(_hasCourse(\"_ben\",\"Math 1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"Math 1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(_enrolledIn(\"_ann\",\"Math 2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(_hasCourse(\"_ann\",\"Math 2\"))") == 2);

        r.writeResult(testPath + "/test_equals_01_result.txt", result);
    }

    @Test
    public void test_equals_02() throws IOException {

        String testPath = path + "/tests/equals/test_equals_02";
        r.createRepairProgram(
                testPath + "/test_equals_02_data.ttl",
                testPath + "/test_equals_02_shapes.ttl",
                testPath + "/test_equals_02_rules.pl");

        String result = r.runProgram(testPath + "/test_equals_02_rules.pl");

        //assertTrue(result.contains("Models       : 11"));
        assertTrue(result.contains("Optimal    : 8"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_studentShape)") == 6);

        assertTrue(StringUtils.countMatches(result,"add(_hasCourse(\"_ben\",\"Math 1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_bn1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(_hasId(\"_bn1\",\"Math 1\"))") == 2);

        assertTrue(StringUtils.countMatches(result,"add(_hasId(\"_bn2\",\"Math 2\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_hasCourse(\"_ann\",\"Math 2\"))") == 3);

        r.writeResult(testPath + "/test_equals_02_result.txt", result);
    }

    @Test
    public void test_equals_03() throws IOException {

        String testPath = path + "/tests/equals/test_equals_03";
        r.createRepairProgram(
                testPath + "/test_equals_03_data.ttl",
                testPath + "/test_equals_03_shapes.ttl",
                testPath + "/test_equals_03_rules.pl");

        String result = r.runProgram(testPath + "/test_equals_03_rules.pl");

        //assertTrue(result.contains("Models       : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ann\",_studentShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(_hasCourse(\"_ann\",\"Math 1\"))") == 1);

        r.writeResult(testPath + "/test_equals_03_result.txt", result);
    }

    @Test
    public void test_equals_04() throws IOException {

        String testPath = path + "/tests/equals/test_equals_04";
        r.createRepairProgram(
                testPath + "/test_equals_04_data.ttl",
                testPath + "/test_equals_04_shapes.ttl",
                testPath + "/test_equals_04_rules.pl");

        String result = r.runProgram(testPath + "/test_equals_04_rules.pl");

        //assertTrue(result.contains("Models       : 7"));
        assertTrue(result.contains("Optimal    : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 4);

        assertTrue(Pattern.compile("add\\(_enrolledIn\\(\"_ben\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_n1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasCourse(\"_ben\",\"_n1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_course(\"_n1\"))") == 1);

        r.writeResult(testPath + "/test_equals_04_result.txt", result);
    }

    @Test
    public void test_equals_05() throws IOException {

        String testPath = path + "/tests/equals/test_equals_05";
        r.createRepairProgram(
                testPath + "/test_equals_05_data.ttl",
                testPath + "/test_equals_05_shapes.ttl",
                testPath + "/test_equals_05_rules.pl");

        String result = r.runProgram(testPath + "/test_equals_05_rules.pl");

        //assertTrue(result.contains("Models       : 12"));
        assertTrue(result.contains("Optimal    : 9"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 5);

        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_b1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasId(\"_b1\",\"_n1\"))") == 1);
        assertTrue(Pattern.compile("add\\(_hasId\\(\"_b1\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasCourse(\"_ben\",\"_n1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_course(\"_n1\"))") == 1);

        r.writeResult(testPath + "/test_equals_05_result.txt", result);
    }

    @Test
    public void test_equals_06() throws IOException {

        String testPath = path + "/tests/equals/test_equals_06";
        r.createRepairProgram(
                testPath + "/test_equals_06_data.ttl",
                testPath + "/test_equals_06_shapes.ttl",
                testPath + "/test_equals_06_rules.pl");

        String result = r.runProgram(testPath + "/test_equals_06_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_scheduledCourseShape)") == 1);

        assertTrue(Pattern.compile("add\\(_hasCourse\\(\"_ben\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_equals_06_result.txt", result);
    }
}