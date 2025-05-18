package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class DataShapesPathTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void path_complex_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/path/path-complex-002";
        r.createRepairProgram(
                testPath + "/path-complex-002-data.ttl",
                testPath + "/path-complex-002-shapes.ttl",
                testPath + "/path-complex-002-rules.pl");

        String result = r.runProgram(testPath + "/path-complex-002-rules.pl");

        // assertTrue(result.contains("Models       : 5"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_i\",ex_s1)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_i\",ex_s2)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(ex_p(\"ex_j\",\"ex_i\"))") == 1);

        r.writeResult(testPath + "/path-complex-002-result.txt", result);
    }

    @Test
    public void path_inverse_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/path/path-inverse-001";
        r.createRepairProgram(
                testPath + "/path-inverse-001.ttl",
                testPath + "/path-inverse-001.ttl",
                testPath + "/path-inverse-001-rules.pl");

        String result = r.runProgram(testPath + "/path-inverse-001-rules.pl");

        // assertTrue(result.contains("Models       : 11"));
        assertTrue(result.contains("Optimal    : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource2\",ex_TestShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 3);

        assertTrue(StringUtils.countMatches(result,"del(ex_child(\"ex_Parent1\",\"ex_InvalidResource2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_child(\"ex_Parent2\",\"ex_InvalidResource2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_child(\"ex_Parent3\",\"ex_InvalidResource2\"))") == 1);
        assertTrue(Pattern.compile("add\\(ex_child\\(\"new_\\d+\"\\,\"ex_InvalidResource1\"\\)\\)").matcher(result).results().count() == 3);

        r.writeResult(testPath + "/path-inverse-001-result.txt", result);
    }

    @Test
    public void path_sequence_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/path/path-sequence-001";
        r.createRepairProgram(
                testPath + "/path-sequence-001.ttl",
                testPath + "/path-sequence-001.ttl",
                testPath + "/path-sequence-001-rules.pl");

        String result = r.runProgram(testPath + "/path-sequence-001-rules.pl");

        // assertTrue(result.contains("Models       : 20"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource2\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource2\",ex_TestShape)") == 1);

        assertTrue(Pattern.compile("add\\(ex_property1\\(\"ex_InvalidResource2\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(ex_property2\\(\"new_\\d+\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(ex_property2\\(\"ex_Node3\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/path-sequence-001-result.txt", result);
    }

    @Test
    public void path_sequence_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/path/path-sequence-002";
        r.createRepairProgram(
                testPath + "/path-sequence-002.ttl",
                testPath + "/path-sequence-002.ttl",
                testPath + "/path-sequence-002-rules.pl");

        String result = r.runProgram(testPath + "/path-sequence-002-rules.pl");

        // assertTrue(result.contains("Models       : 23"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource2\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource2\",ex_TestShape)") == 1);

        assertTrue(Pattern.compile("add\\(ex_property1\\(\"ex_InvalidResource2\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(ex_property2\\(\"ex_Node3\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(ex_property2\\(\"new_\\d+\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 1);
        assertTrue(Pattern.compile("add\\(ex_property3\\(\"new_\\d+\",\"new_\\d+\"\\)\\)").matcher(result).results().count() == 2);

        r.writeResult(testPath + "/path-sequence-002-result.txt", result);
    }

    @Test
    public void path_strange_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/path/path-strange-001";
        r.createRepairProgram(
                testPath + "/path-strange-001.ttl",
                testPath + "/path-strange-001.ttl",
                testPath + "/path-strange-001-rules.pl");

        String result = r.runProgram(testPath + "/path-strange-001-rules.pl");

        // assertTrue(result.contains("Models       : 9"));
        assertTrue(result.contains("Optimal    : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_i\",ex_s1)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_j\",ex_s1)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ipq\",ex_s1)") == 3);

        assertTrue(StringUtils.countMatches(result,"add(ex_C(\"ex_jpq\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_p(\"ex_j\",\"ex_jp\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_q(\"ex_jp\",\"ex_jpq\"))") == 1);

        r.writeResult(testPath + "/path-strange-001-result.txt", result);
    }

    @Test
    public void path_strange_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/path/path-strange-002";
        r.createRepairProgram(
                testPath + "/path-strange-002.ttl",
                testPath + "/path-strange-002.ttl",
                testPath + "/path-strange-002-rules.pl");

        String result = r.runProgram(testPath + "/path-strange-002-rules.pl");

        // assertTrue(result.contains("Models       : 9"));
        assertTrue(result.contains("Optimal    : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_i\",ex_s1)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_j\",ex_s1)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ipq\",ex_s1)") == 3);

        assertTrue(StringUtils.countMatches(result,"add(ex_C(\"ex_jpq\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_p(\"ex_j\",\"ex_jp\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_q(\"ex_jp\",\"ex_jpq\"))") == 1);

        r.writeResult(testPath + "/path-strange-002-result.txt", result);
    }
}