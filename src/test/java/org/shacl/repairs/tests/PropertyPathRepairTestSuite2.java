package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class PropertyPathRepairTestSuite2 {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    // construct property path
    public void test_property_path_2_01() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_01";
        r.createRepairProgram(
                testPath + "/test_property_path_2_01_data.ttl",
                testPath + "/test_property_path_2_01_shapes.ttl",
                testPath + "/test_property_path_2_01_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_01_rules.pl");

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 1);
        assertTrue(Pattern.compile("add\\(_enrolledIn\\(\"_ben\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_hasLecture\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_hasId\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_2_01_result.txt", result);
    }

    @Test
    // construct 2 partial property paths
    public void test_property_path_2_02() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_02";
        r.createRepairProgram(
                testPath + "/test_property_path_2_02_data.ttl",
                testPath + "/test_property_path_2_02_shapes.ttl",
                testPath + "/test_property_path_2_02_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_02_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 1);
        assertTrue(Pattern.compile("add\\(_hasLecture\\(\"_bn1\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_hasId\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 2);

        r.writeResult(testPath + "/test_property_path_2_02_result.txt", result);
    }

    @Test
    // construct no property path, is already there
    public void test_property_path_2_03() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_03";
        r.createRepairProgram(
                testPath + "/test_property_path_2_03_data.ttl",
                testPath + "/test_property_path_2_03_shapes.ttl",
                testPath + "/test_property_path_2_03_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_03_rules.pl");

        assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 1);

        r.writeResult(testPath + "/test_property_path_2_03_result.txt", result);
    }

    @Test
    // for min 2, construct one property path (last property), one is already there
    public void test_property_path_2_04() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_04";
        r.createRepairProgram(
                testPath + "/test_property_path_2_04_data.ttl",
                testPath + "/test_property_path_2_04_shapes.ttl",
                testPath + "/test_property_path_2_04_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_04_rules.pl");

        assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 2);
        assertTrue(Pattern.compile("add\\(_hasId\\(\"_bn2\",\"\\d+\"\\)\\)").matcher(result).results().count() == 2);

        r.writeResult(testPath + "/test_property_path_2_04_result.txt", result);
    }

    @Test
    // construct a property path with an inverse property in the middle
    public void test_property_path_2_05() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_05";
        r.createRepairProgram(
                testPath + "/test_property_path_2_05_data.ttl",
                testPath + "/test_property_path_2_05_shapes.ttl",
                testPath + "/test_property_path_2_05_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_05_rules.pl");

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 1);
        assertTrue(Pattern.compile("add\\(_enrolledIn\\(\"_ben\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_isLectureOf\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_hasId\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_2_05_result.txt", result);
    }

    @Test
    // delete a property path with an inverse property in the middle
    public void test_property_path_2_06() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_06";
        r.createRepairProgram(
                testPath + "/test_property_path_2_06_data.ttl",
                testPath + "/test_property_path_2_06_shapes.ttl",
                testPath + "/test_property_path_2_06_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_06_rules.pl");

        assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_isLectureOf(\"_bn2\",\"_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasId(\"_bn2\",\"Math 1\"))") == 1);

        r.writeResult(testPath + "/test_property_path_2_06_result.txt", result);
    }

    @Test
    // construct a property path with an inverse property in the end
    public void test_property_path_2_07() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_07";
        r.createRepairProgram(
                testPath + "/test_property_path_2_07_data.ttl",
                testPath + "/test_property_path_2_07_shapes.ttl",
                testPath + "/test_property_path_2_07_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_07_rules.pl");

        assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 1);
        assertTrue(Pattern.compile("add\\(_enrolledIn\\(\"_ben\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_hasLecture\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_isIdOf\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_2_07_result.txt", result);
    }

    @Test
    // delete a property path with an inverse property in the end
    public void test_property_path_2_08() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_08";
        r.createRepairProgram(
                testPath + "/test_property_path_2_08_data.ttl",
                testPath + "/test_property_path_2_08_shapes.ttl",
                testPath + "/test_property_path_2_08_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_08_rules.pl");

        assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasLecture(\"_bn1\",\"_bn2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_isIdOf(\"_value\",\"_bn2\"))") == 1);

        r.writeResult(testPath + "/test_property_path_2_08_result.txt", result);
    }

    @Test
    // construct a property path with a specific value
    public void test_property_path_2_09() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_09";
        r.createRepairProgram(
                testPath + "/test_property_path_2_09_data.ttl",
                testPath + "/test_property_path_2_09_shapes.ttl",
                testPath + "/test_property_path_2_09_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_09_rules.pl");

        assertTrue(result.contains("Models       : 29"));
        assertTrue(result.contains("Optimal    : 27"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 3);
        assertTrue(Pattern.compile("add\\(_enrolledIn\\(\"_ben\",\"\\d+\"\\)\\)").matcher(result).results().count() == 3);
        assertTrue(Pattern.compile("add\\(_hasLecture\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 3);
        assertTrue(Pattern.compile("add\\(_hasId\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 3);
        assertTrue(Pattern.compile("add\\(_hasId\\(\"\\d+\",\"Math 1\"\\)\\)").matcher(result).results().count() == 3);

        r.writeResult(testPath + "/test_property_path_2_09_result.txt", result);
    }

    @Test
    // delete a property path with an specific value
    public void test_property_path_2_10() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_10";
        r.createRepairProgram(
                testPath + "/test_property_path_2_10_data.ttl",
                testPath + "/test_property_path_2_10_shapes.ttl",
                testPath + "/test_property_path_2_10_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_10_rules.pl");

        assertTrue(result.contains("Models       : 8"));
        assertTrue(result.contains("Optimal    : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasLecture(\"_bn1\",\"_bn2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasId(\"_bn2\",\"Math 1\"))") == 1);

        r.writeResult(testPath + "/test_property_path_2_10_result.txt", result);
    }

    @Test
    // construct a property path with an inverse property in the end and a specific value
    public void test_property_path_2_11() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_11";
        r.createRepairProgram(
                testPath + "/test_property_path_2_11_data.ttl",
                testPath + "/test_property_path_2_11_shapes.ttl",
                testPath + "/test_property_path_2_11_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_11_rules.pl");

        assertTrue(result.contains("Models       : 10"));
        assertTrue(result.contains("Optimal    : 8"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 1);
        assertTrue(Pattern.compile("add\\(_enrolledIn\\(\"_ben\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_hasLecture\\(\"\\d+\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(_isIdOf\\(\"_value\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_2_11_result.txt", result);
    }

    @Test
    // delete a property path with an inverse property in the middle and a specific value
    public void test_property_path_2_12() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_12";
        r.createRepairProgram(
                testPath + "/test_property_path_2_12_data.ttl",
                testPath + "/test_property_path_2_12_shapes.ttl",
                testPath + "/test_property_path_2_12_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_12_rules.pl");

        assertTrue(result.contains("Models       : 8"));
        assertTrue(result.contains("Optimal    : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_isLectureOf(\"_bn2\",\"_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasId(\"_bn2\",\"Math 1\"))") == 1);

        r.writeResult(testPath + "/test_property_path_2_12_result.txt", result);
    }

    @Test
    // delete a property path with an inverse property in the end and a specific value
    public void test_property_path_2_13() throws IOException {

        String testPath = path + "/tests/property_path_2/test_property_path_2_13";
        r.createRepairProgram(
                testPath + "/test_property_path_2_13_data.ttl",
                testPath + "/test_property_path_2_13_shapes.ttl",
                testPath + "/test_property_path_2_13_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_2_13_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ben\",_studentShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"del(_enrolledIn(\"_ben\",\"_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasLecture(\"_bn1\",\"_bn2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_isIdOf(\"_value1\",\"_bn2\"))") == 1);

        r.writeResult(testPath + "/test_property_path_2_13_result.txt", result);
    }
}