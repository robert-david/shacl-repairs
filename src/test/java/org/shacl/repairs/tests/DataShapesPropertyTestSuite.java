package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class DataShapesPropertyTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void property_and_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/and-001";
        r.createRepairProgram(
                testPath + "/and-001.ttl",
                testPath + "/and-001.ttl",
                testPath + "/and-001-rules.pl");

        String result = r.runProgram(testPath + "/and-001-rules.pl");

        // assertTrue(result.contains("Models       : 15"));
        assertTrue(result.contains("Optimal    : 9"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_AddressShape)") == 9);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_AddressShape)") == 9);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource3\",ex_AddressShape)") == 9);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource2\",ex_AddressShape)") == 9);

        assertTrue(StringUtils.countMatches(result,"del(ex_address(\"ex_InvalidResource2\",\"bnode_b31477\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(ex_address(\"ex_InvalidResource3\",\"bnode_b94057\"))") == 9);
        assertTrue(StringUtils.countMatches(result,"add(ex_suburb(\"bnode_b61065\",\"") == 6);
        assertTrue(StringUtils.countMatches(result,"add(ex_postalCode(\"bnode_b31477\",\"") == 6);
        assertTrue(StringUtils.countMatches(result,"del(ex_address(\"ex_InvalidResource1\",\"bnode_b61065\"))") == 3);

        r.writeResult(testPath + "/and-001-result.txt", result);
    }

    @Test
    public void property_class_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/class-001";
        r.createRepairProgram(
                testPath + "/class-001.ttl",
                testPath + "/class-001.ttl",
                testPath + "/class-001-rules.pl");

        String result = r.runProgram(testPath + "/class-001-rules.pl");

        // assertTrue(result.contains("Models       : 14"));
        assertTrue(result.contains("Optimal    : 16"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource2\",ex_TestShape)") == 16);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 16);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 16);

        assertTrue(StringUtils.countMatches(result,"del(ex_testProperty(\"ex_InvalidResource1\",\"ex_InvalidResource1\"))") == 8);
        assertTrue(StringUtils.countMatches(result,"del(ex_testProperty(\"ex_InvalidResource1\",\"A string\"))") == 8);
        assertTrue(StringUtils.countMatches(result,"add(ex_SuperClass(\"ex_InvalidResource1\"))") == 8);
        assertTrue(StringUtils.countMatches(result,"add(ex_SuperClass(\"A string\"))") == 8);

        r.writeResult(testPath + "/class-001-result.txt", result);
    }

    @Test
    public void property_equals_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/equals-001";
        r.createRepairProgram(
                testPath + "/equals-001.ttl",
                testPath + "/equals-001.ttl",
                testPath + "/equals-001-rules.pl");

        String result = r.runProgram(testPath + "/equals-001-rules.pl");

        // assertTrue(result.contains("Models       : 14"));
        assertTrue(result.contains("Optimal    : 32"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 32);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource2\",ex_TestShape)") == 32);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 32);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource2\",ex_TestShape)") == 32);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource3\",ex_TestShape)") == 32);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource4\",ex_TestShape)") == 32);

        assertTrue(StringUtils.countMatches(result,"add(ex_property1(\"ex_InvalidResource1\",\"B\"))") == 16);
        assertTrue(StringUtils.countMatches(result,"add(ex_property1(\"ex_InvalidResource3\",\"A\"))") == 16);
        assertTrue(StringUtils.countMatches(result,"add(ex_property2(\"ex_InvalidResource1\",\"A\"))") == 16);
        assertTrue(StringUtils.countMatches(result,"add(ex_property2(\"ex_InvalidResource2\",\"A\"))") == 16);
        assertTrue(StringUtils.countMatches(result,"add(ex_property2(\"ex_InvalidResource4\",\"B\"))") == 16);

        r.writeResult(testPath + "/equals-001-result.txt", result);
    }

    @Test
    public void property_hasValue_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/hasValue-001";
        r.createRepairProgram(
                testPath + "/hasValue-001.ttl",
                testPath + "/hasValue-001.ttl",
                testPath + "/hasValue-001-rules.pl");

        String result = r.runProgram(testPath + "/hasValue-001-rules.pl");

        // assertTrue(result.contains("Models       : 18"));
        assertTrue(result.contains("Optimal    : 9"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidMalePerson\",ex_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidMalePerson1\",ex_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidMalePerson2\",ex_PersonShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(ex_gender(\"ex_InvalidMalePerson\",\"male\"))") == 1);

        r.writeResult(testPath + "/hasValue-001-result.txt", result);
    }

    @Test
    public void property_in_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/in-001";
        r.createRepairProgram(
                testPath + "/in-001.ttl",
                testPath + "/in-001.ttl",
                testPath + "/in-001-rules.pl");

        String result = r.runProgram(testPath + "/in-001-rules.pl");

        // assertTrue(result.contains("Models       : 30+"));
        assertTrue(result.contains("Optimal    : 64"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidInstance1\",ex_ShapeClass)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidInstance2\",ex_ShapeClass)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidInstance1\",ex_ShapeClass)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(ex_property(\"ex_InvalidInstance1\",\"D\"))") == 1);

        r.writeResult(testPath + "/in-001-result.txt", result);
    }

    @Test
    public void property_maxCount_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/maxCount-001";
        r.createRepairProgram(
                testPath + "/maxCount-001.ttl",
                testPath + "/maxCount-001.ttl",
                testPath + "/maxCount-001-rules.pl");

        String result = r.runProgram(testPath + "/maxCount-001-rules.pl");

        // assertTrue(result.contains("Models       : 5"));
        assertTrue(result.contains("Optimal    : 2"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidPerson\",ex_PersonShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource\",ex_PersonShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"del(ex_firstName(\"ex_InvalidPerson\",\"George\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_firstName(\"ex_InvalidPerson\",\"John\"))") == 1);

        r.writeResult(testPath + "/maxCount-001-result.txt", result);
    }

    @Test
    public void property_maxCount_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/maxCount-002";
        r.createRepairProgram(
                testPath + "/maxCount-002.ttl",
                testPath + "/maxCount-002.ttl",
                testPath + "/maxCount-002-rules.pl");

        String result = r.runProgram(testPath + "/maxCount-002-rules.pl");

        // assertTrue(result.contains("Models       : 3"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(owl_versionInfo(\"ex_InvalidResource\",\"1.0\"))") == 1);

        r.writeResult(testPath + "/maxCount-002-result.txt", result);
    }

    @Test
    public void property_minCount_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/minCount-001";
        r.createRepairProgram(
                testPath + "/minCount-001.ttl",
                testPath + "/minCount-001.ttl",
                testPath + "/minCount-001-rules.pl");

        String result = r.runProgram(testPath + "/minCount-001-rules.pl");

        // assertTrue(result.contains("Models       : 9"));
        assertTrue(result.contains("Optimal    : 2"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidPerson\",ex_PersonShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource\",ex_PersonShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"add(ex_firstName(\"ex_InvalidPerson\",\"") == 2);

        r.writeResult(testPath + "/minCount-001-result.txt", result);
    }

    @Test
    public void property_minCount_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/minCount-002";
        r.createRepairProgram(
                testPath + "/minCount-002.ttl",
                testPath + "/minCount-002.ttl",
                testPath + "/minCount-002-rules.pl");

        String result = r.runProgram(testPath + "/minCount-002-rules.pl");

        // assertTrue(result.contains("Models       : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 1);

        r.writeResult(testPath + "/minCount-002-result.txt", result);
    }

    @Test
    public void property_node_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/node-001";
        r.createRepairProgram(
                testPath + "/node-001.ttl",
                testPath + "/node-001.ttl",
                testPath + "/node-001-rules.pl");

        String result = r.runProgram(testPath + "/node-001-rules.pl");

        // assertTrue(result.contains("Models       : 10"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Anon\",ex_Person)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Issue_1\",ex_Issue)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_JohnDoeWithEmail\",ex_Person)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Issue_2\",ex_Issue)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_assignedTo(\"ex_Issue_1\",\"ex_Anon\"))") == 1);

        r.writeResult(testPath + "/node-001-result.txt", result);
    }

    @Test
    public void property_node_002() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/node-002";
        r.createRepairProgram(
                testPath + "/node-002.ttl",
                testPath + "/node-002.ttl",
                testPath + "/node-002-rules.pl");

        String result = r.runProgram(testPath + "/node-002-rules.pl");

        // assertTrue(result.contains("Models       : 9"));
        assertTrue(result.contains("Optimal    : 2"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Bob\",ex_PersonShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Reto\",ex_PersonShape)") == 2);

        assertTrue(StringUtils.countMatches(result,"add(xsd_string(\"5678\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_postalCode(\"ex_RetosAddress\",\"5678\"))") == 1);

        r.writeResult(testPath + "/node-002-result.txt", result);
    }

    @Test
    public void property_not_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/not-001";
        r.createRepairProgram(
                testPath + "/not-001.ttl",
                testPath + "/not-001.ttl",
                testPath + "/not-001-rules.pl");

        String result = r.runProgram(testPath + "/not-001-rules.pl");

        // assertTrue(result.contains("Models       : 11"));
        assertTrue(result.contains("Optimal    : 2"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource2\",ex_TestShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 2);

        assertTrue(StringUtils.countMatches(result,"del(xsd_integer(\"42\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(ex_property(\"ex_InvalidResource1\",\"42\"))") == 1);

        r.writeResult(testPath + "/not-001-result.txt", result);
    }

    @Test
    public void property_or_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/or-001";
        r.createRepairProgram(
                testPath + "/or-001.ttl",
                testPath + "/or-001.ttl",
                testPath + "/or-001-rules.pl");

        String result = r.runProgram(testPath + "/or-001-rules.pl");

        assertTrue(result.contains("Optimal    : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_AddressShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_AddressShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource2\",ex_AddressShape)") == 3);

        assertTrue(StringUtils.countMatches(result,"del(ex_address(\"ex_InvalidResource1\",\"true\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(xsd_string(\"true\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_Address(\"true\"))") == 1);

        r.writeResult(testPath + "/or-001-result.txt", result);
    }

    @Test
    public void property_qualifiedValueShape_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/qualifiedValueShape-001";
        r.createRepairProgram(
                testPath + "/qualifiedValueShape-001.ttl",
                testPath + "/qualifiedValueShape-001.ttl",
                testPath + "/qualifiedValueShape-001-rules.pl");

        String result = r.runProgram(testPath + "/qualifiedValueShape-001-rules.pl");

        //assertTrue(result.contains("Models       : 39+"));
        assertTrue(result.contains("Optimal    : 100"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Observation1\",ex_APGARObservationShape)") == 1);

        assertTrue(Pattern.compile("add\\(ex_related\\(\"ex_Observation1\",\"\\d+\"\\)\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "//qualifiedValueShape-001-result.txt", result);
    }
}