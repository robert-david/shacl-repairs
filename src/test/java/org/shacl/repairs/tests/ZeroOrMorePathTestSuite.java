package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class ZeroOrMorePathTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void test_zeroOrMorePath_01() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_01";

        String sourceFile = testPath + "/test_zeroOrMorePath_01_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_01_shapes.ttl",
                testPath + "/test_zeroOrMorePath_01_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_01_rules.pl");

        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_Ben\",d_ParentShape)") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_01_result.txt", result);
    }

    @Test
    public void test_zeroOrMorePath_02() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_02";

        String sourceFile = testPath + "/test_zeroOrMorePath_02_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_02_shapes.ttl",
                testPath + "/test_zeroOrMorePath_02_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_02_rules.pl");

        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_Ben\",d_ParentShape)") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_02_result.txt", result);
    }

    @Test
    public void test_zeroOrMorePath_03() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_03";

        String sourceFile = testPath + "/test_zeroOrMorePath_03_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_03_shapes.ttl",
                testPath + "/test_zeroOrMorePath_03_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_03_rules.pl");

        assertTrue(StringUtils.countMatches(result,"skipTarget(\"d_Ben\",d_ParentShape)") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_03_result.txt", result);
    }

    @Test
    public void test_zeroOrMorePath_04() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_04";

        String sourceFile = testPath + "/test_zeroOrMorePath_04_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_04_shapes.ttl",
                testPath + "/test_zeroOrMorePath_04_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_04_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Ben\",\"d_Ann\"))") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_04_result.txt", result);
    }

    @Test
    public void test_zeroOrMorePath_05() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_05";

        String sourceFile = testPath + "/test_zeroOrMorePath_05_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_05_shapes.ttl",
                testPath + "/test_zeroOrMorePath_05_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_05_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Ben\",\"d_Ann\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasParent(\"d_Ben\",\"d_Bob\"))") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_05_result.txt", result);
    }

    @Test
    public void test_zeroOrMorePath_06() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_06";

        String sourceFile = testPath + "/test_zeroOrMorePath_06_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_06_shapes.ttl",
                testPath + "/test_zeroOrMorePath_06_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_06_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(d_hasAncestor(\"d_Ben\",\"d_Bob\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(d_Ancestor(\"d_Bob\"))") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_06_result.txt", result);
    }

    @Test
    public void test_zeroOrMorePath_07() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_07";

        String sourceFile = testPath + "/test_zeroOrMorePath_07_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_07_shapes.ttl",
                testPath + "/test_zeroOrMorePath_07_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_07_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_Ben\",d_ParentShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(d_hasSibling(\"d_Ben\",\"d_Ann\"))") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_07_result.txt", result);
    }

    @Test
    public void test_zeroOrMorePath_08() throws IOException {

        String testPath = path + "/tests/zeroOrMorePath/test_zeroOrMorePath_08";

        String sourceFile = testPath + "/test_zeroOrMorePath_08_data.ttl";

        r.createRepairProgram(
                sourceFile,
                testPath + "/test_zeroOrMorePath_08_shapes.ttl",
                testPath + "/test_zeroOrMorePath_08_rules.pl");

        String result = r.runProgram(
                testPath + "/test_zeroOrMorePath_08_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_prop\",d_PropertyRangeShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"d_class\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_prop\",\"d_range\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(owl_unionOf(\"d_range\",\"d_union\"))") == 1);

        r.writeResult(testPath + "/test_zeroOrMorePath_08_result.txt", result);
    }
}
