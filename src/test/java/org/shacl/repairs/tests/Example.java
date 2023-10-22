package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;
import org.shacl.repairs.processor.RepairProgram;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class Example {

    @Test
    public void run() throws IOException {

        String testPath = "src/test/resources/org/shacl/repairs/tests/";
        String datafile = testPath + "example_data.ttl";
        String shapesFile = testPath + "example_shapes.ttl";
        String clingoFile = testPath + "example_rules.pl";

        RepairTestRunner r = new RepairTestRunner();
        r.createRepairProgram(
                datafile,
                shapesFile,
                clingoFile);
        String result = r.runProgram(testPath + "/example_rules.pl");
        r.writeResult(testPath + "/example_result.txt", result);
    }
}