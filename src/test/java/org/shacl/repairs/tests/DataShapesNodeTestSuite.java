package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.program.RepairProgramRunner;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class DataShapesNodeTestSuite {

    final static String path = PathConfig.path;

    RepairProgramRunner r = new RepairProgramRunner();

    @Test
    public void node_and_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/and-001";
        r.createRepairProgram(
                testPath + "/and-001.ttl",
                testPath + "/and-001.ttl",
                testPath + "/and-001-rules.pl");

        String result = r.runProgram(testPath + "/and-001-rules.pl");

        // assertTrue(result.contains("Models       : 16"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidRectangle1\",ex_Rectangle)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidRectangle1\",ex_Rectangle)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidRectangle2\",ex_Rectangle)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(ex_width(\"ex_InvalidRectangle1\",\"") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_height(\"ex_InvalidRectangle2\",\"") == 1);

        r.writeResult(testPath + "/and-001-result.txt", result);
    }

    @Test
    public void node_and_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/and-002";
        r.createRepairProgram(
                testPath + "/and-002.ttl",
                testPath + "/and-002.ttl",
                testPath + "/and-002-rules.pl");

        String result = r.runProgram(testPath + "/and-002-rules.pl");

        // assertTrue(result.contains("Models       : 10"));
        assertTrue(result.contains("Optimal    : 2"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidInstance1\",ex_AndShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidInstance1\",ex_AndShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidInstance2\",ex_AndShape)") == 2);

        assertTrue(Pattern.compile("add\\(ex_property\\(\"ex_InvalidInstance1\",\"\\d+\"\\)\\)").matcher(result).results().count() == 2);
        assertTrue(StringUtils.countMatches(result,"del(ex_property(\"ex_InvalidInstance2\",\"One\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_property(\"ex_InvalidInstance2\",\"Two\"))") == 1);

        r.writeResult(testPath + "/and-002-result.txt", result);
    }

    @Test
    public void node_class_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/class-001";
        r.createRepairProgram(
                testPath + "/class-001.ttl",
                testPath + "/class-001.ttl",
                testPath + "/class-001-rules.pl");

        String result = r.runProgram(testPath + "/class-001-rules.pl");

        // assertTrue(result.contains("Models       : 5"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Quokki\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_John\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Typeless\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Someone\",ex_TestShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(ex_Person(\"ex_Quokki\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_Person(\"ex_Typeless\"))") == 1);

        r.writeResult(testPath + "/class-001-result.txt", result);
    }

    @Test
    public void node_class_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/class-002";
        r.createRepairProgram(
                testPath + "/class-002.ttl",
                testPath + "/class-002.ttl",
                testPath + "/class-002-rules.pl");

        String result = r.runProgram(testPath + "/class-002-rules.pl");

        // assertTrue(result.contains("Models       : 5") || result.contains("Models       : 6"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_NamedInstance\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"bnode_b9751\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"String\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget") == 4);

        assertTrue(StringUtils.countMatches(result,"add(ex_TestClass(\"bnode_b9751\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_TestClass(\"String\"))") == 1);

        r.writeResult(testPath + "/class-002-result.txt", result);
    }

    @Test
    public void node_class_003() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/class-003";
        r.createRepairProgram(
                testPath + "/class-003.ttl",
                testPath + "/class-003.ttl",
                testPath + "/class-003-rules.pl");

        String result = r.runProgram(testPath + "/class-003-rules.pl");

        // assertTrue(result.contains("Models       : 6"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Quokki\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_John\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Typeless\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Joe\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Quokkip\",ex_TestShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(ex_Animal(\"ex_John\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_Animal(\"ex_Typeless\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_Animal(\"ex_Quokkip\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_Person(\"ex_Quokki\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_Person(\"ex_Typeless\"))") == 1);

        r.writeResult(testPath + "/class-003-result.txt", result);
    }

    @Test
    public void node_hasValue_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/hasValue-001";
        r.createRepairProgram(
                testPath + "/hasValue-001.ttl",
                testPath + "/hasValue-001.ttl",
                testPath + "/hasValue-001-rules.pl");

        String result = r.runProgram(testPath + "/hasValue-001-rules.pl");

        // assertTrue(result.contains("Models       : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"Test\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"Invalid String\",ex_TestShape)") == 1);

        r.writeResult(testPath + "/hasValue-001-result.txt", result);
    }

    @Test
    public void node_in_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/in-001";
        r.createRepairProgram(
                testPath + "/in-001.ttl",
                testPath + "/in-001.ttl",
                testPath + "/in-001-rules.pl");

        String result = r.runProgram(testPath + "/in-001-rules.pl");

        // assertTrue(result.contains("Models       : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Green\",ex_TestShape)") ==1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Red\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Yellow\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"ex_InvalidInstance\",ex_TestShape)") == 1);

        r.writeResult(testPath + "/in-001-result.txt", result);
    }

    @Test
    public void node_node_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/node-001";
        r.createRepairProgram(
                testPath + "/node-001.ttl",
                testPath + "/node-001.ttl",
                testPath + "/node-001-rules.pl");

        String result = r.runProgram(testPath + "/node-001-rules.pl");

        // assertTrue(result.contains("Models       : 4"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidInstance\",ex_TestClass)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidInstance\",ex_TestClass)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(ex_OtherClass(\"ex_InvalidInstance\"))") == 1);

        r.writeResult(testPath + "/node-001-result.txt", result);
    }

    @Test
    public void node_not_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/not-001";
        r.createRepairProgram(
                testPath + "/not-001.ttl",
                testPath + "/not-001.ttl",
                testPath + "/not-001-rules.pl");

        String result = r.runProgram(testPath + "/not-001-rules.pl");

        // assertTrue(result.contains("Models       : 4"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(ex_property(\"ex_InvalidResource1\",\"some value\"))") == 1);

        r.writeResult(testPath + "/not-001-result.txt", result);
    }

    @Test
    public void node_not_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/not-002";
        r.createRepairProgram(
                testPath + "/not-002.ttl",
                testPath + "/not-002.ttl",
                testPath + "/not-002-rules.pl");

        String result = r.runProgram(testPath + "/not-002-rules.pl");

        // assertTrue(result.contains("Models       : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidInstance1\",ex_NotExampleShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidInstance1\",ex_NotExampleShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(ex_property(\"ex_InvalidInstance1\",\"Some value\"))") == 1);

        r.writeResult(testPath + "/not-002-result.txt", result);
    }

    @Test
    public void node_or_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/or-001";
        r.createRepairProgram(
                testPath + "/or-001.ttl",
                testPath + "/or-001.ttl",
                testPath + "/or-001-rules.pl");

        String result = r.runProgram(testPath + "/or-001-rules.pl");

        // assertTrue(result.contains("Models       : 16"));
        assertTrue(result.contains("Optimal    : 4"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidRectangle2\",ex_RectangleWithArea)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidRectangle1\",ex_RectangleWithArea)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidRectangle3\",ex_RectangleWithArea)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidRectangle1\",ex_RectangleWithArea)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidRectangle2\",ex_RectangleWithArea)") == 2);

        assertTrue(StringUtils.countMatches(result,"add(ex_area(\"ex_InvalidRectangle2\",\"") == 2);
        assertTrue(StringUtils.countMatches(result,"add(ex_width(\"ex_InvalidRectangle1\",\"") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_area(\"ex_InvalidRectangle1\",\"") == 1);

        r.writeResult(testPath + "/or-001-result.txt", result);
    }

    @Test
    public void node_xone_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/xone-001";
        r.createRepairProgram(
                testPath + "/xone-001.ttl",
                testPath + "/xone-001.ttl",
                testPath + "/xone-001-rules.pl");

        String result = r.runProgram(testPath + "/xone-001-rules.pl");

        // assertTrue(result.contains("Models       : 19"));
        assertTrue(result.contains("Optimal    : 6"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Carla\",ex_XoneConstraintExampleShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Bob\",ex_XoneConstraintExampleShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Dory\",ex_XoneConstraintExampleShape)") == 3);

        assertTrue(StringUtils.countMatches(result,"del(ex_fullName(\"ex_Dory\",\"Dory Dunce\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_firstName(\"ex_Dory\",\"Dory\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_lastName(\"ex_Dory\",\"Dunce\"))") == 1);

        r.writeResult(testPath + "/xone-001-result.txt", result);
    }
}