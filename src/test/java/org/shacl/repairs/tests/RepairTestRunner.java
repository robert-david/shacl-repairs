package org.shacl.repairs.tests;

import org.shacl.repairs.processor.RepairProgram;

import java.io.*;
import java.util.LinkedHashSet;
import java.util.Set;

public class RepairTestRunner extends RepairProgram {

    public RepairTestRunner() {
    }

    public synchronized String runProgram(String rulesFile) throws IOException {

        Runtime rt = Runtime.getRuntime();
        String[] commands = {"/usr/local/bin/clingo", rulesFile, "--opt-mode=optN", "--quiet=1", "-n", "10"};
        Process proc = rt.exec(commands);

        Set<String> reduced = new LinkedHashSet();
        String result = "";

        try (BufferedReader stdInput = new BufferedReader(new
                        InputStreamReader(proc.getInputStream()))) {
            String s;
            while ((s = stdInput.readLine()) != null) {
                if (!s.startsWith("Answer: ") && !s.startsWith("Optimization: ")) {
                    reduced.add(s);
                }
            }
        }

        int c = 1;
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