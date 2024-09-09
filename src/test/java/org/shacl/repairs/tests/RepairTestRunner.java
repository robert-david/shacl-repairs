package org.shacl.repairs.tests;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.shacl.repairs.processor.RepairProgram;

import java.io.*;
import java.util.LinkedHashSet;
import java.util.Set;

public class RepairTestRunner extends RepairProgram {

    private final Logger logger = LogManager.getLogger(this.getClass());

    public RepairTestRunner() {
    }

    public String runProgram(String rulesFile) throws IOException {

        Runtime rt = Runtime.getRuntime();
        String[] commands = {"clingo", rulesFile, "--opt-mode=optN", "--quiet=1", "-n", "10000", "-t", "3"};
        Process proc = rt.exec(commands);

        BufferedReader stdInput = new BufferedReader(new
                InputStreamReader(proc.getInputStream()));

        Set<String> reduced = new LinkedHashSet();

        String s;
        String result = "";
        while ((s = stdInput.readLine()) != null) {
            if (!s.startsWith("Answer: ") && !s.startsWith("Optimization: ")) {
                reduced.add(s);
            }
        }

        boolean solutions = false;
        for (String s1 : reduced) {

            if (s1.equals("OPTIMUM FOUND")) {
                solutions = false;
            }

            result += s1;
                result += System.lineSeparator();
                if (solutions) {
                    result += System.lineSeparator();
                }

            if (s1.equals("Solving...")) {
                solutions = true;
            }
        }
        System.out.println(result);
        logger.info(result);
        return result;
    }

    public void writeResult(String filename, String result) throws IOException {

        File file = new File(filename);
        if (!file.exists()) {
            file.createNewFile();
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file.getAbsolutePath()))) {
            writer.write(result);
        }
    }
}