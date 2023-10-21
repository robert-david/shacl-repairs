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
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class RepairStrategyTestSuite {

    private final Logger logger = LogManager.getLogger(this.getClass());

    private static final String smashHitCore = "http://ontologies.atb-bremen.de/smashHitCore#";
    private static final String fibo_fnd_agr_ctr = "https://spec.edmcouncil.org/fibo/ontology/FND/Agreements/Contracts/";
    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_CCV_01() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_01";

        r.createRepairProgram(
                testPath + "/test_CCV_01_data.ttl",
                testPath + "/test_CCV_01_shapes.ttl",
                testPath + "/test_CCV_01_rules.pl",
                testPath + "/test_CCV_01_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_01_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractStatusShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusPending\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusFulfilled\"))") == 1);

        r.writeResult(testPath + "/test_CCV_01_result.txt", result);
    }

    @Test
    public void test_CCV_02() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_02";

        r.createRepairProgram(
                testPath + "/test_CCV_02_data.ttl",
                testPath + "/test_CCV_02_shapes.ttl",
                testPath + "/test_CCV_02_rules.pl",
                testPath + "/test_CCV_02_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_02_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractStatusShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusPending\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusUnknown\"))") == 1);

        r.writeResult(testPath + "/test_CCV_02_result.txt", result);
    }

    @Test
    public void test_CCV_03() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_03";

        r.createRepairProgram(
                testPath + "/test_CCV_03_data.ttl",
                testPath + "/test_CCV_03_shapes.ttl",
                testPath + "/test_CCV_03_rules.pl",
                testPath + "/test_CCV_03_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_03_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",_obligationStateShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_pendingState\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_fulfilledState\"))") == 1);

        r.writeResult(testPath + "/test_CCV_03_result.txt", result);
    }

    @Test
    public void test_CCV_04() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_04";

        r.createRepairProgram(
                testPath + "/test_CCV_04_data.ttl",
                testPath + "/test_CCV_04_shapes.ttl",
                testPath + "/test_CCV_04_rules.pl",
                testPath + "/test_CCV_04_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_04_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",_obligationStateShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_pendingState\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_unknownState\"))") == 1);

        r.writeResult(testPath + "/test_CCV_04_result.txt", result);
    }

    @Test
    public void test_CCV_05() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_05";

        r.createRepairProgram(
                testPath + "/test_CCV_05_data.ttl",
                testPath + "/test_CCV_05_shapes.ttl",
                testPath + "/test_CCV_05_rules.pl",
                testPath + "/test_CCV_05_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_05_rules.pl");

        assertTrue(result.contains("Models       : 18+"));
        assertTrue(result.contains("Optimal    : 10"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractStatusShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractViolationShape)") == 1);
        assertTrue(StringUtils.countMatches(result,"add(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusViolated\"))") == 1);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusFulfilled\"))") == 1);

        r.writeResult(testPath + "/test_CCV_05_result.txt", result);
    }

    @Test
    public void test_CCV_06() throws IOException {

        long start = System.currentTimeMillis();

        String testPath = path + "/repair-strategy/tests/test_CCV_06";

        Model model = new LinkedHashModel();
        try (FileInputStream stream = new FileInputStream(testPath + "/smashHit-consistent.rdf")) {
            RDFParser rdfParser = Rio.createParser(RDFFormat.RDFXML);
            rdfParser.setRDFHandler(new StatementCollector(model));
            rdfParser.parse(stream, "");
        }

        Set<Resource> contracts = new HashSet();
        Set<Resource> obligations = new HashSet();

        for (Statement statement : model.getStatements(null, RDF.TYPE,
                SimpleValueFactory.getInstance().createIRI(fibo_fnd_agr_ctr + "Contract"))) {
            contracts.add(statement.getSubject());
        }

        for (Statement statement : model.getStatements(null, RDF.TYPE,
                SimpleValueFactory.getInstance().createIRI(smashHitCore + "Obligation"))) {
            obligations.add(statement.getSubject());
        }

        for (Statement statement : model.getStatements(null,
                SimpleValueFactory.getInstance().createIRI(smashHitCore + "hasObligations"), null)) {
            obligations.add((Resource) statement.getObject());
        }

        int nrOfTests = 10;
        int nrOfAddedStatusAndState = 1;
        Random rng = new Random();

        ValueFactory vf = SimpleValueFactory.getInstance();
        IRI hasContractStatus = vf.createIRI(smashHitCore + "hasContractStatus");
        IRI hasState = vf.createIRI(smashHitCore + "hasState");

        File file = new File(testPath + "/test-runs");
        if (!file.exists()) {
            file.mkdirs();
        }

        for (int i = 0; i < nrOfTests; i++) {

            logger.info("Test run " + i);

            long testStart = System.currentTimeMillis();

            int changes = 0;

            model = new LinkedHashModel();
            try (FileInputStream stream = new FileInputStream(testPath + "/smashHit-consistent.rdf")) {
                RDFParser rdfParser = Rio.createParser(RDFFormat.RDFXML);
                rdfParser.setRDFHandler(new StatementCollector(model));
                rdfParser.parse(stream, "");
            }

            for (Resource contract : contracts) {

                int nrOfAddedStatus = rng.nextInt(nrOfAddedStatusAndState);
                for (int j = 0; j < nrOfAddedStatus; j++) {

                    String status = dispatchContractStatus(rng.nextInt(4));

                    Statement stmt = vf.createStatement(
                            contract,
                            hasContractStatus,
                            vf.createIRI(smashHitCore + status));

                    if (!model.contains(stmt)) {
                        model.add(stmt);
                        changes++;
                    }
                }
            }

            for (Resource obligation : obligations) {

                int nrOfAddedState = rng.nextInt(nrOfAddedStatusAndState);
                for (int j = 0; j < nrOfAddedState; j++) {

                    String state = dispatchState(rng.nextInt(4));

                    Statement stmt = vf.createStatement(
                            obligation,
                            hasState,
                            vf.createIRI(smashHitCore + state));

                    if (!model.contains(stmt)) {
                        model.add(stmt);
                        changes++;
                    }
                }
            }

            try (FileOutputStream out = new FileOutputStream(testPath + "/test-runs/smashHit-inconsistent-" + i + ".ttl")) {
                Rio.write(model, out, RDFFormat.TURTLE);
            }

            r.createRepairProgram(
                    testPath + "/test-runs/smashHit-inconsistent-" + i + ".ttl",
                    testPath + "/test_CCV_06_shapes.ttl",
                    testPath + "/test-runs//test_CCV_06_rules-" + i + ".pl",
                    testPath + "/test_CCV_06_repair-strategy.ttl");

            String result = r.runProgram(testPath + "/test-runs/test_CCV_06_rules-" + i + ".pl");

            logger.info("Added changes " + changes);
            logger.info("actual targets " + StringUtils.countMatches(result, "actualTarget"));
            logger.info("skip targets " + StringUtils.countMatches(result, "skipTarget"));

            assertTrue(StringUtils.countMatches(result, "actualTarget") == (contracts.size() * 2 + obligations.size()));
            assertTrue(StringUtils.countMatches(result, "skipTarget") == 0);

            logger.info("Additions " + StringUtils.countMatches(result, " add("));
            logger.info("Deletions " + StringUtils.countMatches(result, " del("));

            logger.info("Test run " + i + " took " + (System.currentTimeMillis() - testStart) +
                    " ms (" + ((System.currentTimeMillis() - testStart)/1000f) + " sec)");
        }

        logger.info("Test suite with " + nrOfTests + " runs  took " + (System.currentTimeMillis() - start) +
                " ms (" + ((System.currentTimeMillis() - start)/1000f) + " sec)");
    }

    private String dispatchContractStatus(int position) {

        switch (position) {
            case 0:
                return "statusCreated";
            case 1:
                return "statusPending";
            case 2:
                return "statusFulfilled";
            case 3:
                return "statusViolated";
        }
        throw new RuntimeException("Error in rng mapping");
    }

    private String dispatchState(int position) {

        switch (position) {
            case 0:
                return "CreatedState";
            case 1:
                return "PendingState";
            case 2:
                return "FulfilledState";
            case 3:
                return "ViolatedState";
        }
        throw new RuntimeException("Error in rng mapping");
    }
}
