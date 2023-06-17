package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class RepairStrategyTestSuite {

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

        assertTrue(result.contains("Models       : 7"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractStatusShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusPending\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusFulfilled\"))") == 4);

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
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractStatusShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"add(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusPending\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusUnknown\"))") == 4);

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

        assertTrue(result.contains("Models       : 7"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",_obligationStateShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_pendingState\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_fulfilledState\"))") == 4);

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
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",_obligationStateShape)") == 4);
        assertTrue(StringUtils.countMatches(result,"add(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_pendingState\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasState(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_unknownState\"))") == 4);

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

        assertTrue(result.contains("Models       : 17+"));
        assertTrue(result.contains("Optimal    : 10"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractStatusShape)") == 10);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractViolationShape)") == 10);
        assertTrue(StringUtils.countMatches(result,"add(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusViolated\"))") == 10);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusFulfilled\"))") == 10);

        r.writeResult(testPath + "/test_CCV_05_result.txt", result);
    }
}
