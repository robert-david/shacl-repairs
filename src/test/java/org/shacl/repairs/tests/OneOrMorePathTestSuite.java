package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class OneOrMorePathTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void test_oneOrMorePath_01() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_01";

        String sourceFile = testPath + "/test_oneOrMorePath_01_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_01_shapes.ttl",
                testPath + "/test_oneOrMorePath_01_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_01_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 1);
        assertTrue(Pattern.compile("add\\(d_hasParent\\(\"d_Ben\",\"new_[a-z0-9]+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_01_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_02() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_02";

        String sourceFile = testPath + "/test_oneOrMorePath_02_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_02_shapes.ttl",
                testPath + "/test_oneOrMorePath_02_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_02_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Parent(\"d_Mom\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Parent(\"d_Grandfather\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Mom\",\"d_Grandfather\"))") == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_02_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_03() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_03";

        String sourceFile = testPath + "/test_oneOrMorePath_03_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_03_shapes.ttl",
                testPath + "/test_oneOrMorePath_03_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_03_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Ben\",\"d_Mom\"))") == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_03_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_04() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_04";

        String sourceFile = testPath + "/test_oneOrMorePath_04_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_04_shapes.ttl",
                testPath + "/test_oneOrMorePath_04_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_04_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_NotParentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Mom\",d_ParentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Ben\",\"d_Mom\"))") == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_04_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_05() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_05";

        String sourceFile = testPath + "/test_oneOrMorePath_05_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_05_shapes.ttl",
                testPath + "/test_oneOrMorePath_05_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_05_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 1);
        assertTrue(Pattern.compile("del\\(d_hasParent\\(\"d_Ben\",\"bnode_[a-z0-9]+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_05_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_06() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_06";

        String sourceFile = testPath + "/test_oneOrMorePath_06_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_06_shapes.ttl",
                testPath + "/test_oneOrMorePath_06_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_06_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 4);
        assertTrue(Pattern.compile("del\\(d_hasParent\\(\"d_Ben\",\"bnode_[a-z0-9]+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("del\\(d_hasAncestor\\(\"bnode_[a-z0-9]+\",\"bnode_[a-z0-9]+\"\\)\\)").matcher(result).results().count() == 2);
        assertTrue(Pattern.compile("del\\(d_hasFirstAncestor\\(\"bnode_[a-z0-9]+\",\"d_Forefather\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_06_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_07() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_07";

        String sourceFile = testPath + "/test_oneOrMorePath_07_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_07_shapes.ttl",
                testPath + "/test_oneOrMorePath_07_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_07_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Ben\",\"d_a1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Ben\",\"d_b1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasAncestor(\"d_a1\",\"d_a2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasAncestor(\"d_b1\",\"d_b2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasAncestor(\"d_a2\",\"d_Forefather\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_hasAncestor(\"d_b2\",\"d_Foremother\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Ancestor(\"d_a2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(d_Ancestor(\"d_b2\"))") == 2);

        r.writeResult(testPath + "/test_oneOrMorePath_07_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_08() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_08";

        String sourceFile = testPath + "/test_oneOrMorePath_08_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_08_shapes.ttl",
                testPath + "/test_oneOrMorePath_08_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_08_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasAncestor(\"d_a2\",\"d_Forefather\"))") == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_08_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_09() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_09";

        String sourceFile = testPath + "/test_oneOrMorePath_09_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_09_shapes.ttl",
                testPath + "/test_oneOrMorePath_09_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_09_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 2);
        assertTrue(Pattern.compile("add\\(d_hasParent\\(\"d_Ben\",\"new_[a-z0-9]+\"\\)\\)").matcher(result).results().count() == 3);
        assertTrue(Pattern.compile("add\\(d_hasParent\\(\"new_[a-z0-9]+\",\"new_[a-z0-9]+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_09_result.txt", result);
    }

    @Test
    public void test_oneOrMorePath_10() throws IOException {

        String testPath = path + "/tests/oneOrMorePath/test_oneOrMorePath_10";

        String sourceFile = testPath + "/test_oneOrMorePath_10_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_oneOrMorePath_10_shapes.ttl",
                testPath + "/test_oneOrMorePath_10_rules.pl");

        String result = r.runProgram(
                testPath + "/test_oneOrMorePath_10_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 3);
        assertTrue(Pattern.compile("add\\(d_hasParent\\(\"d_Ben\",\"new_[a-z0-9]+\"\\)\\)").matcher(result).results().count() == 3);
        assertTrue(StringUtils.countMatches(result,"add(d_hasParent(\"d_Ben\",\"d_Ancestor\"))") == 2);
        assertTrue(Pattern.compile("add\\(d_hasParent\\(\"new_[a-z0-9]+\",\"d_Ancestor\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_oneOrMorePath_10_result.txt", result);
    }
}
