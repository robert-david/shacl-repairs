package org.shacl.repairs;

import org.shacl.repairs.processor.RepairProgram;

import java.io.File;
import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {

        if (args.length == 0) {
            System.out.println("Usage: java -jar ./shacl-repairs-1.2.0-SNAPSHOT.jar org.shacl.repairs.Main <dataFile.ttl> <shapesFile.ttl> [repairStrategiesFile.ttl] <clingoFile.pl>");
            System.out.println("The program will read <dataFile.ttl> and <shapesFile.ttl>, create the Clingo repair program from the RDF and write it to <clingoFile.pl>. Optionally, a [repairStrategiesFile.ttl] can be provided.");

        } else if (args.length != 3 && args.length != 4) {
                System.out.println("The number of provided arguments is " + (args.length-1) + ", but should be 3 or 4 (repair strategies).");

        } else {
            String dataFile = args[0];
            String shapesFile = args[1];

            if (!new File(dataFile).exists()) {
                System.out.println("Could not find data file " + dataFile);
            }
            if (!new File(shapesFile).exists()) {
                System.out.println("Could not find shapes file " + dataFile);
            }

            if (args.length == 3) {
                String clingoFile = args[2];

                new RepairProgram().createRepairProgram(
                        dataFile,
                        shapesFile,
                        clingoFile);

                System.out.println("Clingo program created: " + clingoFile);

            } else if (args.length == 4) {
                String repairStrategiesFile = args[2];

                if (!new File(repairStrategiesFile).exists()) {
                    System.out.println("Could not find repair strategies file " + dataFile);
                }

                String clingoFile = args[3];

                new RepairProgram().createRepairProgram(
                        dataFile,
                        shapesFile,
                        clingoFile,
                        repairStrategiesFile);

                System.out.println("Clingo program with repair strategies created: " + clingoFile);
            }
        }
    }
}
