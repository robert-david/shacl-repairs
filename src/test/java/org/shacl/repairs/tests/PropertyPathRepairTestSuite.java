package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class PropertyPathRepairTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void test_property_path_01() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_01";
        r.createRepairProgram(
                testPath + "/test_property_path_01_data.ttl",
                testPath + "/test_property_path_01_shapes.ttl",
                testPath + "/test_property_path_01_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_01_rules.pl");

        //assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"Math 1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn2\",\"Math 2\"))") == 1);

        r.writeResult(testPath + "/test_property_path_01_result.txt", result);
    }

    @Test
    public void test_property_path_02() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_02";
        r.createRepairProgram(
                testPath + "/test_property_path_02_data.ttl",
                testPath + "/test_property_path_02_shapes.ttl",
                testPath + "/test_property_path_02_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_02_rules.pl");

        //assertTrue(result.contains("Models       : 7"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"Math 1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn2\",\"Math 1\"))") == 2);

        r.writeResult(testPath + "/test_property_path_02_result.txt", result);
    }

    @Test
    public void test_property_path_03() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_03";
        r.createRepairProgram(
                testPath + "/test_property_path_03_data.ttl",
                testPath + "/test_property_path_03_shapes.ttl",
                testPath + "/test_property_path_03_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_03_rules.pl");

        //assertTrue(result.contains("Models       : 5"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_StudentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"Math 1\"))") == 1);

        r.writeResult(testPath + "/test_property_path_03_result.txt", result);
    }

    @Test
    public void test_property_path_04() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_04";
        r.createRepairProgram(
                testPath + "/test_property_path_04_data.ttl",
                testPath + "/test_property_path_04_shapes.ttl",
                testPath + "/test_property_path_04_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_04_rules.pl");

        //assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"d_Math1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn2\",\"d_Math2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Course(\"d_Math1\")") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Course(\"d_Math2\")") == 2);

        r.writeResult(testPath + "/test_property_path_04_result.txt", result);
    }

    @Test
    public void test_property_path_05() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_05";
        r.createRepairProgram(
                testPath + "/test_property_path_05_data.ttl",
                testPath + "/test_property_path_05_shapes.ttl",
                testPath + "/test_property_path_05_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_05_rules.pl");

        //assertTrue(result.contains("Models       : 10"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Course(\"d_Math1\")") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Course(\"d_Math2\")") == 1);

        r.writeResult(testPath + "/test_property_path_05_result.txt", result);
    }

    @Test
    public void test_property_path_06() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_06";
        r.createRepairProgram(
                testPath + "/test_property_path_06_data.ttl",
                testPath + "/test_property_path_06_shapes.ttl",
                testPath + "/test_property_path_06_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_06_rules.pl");

        //assertTrue(result.contains("Models       : 8"));
        assertTrue(result.contains("Optimal    : 6"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"d_Math1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn2\",\"d_Math2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_Course(\"d_Math1\")") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_Course(\"d_Math2\")") == 1);

        r.writeResult(testPath + "/test_property_path_06_result.txt", result);
    }

    @Test
    public void test_property_path_07() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_07";
        r.createRepairProgram(
                testPath + "/test_property_path_07_data.ttl",
                testPath + "/test_property_path_07_shapes.ttl",
                testPath + "/test_property_path_07_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_07_rules.pl");

        //assertTrue(result.contains("Models       : 7"));
        assertTrue(result.contains("Optimal    : 5"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_CutShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_ben\",d_CutShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"Math 1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"Math 2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn1\")") == 1);

        r.writeResult(testPath + "/test_property_path_07_result.txt", result);
    }

    @Test
    public void test_property_path_08() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_08";
        r.createRepairProgram(
                testPath + "/test_property_path_08_data.ttl",
                testPath + "/test_property_path_08_shapes.ttl",
                testPath + "/test_property_path_08_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_08_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_enrolledIn\\(\"d_ben\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_p1\\(\"new_\\d+\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_hasId\\(\"new_\\d+\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 2);

        r.writeResult(testPath + "/test_property_path_08_result.txt", result);
    }

    @Test
    public void test_property_path_09() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_09";
        r.createRepairProgram(
                testPath + "/test_property_path_09_data.ttl",
                testPath + "/test_property_path_09_shapes.ttl",
                testPath + "/test_property_path_09_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_09_rules.pl");

        //assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_X\",d_CutShape)") ==1);
        assertTrue(StringUtils.countMatches(result,"del(d_p0(\"d_X\",\"d_bn1\")") == 1);

        r.writeResult(testPath + "/test_property_path_09_result.txt", result);
    }

    @Test
    public void test_property_path_10() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_10";
        r.createRepairProgram(
                testPath + "/test_property_path_10_data.ttl",
                testPath + "/test_property_path_10_shapes.ttl",
                testPath + "/test_property_path_10_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_10_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_hasStudent\\(\"new_\\d+\",\"d_ben\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_10_result.txt", result);
    }

    @Test
    public void test_property_path_11() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_11";
        r.createRepairProgram(
                testPath + "/test_property_path_11_data.ttl",
                testPath + "/test_property_path_11_shapes.ttl",
                testPath + "/test_property_path_11_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_11_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_hasStudent(\"d_bn1\",\"d_ben\")") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasStudent(\"d_bn2\",\"d_ben\")") == 1);

        r.writeResult(testPath + "/test_property_path_11_result.txt", result);
    }

    @Test
    public void test_property_path_12() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_12";
        r.createRepairProgram(
                testPath + "/test_property_path_12_data.ttl",
                testPath + "/test_property_path_12_shapes.ttl",
                testPath + "/test_property_path_12_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_12_rules.pl");

        //assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_c1\")") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_c2\")") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasLecture(\"d_study1\",\"d_c1\")") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasLecture(\"d_study2\",\"d_c2\")") == 1);

        r.writeResult(testPath + "/test_property_path_12_result.txt", result);
    }

    @Test
    public void test_property_path_13() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_13";
        r.createRepairProgram(
                testPath + "/test_property_path_13_data.ttl",
                testPath + "/test_property_path_13_shapes.ttl",
                testPath + "/test_property_path_13_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_13_rules.pl");

        //assertTrue(result.contains("Models       : 5"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_c1\")") == 1);

        r.writeResult(testPath + "/test_property_path_13_result.txt", result);
    }

    @Test
    public void test_property_path_14() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_14";
        r.createRepairProgram(
                testPath + "/test_property_path_14_data.ttl",
                testPath + "/test_property_path_14_shapes.ttl",
                testPath + "/test_property_path_14_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_14_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_enrolledIn\\(\"d_ben\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_hasLecture\\(\"new_\\d+\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 2);

        r.writeResult(testPath + "/test_property_path_14_result.txt", result);
    }

    @Test
    public void test_property_path_15() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_15";
        r.createRepairProgram(
                testPath + "/test_property_path_15_data.ttl",
                testPath + "/test_property_path_15_shapes.ttl",
                testPath + "/test_property_path_15_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_15_rules.pl");

        //assertTrue(result.contains("Models       : 10"));
        assertTrue(result.contains("Optimal    : 8"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_enrolledIn\\(\"d_ben\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_hasId\\(\"new_\\d+\",\"ID\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_15_result.txt", result);
    }

    @Test
    public void test_property_path_16() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_16";
        r.createRepairProgram(
                testPath + "/test_property_path_16_data.ttl",
                testPath + "/test_property_path_16_shapes.ttl",
                testPath + "/test_property_path_16_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_16_rules.pl");

        //assertTrue(result.contains("Models       : 35"));
        assertTrue(result.contains("Optimal    : 32"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn1\")") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn2\")") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn1\",\"Math 1\")") == 3);
        assertTrue(StringUtils.countMatches(result,"del(d_hasId(\"d_bn2\",\"Math 2\")") == 3);
        assertTrue(StringUtils.countMatches(result,"add(d_hasId(\"d_bn1\",\"ID\")") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_hasId(\"d_bn2\",\"ID\")") == 2);

        r.writeResult(testPath + "/test_property_path_16_result.txt", result);
    }

    @Test
    public void test_property_path_17() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_17";
        r.createRepairProgram(
                testPath + "/test_property_path_17_data.ttl",
                testPath + "/test_property_path_17_shapes.ttl",
                testPath + "/test_property_path_17_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_17_rules.pl");

        //assertTrue(result.contains("Models       : 11"));
        assertTrue(result.contains("Optimal    : 8"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_enrolledIn\\(\"d_ben\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_hasLecture\\(\"d_study1\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_17_result.txt", result);
    }

    @Test
    public void test_property_path_18() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_18";
        r.createRepairProgram(
                testPath + "/test_property_path_18_data.ttl",
                testPath + "/test_property_path_18_shapes.ttl",
                testPath + "/test_property_path_18_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_18_rules.pl");

        //assertTrue(result.contains("Models       : 7"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result, "actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_enrolledIn\\(\"d_ben\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_hasId\\(\"new_\\d+\",\"ID\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_property_path_18_result.txt", result);
    }

    @Test
    public void test_property_path_19() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_19";
        r.createRepairProgram(
                testPath + "/test_property_path_19_data.ttl",
                testPath + "/test_property_path_19_shapes.ttl",
                testPath + "/test_property_path_19_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_19_rules.pl");

        //assertTrue(result.contains("Models       : 10"));
        assertTrue(result.contains("Optimal    : 8"));
        assertTrue(StringUtils.countMatches(result, "actualTarget(\"d_ben\",d_StudentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn2\")") == 1);
        assertTrue(StringUtils.countMatches(result, "del(d_hasId(\"d_bn2\",\"ID\")") == 1);

        r.writeResult(testPath + "/test_property_path_19_result.txt", result);
    }

    @Test
    public void test_property_path_20() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_20";
        r.createRepairProgram(
                testPath + "/test_property_path_20_data.ttl",
                testPath + "/test_property_path_20_shapes.ttl",
                testPath + "/test_property_path_20_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_20_rules.pl");

        //assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result, "actualTarget(\"d_ben\",d_StudentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_hasLecture\\(\"new_\\d+\",\"d_course1\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(StringUtils.countMatches(result, "del(d_hasLecture(\"d_study1\",\"d_course1\")") == 1);

        r.writeResult(testPath + "/test_property_path_20_result.txt", result);
    }

    @Test
    public void test_property_path_21() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_21";
        r.createRepairProgram(
                testPath + "/test_property_path_21_data.ttl",
                testPath + "/test_property_path_21_shapes.ttl",
                testPath + "/test_property_path_21_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_21_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(StringUtils.countMatches(result, "actualTarget(\"d_ben\",d_NotStudentShape)") == 1);
        assertTrue(StringUtils.countMatches(result, "del(d_enrolledIn(\"d_ben\",\"d_bn1\"))") == 1);

        r.writeResult(testPath + "/test_property_path_21_result.txt", result);
    }

    @Test
    public void test_property_path_22() throws IOException {

        String testPath = path + "/tests/property_path/test_property_path_22";
        r.createRepairProgram(
                testPath + "/test_property_path_22_data.ttl",
                testPath + "/test_property_path_22_shapes.ttl",
                testPath + "/test_property_path_22_rules.pl");

        String result = r.runProgram(testPath + "/test_property_path_22_rules.pl");

        //assertTrue(result.contains("Models       : 14"));
        assertTrue(result.contains("Optimal    : 12"));
        assertTrue(StringUtils.countMatches(result, "actualTarget(\"d_ben\",d_StudentShape)") == 12);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn1\")") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn2\")") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_enrolledIn(\"d_ben\",\"d_bn3\")") == 4);
        assertTrue(StringUtils.countMatches(result, "del(d_hasId(\"d_bn1\",\"Math 1\")") == 4);
        assertTrue(StringUtils.countMatches(result, "del(d_hasId(\"d_bn2\",\"Math 2\")") == 4);
        assertTrue(StringUtils.countMatches(result, "del(d_hasId(\"d_bn3\",\"Math 3\")") == 4);

        r.writeResult(testPath + "/test_property_path_22_result.txt", result);
    }
}