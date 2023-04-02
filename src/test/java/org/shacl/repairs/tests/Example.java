package org.shacl.repairs.tests;

import org.junit.jupiter.api.Test;
import org.shacl.repairs.processor.RepairProgram;

import java.io.IOException;

public class Example {

    @Test
    public void run() throws IOException {

        String testPath = "src/test/resources/org/shacl/repairs/tests/";
        String datafile = testPath + "example_data.ttl";
        String shapesFile = testPath + "example_shapes.ttl";
        String clingoFile = testPath + "example_rules.pl";

        new RepairProgram().createRepairProgram(
                datafile,
                shapesFile,
                clingoFile);
    }
}