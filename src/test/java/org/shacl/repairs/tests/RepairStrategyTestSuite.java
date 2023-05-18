package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class RepairStrategyTestSuite {

    final static String path = PathConfig.path;

    RepairTestRunner r = new RepairTestRunner();

    @Test
    public void test_CCV_CR_2_01() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_CR-2_01";

        r.createRepairProgram(
                testPath + "/test_CCV_CR-2_01_data.ttl",
                testPath + "/test_CCV_CR-2_01_shapes.ttl",
                testPath + "/test_CCV_CR-2_01_rules.pl",
                testPath + "/test_CCV_CR-2_01_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_CR-2_01_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",_mutuallyExclusive)") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasStates(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_statePending\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasStates(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_stateFulfilled\"))") == 4);

        r.writeResult(testPath + "/test_CCV_CR-2_01_result.txt", result);
    }

    @Test
    public void test_CCV_CR_2_02() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_CR-2_02";

        r.createRepairProgram(
                testPath + "/test_CCV_CR-2_02_data.ttl",
                testPath + "/test_CCV_CR-2_02_shapes.ttl",
                testPath + "/test_CCV_CR-2_02_rules.pl",
                testPath + "/test_CCV_CR-2_02_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_CR-2_02_rules.pl");

        assertTrue(result.contains("Models       : 6"));
        assertTrue(result.contains("Optimal    : 4"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",_mutuallyExclusive)") == 4);
        assertTrue(StringUtils.countMatches(result,"add(_hasStates(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_statePending\"))") == 4);
        assertTrue(StringUtils.countMatches(result,"del(_hasStates(\"_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29\",\"_stateUnknown\"))") == 4);

        r.writeResult(testPath + "/test_CCV_CR-2_02_result.txt", result);
    }

    @Test
    public void test_CCV_CR_3_01() throws IOException {

        String testPath = path + "/repair-strategy/tests/test_CCV_CR-3_01";

        r.createRepairProgram(
                testPath + "/test_CCV_CR-3_01_data.ttl",
                testPath + "/test_CCV_CR-3_01_shapes.ttl",
                testPath + "/test_CCV_CR-3_01_rules.pl",
                testPath + "/test_CCV_CR-3_01_repair-strategy.ttl");

        String result = r.runProgram(testPath + "/test_CCV_CR-3_01_rules.pl");

        assertTrue(result.contains("Models       : 13"));
        assertTrue(result.contains("Optimal    : 8"));
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractStatusShape)") == 8);
        assertTrue(StringUtils.countMatches(result,"actualTarget(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",_contractViolationShape)") == 8);
        assertTrue(StringUtils.countMatches(result,"del(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusExpired\"))") == 8);
        assertTrue(StringUtils.countMatches(result,"add(_hasContractStatus(\"_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29\",\"_statusViolated\"))") == 8);

        r.writeResult(testPath + "/test_CCV_CR3_01_result.txt", result);
    }
}
