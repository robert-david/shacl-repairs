package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class ClassRepairTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void test_class_01() throws IOException {

        String testPath = path + "/tests/class/test_class_01";
        r.createRepairProgram(
                testPath + "/test_class_01_data.ttl",
                testPath + "/test_class_01_shapes.ttl",
                testPath + "/test_class_01_rules.pl");

        String result = r.runProgram(testPath + "/test_class_01_rules.pl");
System.out.println(result);
        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Person(\"d_ann\"))") == 1);

        r.writeResult(testPath + "/test_class_01_result.txt", result);
    }

    @Test
    public void test_class_02() throws IOException {

        String testPath = path + "/tests/class/test_class_02";
        r.createRepairProgram(
                testPath + "/test_class_02_data.ttl",
                testPath + "/test_class_02_shapes.ttl",
                testPath + "/test_class_02_rules.pl");

        String result = r.runProgram(testPath + "/test_class_02_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);

        r.writeResult(testPath + "/test_class_02_result.txt", result);
    }

    @Test
    public void test_class_03() throws IOException {

        String testPath = path + "/tests/class/test_class_03";
        r.createRepairProgram(
                testPath + "/test_class_03_data.ttl",
                testPath + "/test_class_03_shapes.ttl",
                testPath + "/test_class_03_rules.pl");

        String result = r.runProgram(testPath + "/test_class_03_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_worksFor\\(\"d_ann\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_Organization\\(\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_class_03_result.txt", result);
    }

    @Test
    public void test_class_04() throws IOException {

        String testPath = path + "/tests/class/test_class_04";
        r.createRepairProgram(
                testPath + "/test_class_04_data.ttl",
                testPath + "/test_class_04_shapes.ttl",
                testPath + "/test_class_04_rules.pl");

        String result = r.runProgram(testPath + "/test_class_04_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_Organization(\"d_company1\"))") == 1);
        assertTrue(Pattern.compile("add\\(d_worksFor\\(\"d_ann\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_class_04_result.txt", result);
    }

    @Test
    public void test_class_05() throws IOException {

        String testPath = path + "/tests/class/test_class_05";
        r.createRepairProgram(
                testPath + "/test_class_05_data.ttl",
                testPath + "/test_class_05_shapes.ttl",
                testPath + "/test_class_05_rules.pl");

        String result = r.runProgram(testPath + "/test_class_05_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Person(\"d_ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Organization(\"d_ann\"))") == 1);

        r.writeResult(testPath + "/test_class_05_result.txt", result);
    }

    @Test
    public void test_class_06() throws IOException {

        String testPath = path + "/tests/class/test_class_06";
        r.createRepairProgram(
                testPath + "/test_class_06_data.ttl",
                testPath + "/test_class_06_shapes.ttl",
                testPath + "/test_class_06_rules.pl");

        String result = r.runProgram(testPath + "/test_class_06_rules.pl");

        //assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_worksFor\\(\"d_ann\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Person(\"d_company1\"))") == 1);
        assertTrue(Pattern.compile("add\\(d_Person\\(\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_Organization\\(\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_class_06_result.txt", result);
    }

    @Test
    public void test_class_07() throws IOException {

        String testPath = path + "/tests/class/test_class_07";
        r.createRepairProgram(
                testPath + "/test_class_07_data.ttl",
                testPath + "/test_class_07_shapes.ttl",
                testPath + "/test_class_07_rules.pl");

        String result = r.runProgram(testPath + "/test_class_07_rules.pl");

        //assertTrue(result.contains("Models       : 4"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Person(\"d_ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Organization(\"d_ann\"))") == 1);

        r.writeResult(testPath + "/test_class_07_result.txt", result);
    }

    @Test
    public void test_class_08() throws IOException {

        String testPath = path + "/tests/class/test_class_08";
        r.createRepairProgram(
                testPath + "/test_class_08_data.ttl",
                testPath + "/test_class_08_shapes.ttl",
                testPath + "/test_class_08_rules.pl");

        String result = r.runProgram(testPath + "/test_class_08_rules.pl");

        //assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 2"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_ann\",d_PersonShape)") == 2);
        assertTrue(Pattern.compile("add\\(d_worksFor\\(\"d_ann\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 2);
        assertTrue(Pattern.compile("add\\(d_Person\\(\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(d_Organization\\(\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_class_08_result.txt", result);
    }
}
