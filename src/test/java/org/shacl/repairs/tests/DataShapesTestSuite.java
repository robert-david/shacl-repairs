package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class DataShapesTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void node_and_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/and-001";
        r.createRepairProgram(
                testPath + "/and-001.ttl",
                testPath + "/and-001.ttl",
                testPath + "/and-001-rules.pl");

        String result = r.runProgram(testPath + "/and-001-rules.pl");

        //assertTrue(result.contains("Models       : 5"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidRectangle1\",ex_Rectangle)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidRectangle1\",ex_Rectangle)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidRectangle2\",ex_Rectangle)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(ex_width(\"ex_InvalidRectangle1\",\"") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_height(\"ex_InvalidRectangle2\",\"") == 1);

        r.writeResult(testPath + "/and-001-result.txt", result);
    }

    @Test
    public void node_class_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/class-001";
        r.createRepairProgram(
                testPath + "/class-001.ttl",
                testPath + "/class-001.ttl",
                testPath + "/class-001-rules.pl");

        String result = r.runProgram(testPath + "/class-001-rules.pl");

        //assertTrue(result.contains("Models       : 5"));

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

        //assertTrue(result.contains("Models       : 5") || result.contains("Models       : 6"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_NamedInstance\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"b9751\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"String\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget") == 4);

        assertTrue(StringUtils.countMatches(result,"add(ex_TestClass(\"b9751\"))") == 1);
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

        //assertTrue(result.contains("Models       : 6"));

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

        //assertTrue(result.contains("Models       : 3"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"Test\",ex_TestShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(\"Invalid String\",ex_TestShape)") == 1);

        r.writeResult(testPath + "/hasValue-001-result.txt", result);
    }

    @Test
    public void node_node_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/node/node-001";
        r.createRepairProgram(
                testPath + "/node-001.ttl",
                testPath + "/node-001.ttl",
                testPath + "/node-001-rules.pl");

        String result = r.runProgram(testPath + "/node-001-rules.pl");

        //assertTrue(result.contains("Models       : 4"));

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

        //assertTrue(result.contains("Models       : 5"));

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

        //assertTrue(result.contains("Models       : 3"));

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

        //assertTrue(result.contains("Models       : 11"));
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
    public void property_and_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/and-001";
        r.createRepairProgram(
                testPath + "/and-001.ttl",
                testPath + "/and-001.ttl",
                testPath + "/and-001-rules.pl");

        String result = r.runProgram(testPath + "/and-001-rules.pl");

        //assertTrue(result.contains("Models       : 15"));
        assertTrue(result.contains("Optimal    : 9"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_AddressShape)") == 9);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_AddressShape)") == 9);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource3\",ex_AddressShape)") == 9);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource2\",ex_AddressShape)") == 9);

        assertTrue(StringUtils.countMatches(result,"del(ex_address(\"ex_InvalidResource2\",\"b31477\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(ex_address(\"ex_InvalidResource3\",\"b94057\"))") == 9);
        assertTrue(StringUtils.countMatches(result,"add(ex_suburb(\"b61065\",\"") == 6);
        assertTrue(StringUtils.countMatches(result,"add(ex_postalCode(\"b31477\",\"") == 6);
        assertTrue(StringUtils.countMatches(result,"del(ex_address(\"ex_InvalidResource1\",\"b61065\"))") == 3);

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

        //assertTrue(result.contains("Models       : 10"));
        assertTrue(result.contains("Optimal    : 4"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource2\",ex_TestShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidResource1\",ex_TestShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidResource1\",ex_TestShape)") == 4);

        assertTrue(StringUtils.countMatches(result,"del(ex_testProperty(\"ex_InvalidResource1\",\"ex_InvalidResource1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(ex_testProperty(\"ex_InvalidResource1\",\"A string\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(ex_SuperClass(\"ex_InvalidResource1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(ex_SuperClass(\"A string\"))") == 2);

        r.writeResult(testPath + "/class-001-result.txt", result);
    }

    @Test
    public void property_hasValue_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/hasValue-001";
        r.createRepairProgram(
                testPath + "/hasValue-001.ttl",
                testPath + "/hasValue-001.ttl",
                testPath + "/hasValue-001-rules.pl");

        String result = r.runProgram(testPath + "/hasValue-001-rules.pl");

        //assertTrue(result.contains("Models       : 13"));
        assertTrue(result.contains("Optimal    : 9"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_InvalidMalePerson\",ex_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidMalePerson1\",ex_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_ValidMalePerson2\",ex_PersonShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(ex_gender(\"ex_InvalidMalePerson\",\"male\"))") == 1);

        r.writeResult(testPath + "/hasValue-001-result.txt", result);
    }

    @Test
    public void property_maxCount_001() throws IOException {

        String testPath = path + "/data-shapes-test-suite/tests/core/property/maxCount-001";
        r.createRepairProgram(
                testPath + "/maxCount-001.ttl",
                testPath + "/maxCount-001.ttl",
                testPath + "/maxCount-001-rules.pl");

        String result = r.runProgram(testPath + "/maxCount-001-rules.pl");

//        assertTrue(result.contains("Models       : 5"));
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

        //assertTrue(result.contains("Models       : 3"));

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

        //assertTrue(result.contains("Models       : 6"));
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

        //assertTrue(result.contains("Models       : 3"));

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

        //assertTrue(result.contains("Models       : 7"));

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

        //assertTrue(result.contains("Models       : 5"));
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

        //assertTrue(result.contains("Models       : 6"));
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

        // assertTrue(result.contains("Models       : 8"));
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

        //assertTrue(result.contains("Models       : 105+"));
        assertTrue(result.contains("Optimal    : 100"));

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"ex_Observation1\",ex_APGARObservationShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(ex_related(\"ex_Observation1\",\"") == 1);

        r.writeResult(testPath + "//qualifiedValueShape-001-result.txt", result);
    }
}
