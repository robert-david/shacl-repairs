package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.eclipse.rdf4j.model.*;
import org.eclipse.rdf4j.model.impl.LinkedHashModel;
import org.eclipse.rdf4j.model.impl.SimpleValueFactory;
import org.eclipse.rdf4j.model.vocabulary.RDF;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.StatementCollector;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.time.Duration;
import java.time.Instant;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.regex.Pattern;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class RepairStrategyTestSuite {

    private final Logger logger = LogManager.getLogger(this.getClass());

    final static String path = PathConfig.path;
    final static String shapes = PathConfig.path + "/strategies/ontology_repair_shapes.ttl";
    final static String shapes_optional = PathConfig.path + "/strategies/ontology_repair_shapes_optional.ttl";
    final static String strategy = PathConfig.path + "/strategies/ontology_repair_strategy.ttl";
    final static String strategy_optional = PathConfig.path + "/strategies/ontology_repair_strategy_optional.ttl";

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_preference_01() throws IOException {

        String testPath = path + "/strategies/test_preference_01";

        r.createRepairProgram(
                testPath + "/test_preference_01_data.ttl",
                shapes,
                testPath + "/test_preference_01_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_01_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 1);

        r.createRepairProgram(
                testPath + "/test_preference_01_data.ttl",
                shapes,
                testPath + "/test_preference_01_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_01_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(owl_ObjectProperty(\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_DatatypeProperty(\"d_p2\"))") == 1);

        r.writeResult(testPath + "/test_preference_01_result.txt", result);
    }

    @Test
    public void test_preference_02() throws IOException {

        String testPath = path + "/strategies/test_preference_02";

        r.createRepairProgram(
                testPath + "/test_preference_02_data.ttl",
                shapes,
                testPath + "/test_preference_02_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_02_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(owl_AnnotationProperty(\"d_p1\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"add(owl_DatatypeProperty(\"d_p1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(owl_DatatypeProperty(\"d_p2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p2\"))") == 2);

        r.createRepairProgram(
                testPath + "/test_preference_02_data.ttl",
                shapes,
                testPath + "/test_preference_02_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_02_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(owl_AnnotationProperty(\"d_p1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_DatatypeProperty(\"d_p1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p2\"))") == 1);

        r.writeResult(testPath + "/test_preference_02_result.txt", result);
    }

    @Test
    public void test_preference_03() throws IOException {

        String testPath = path + "/strategies/test_preference_03";

        r.createRepairProgram(
                testPath + "/test_preference_03_data.ttl",
                shapes,
                testPath + "/test_preference_03_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_03_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_DomainConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_RangeConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p5\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p2\",\"d_B\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p5\",\"d_A\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p4\",\"d_p5\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_domain(\"d_p4\",\"d_A\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 3);

        r.createRepairProgram(
                testPath + "/test_preference_03_data.ttl",
                shapes,
                testPath + "/test_preference_03_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_03_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p5\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p2\",\"d_B\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_domain(\"d_p4\",\"d_A\"))") == 1);

        r.writeResult(testPath + "/test_preference_03_result.txt", result);
    }

    @Test
    public void test_preference_04() throws IOException {

        String testPath = path + "/strategies/test_preference_04";

        r.createRepairProgram(
                testPath + "/test_preference_04_data.ttl",
                shapes,
                testPath + "/test_preference_04_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_04_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p2\",\"d_b1\"))") == 5);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p3\",\"d_b1\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p4\",\"d_B\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p3\",\"d_p4\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"d_b1\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_domain(\"d_p3\",\"d_B\"))") == 1);

        r.createRepairProgram(
                testPath + "/test_preference_04_data.ttl",
                shapes,
                testPath + "/test_preference_04_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_04_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_DomainConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_RangeConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p2\",\"d_b1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p3\",\"d_b1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p4\",\"d_B\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"d_b1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_domain(\"d_p3\",\"d_B\"))") == 1);

        r.writeResult(testPath + "/test_preference_04_result.txt", result);
    }

    @Test
    public void test_preference_05() throws IOException {

        String testPath = path + "/strategies/test_preference_05";

        r.createRepairProgram(
                testPath + "/test_preference_05_data.ttl",
                shapes,
                testPath + "/test_preference_05_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_05_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_DomainConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_RangeConsistencyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p5\",d_PropertyShape)") == 6);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_B\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p5\",\"d_A\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p4\",\"d_p5\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p4\",\"d_A\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 3);

        r.createRepairProgram(
                testPath + "/test_preference_05_data.ttl",
                shapes,
                testPath + "/test_preference_05_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_05_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p5\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_B\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p4\",\"d_A\"))") == 1);

        r.writeResult(testPath + "/test_preference_05_result.txt", result);
    }

    @Test
    public void test_preference_06() throws IOException {

        String testPath = path + "/strategies/test_preference_06";

        r.createRepairProgram(
                testPath + "/test_preference_06_data.ttl",
                shapes,
                testPath + "/test_preference_06_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_06_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 7);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_b1\"))") == 5);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p3\",\"d_b1\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p4\",\"d_B\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p3\",\"d_p4\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"d_b1\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p3\",\"d_B\"))") == 1);

        r.createRepairProgram(
                testPath + "/test_preference_06_data.ttl",
                shapes,
                testPath + "/test_preference_06_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_06_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_DomainConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_RangeConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_B\",d_ClassShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_b1\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p3\",\"d_b1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p4\",\"d_B\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"d_b1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p3\",\"d_B\"))") == 1);

        r.writeResult(testPath + "/test_preference_06_result.txt", result);
    }

    @Test
    public void test_preference_07() throws IOException {

        String testPath = path + "/strategies/test_preference_07";

        r.createRepairProgram(
                testPath + "/test_preference_07_data.ttl",
                shapes,
                testPath + "/test_preference_07_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_07_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p1\",\"xsd_int\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p1\",\"xsd_string\"))") == 3);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_A\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p1\",\"d_A\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 1);

        r.createRepairProgram(
                testPath + "/test_preference_07_data.ttl",
                shapes,
                testPath + "/test_preference_07_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_07_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"d_p1\",\"xsd_int\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p1\",\"xsd_string\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p1\",\"d_A\"))") == 1);

        r.writeResult(testPath + "/test_preference_07_result.txt", result);
    }

    @Test
    public void test_preference_08() throws IOException {

        String testPath = path + "/strategies/test_preference_08";

        r.createRepairProgram(
                testPath + "/test_preference_08_data.ttl",
                shapes,
                testPath + "/test_preference_08_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_08_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 2);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_A\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(owl_AnnotationProperty(\"d_p2\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_DatatypeProperty(\"d_p2\"))") == 1);

        r.createRepairProgram(
                testPath + "/test_preference_08_data.ttl",
                shapes,
                testPath + "/test_preference_08_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_08_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p1\",\"d_A\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(owl_AnnotationProperty(\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(owl_DatatypeProperty(\"d_p1\"))") == 1);

        r.writeResult(testPath + "/test_preference_08_result.txt", result);
    }

    @Test
    public void test_preference_09() throws IOException {

        String testPath = path + "/strategies/test_preference_09";

        r.createRepairProgram(
                testPath + "/test_preference_09_data.ttl",
                shapes,
                testPath + "/test_preference_09_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_09_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 2);

        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_A\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_DatatypeProperty(\"d_p2\"))") == 1);

        r.createRepairProgram(
                testPath + "/test_preference_09_data.ttl",
                shapes,
                testPath + "/test_preference_09_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_09_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p1\",\"d_A\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_ObjectProperty(\"d_p2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(owl_DatatypeProperty(\"d_p1\"))") == 1);

        r.writeResult(testPath + "/test_preference_09_result.txt", result);
    }

    @Test
    public void test_preference_10() throws IOException {

        String testPath = path + "/strategies/test_preference_10";

        r.createRepairProgram(
                testPath + "/test_preference_10_data.ttl",
                shapes,
                testPath + "/test_preference_10_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_10_rules.pl");

//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_DomainConsistencyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_RangeConsistencyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_PropertyShape)") == 10);
//        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 10);
//
//        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p4\",\"xsd_int\"))") == 3);
//        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p1\",\"d_A\"))") == 3);
//        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p3\",\"xsd_int\"))") == 3);
//        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p2\",\"d_A\"))") == 3);
//        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p3\",\"d_p4\"))") == 3);
//        assertTrue(StringUtils.countMatches(result,"del(rdfs_subPropertyOf(\"d_p1\",\"d_p2\"))") == 3);

        r.createRepairProgram(
                testPath + "/test_preference_10_data.ttl",
                shapes,
                testPath + "/test_preference_10_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_10_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_DomainConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p3\",d_RangeConsistencyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p4\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_A\",d_ClassShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p3\",\"xsd_int\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_range(\"d_p1\",\"d_A\"))") == 1);

        r.writeResult(testPath + "/test_preference_10_result.txt", result);
    }

    @Test
    public void test_preference_11() throws IOException {

        String testPath = path + "/strategies/test_preference_11";

        r.createRepairProgram(
                testPath + "/test_preference_11_data.ttl",
                shapes,
                testPath + "/test_preference_11_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_11_rules.pl");

        assertTrue(Pattern.compile("actualTarget\\(\"[a-z0-9_]+\",d_ClassShape\\)").matcher(result).results().count() == 12);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"obo_BFO_0000057\",d_PropertyShape)") == 4);

        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"obo_BFO_0000015\"))") == 2);
        assertTrue(Pattern.compile("del\\(rdfs_range\\(\"obo_BFO_0000057\",\"[a-z0-9_]+\"\\)").matcher(result).results().count() == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_domain(\"obo_BFO_0000057\",\"obo_BFO_0000015\"))") == 2);
        assertTrue(Pattern.compile("del\\(owl_unionOf\\(\"[a-z0-9_]+\",\"[a-z0-9_]+\"\\)").matcher(result).results().count() == 2);

        r.createRepairProgram(
                testPath + "/test_preference_11_data.ttl",
                shapes,
                testPath + "/test_preference_11_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_11_rules.pl");

        assertTrue(Pattern.compile("actualTarget\\(\"[a-z0-9_]+\",d_ClassShape\\)").matcher(result).results().count() == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"obo_BFO_0000057\",d_PropertyShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"obo_BFO_0000015\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"obo_BFO_0000020\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(owl_Class(\"obo_BFO_0000031\"))") == 1);

        r.writeResult(testPath + "/test_preference_11_result.txt", result);
    }

    @Test
    public void test_preference_12() throws IOException {

        String testPath = path + "/strategies/test_preference_12";

        r.createRepairProgram(
                testPath + "/test_preference_12_data.ttl",
                shapes,
                testPath + "/test_preference_12_rules.pl");

        String result = r.runProgram(testPath + "/test_preference_12_rules.pl");

        assertTrue(Pattern.compile("actualTarget\\(\"[a-z0-9_]+\",d_ClassShape\\)").matcher(result).results().count() == 4);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"obo_BFO_0000057\",d_PropertyShape)") == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 2);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_Datatype(\"d_CustomDatatype\"))") == 1);
        assertTrue(Pattern.compile("del\\(rdfs_range\\(\"obo_BFO_0000057\",\"[a-z0-9_]+\"\\)").matcher(result).results().count() == 2);
        assertTrue(StringUtils.countMatches(result,"del(rdfs_range(\"d_p1\",\"d_CustomDatatype\"))") == 1);

        r.createRepairProgram(
                testPath + "/test_preference_12_data.ttl",
                shapes,
                testPath + "/test_preference_12_rules.pl",
                strategy);

        result = r.runProgram(testPath + "/test_preference_12_rules.pl");

        assertTrue(Pattern.compile("actualTarget\\(\"[a-z0-9_]+\",d_ClassShape\\)").matcher(result).results().count() == 2);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"obo_BFO_0000057\",d_PropertyShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_Datatype(\"d_CustomDatatype\"))") == 1);
        assertTrue(Pattern.compile("del\\(rdfs_range\\(\"obo_BFO_0000057\",\"[a-z0-9_]+\"\\)").matcher(result).results().count() == 1);

        r.writeResult(testPath + "/test_preference_12_result.txt", result);
    }

    @Test
    public void test_optional_01() throws IOException {

        String testPath = path + "/strategies/test_optional_01";

        r.createRepairProgram(
                testPath + "/test_optional_01_data.ttl",
                shapes_optional,
                testPath + "/test_optional_01_rules.pl");

        String result = r.runProgram(testPath + "/test_optional_01_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyLabelShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_label(\"d_c2\",\"C2\"))") == 0);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_label(\"d_c1\",\"C1\"))") == 0);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_label(\"d_p1\",\"P1\"))") == 0);

        r.createRepairProgram(
                testPath + "/test_optional_01_data.ttl",
                shapes_optional,
                testPath + "/test_optional_01_rules.pl",
                strategy_optional);

        result = r.runProgram(testPath + "/test_optional_01_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyLabelShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_label(\"d_c2\",\"C2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_label(\"d_c1\",\"C1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_label(\"d_p1\",\"P1\"))") == 1);

        r.writeResult(testPath + "/test_optional_01_result.txt", result);
    }

    @Test
    public void test_optional_02() throws IOException {

        String testPath = path + "/strategies/test_optional_02";

        r.createRepairProgram(
                testPath + "/test_optional_02_data.ttl",
                shapes_optional,
                testPath + "/test_optional_02_rules.pl");

        String result = r.runProgram(testPath + "/test_optional_02_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c3\",d_ClassDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyDescriptionShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_description(\"d_c2\",\"C2\"))") == 0);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_description(\"d_c1\",\"C1\"))") == 0);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_description(\"d_p2\",\"P2\"))") == 0);

        r.createRepairProgram(
                testPath + "/test_optional_02_data.ttl",
                shapes_optional,
                testPath + "/test_optional_02_rules.pl",
                strategy_optional);

        result = r.runProgram(testPath + "/test_optional_02_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c3\",d_ClassDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p1\",d_PropertyDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_p2\",d_PropertyDescriptionShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"add(rdfs_description(\"d_c2\",\"C2\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_description(\"d_c1\",\"C1\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"add(rdfs_description(\"d_p2\",\"P2\"))") == 1);

        r.writeResult(testPath + "/test_optional_02_result.txt", result);
    }

    @Test
    public void test_optional_03() throws IOException {

        String testPath = path + "/strategies/test_optional_03";

        r.createRepairProgram(
                testPath + "/test_optional_03_data.ttl",
                shapes_optional,
                testPath + "/test_optional_03_rules.pl");

        String result = r.runProgram(testPath + "/test_optional_03_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassLabelShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassModificationDateShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassDescriptionShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassLabelShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassModificationDateShape)") == 3);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassDescriptionShape)") == 3);

        assertTrue(StringUtils.countMatches(result,"del(dcterms_modified(\"d_c1\",\"2024_08_08T00:00:02\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(dcterms_modified(\"d_c1\",\"2024_09_08T00:00:00\"))") == 2);
        assertTrue(StringUtils.countMatches(result,"del(dcterms_modified(\"d_c1\",\"2024_09_08T00:00:01\"))") == 2);

        r.createRepairProgram(
                testPath + "/test_optional_03_data.ttl",
                shapes_optional,
                testPath + "/test_optional_03_rules.pl",
                strategy_optional);

        result = r.runProgram(testPath + "/test_optional_03_rules.pl");

        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassModificationDateShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c1\",d_ClassDescriptionShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassLabelShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassModificationDateShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"d_c2\",d_ClassDescriptionShape)") == 1);

        assertTrue(StringUtils.countMatches(result,"del(dcterms_modified(\"d_c1\",\"2024_08_08T00:00:02\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(dcterms_modified(\"d_c1\",\"2024_09_08T00:00:00\"))") == 1);

        r.writeResult(testPath + "/test_optional_03_result.txt", result);
    }
}
