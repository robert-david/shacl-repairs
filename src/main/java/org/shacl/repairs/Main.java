package org.shacl.repairs;

import org.shacl.repairs.processor.RepairProgram;

import java.io.File;
import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {

        if (args.length == 0) {
            System.out.println("Usage: java -jar ./shapes-logic-0.1.jar org.shacl.repairs.Main dataFile.ttl shapesFile.ttl clingoFile.ttl");
            System.out.println("The program will read dataFile.ttl and shapesFile.ttl, transform the RDF into ASP and write the results to clingoFile.ttl");

        } else if (args.length != 4) {
                System.out.println("The number of porvided arguments is " + (args.length-1) + ", but should be 3");
        } else {

            String dataFile = args[1];
            String shapesFile = args[2];
            String clingoFile = args[3];

            if (!new File(dataFile).exists()) {
                System.out.println("Could not find data file " + dataFile);
            }
            if (!new File(shapesFile).exists()) {
                System.out.println("Could not find shapes file " + dataFile);
            }

            new RepairProgram().createRepairProgram(
                    dataFile,
                    shapesFile,
                    clingoFile);

            System.out.println("ASP program created: " + clingoFile);
        }
    }
}
