package org.shacl.repairs.tests;

import org.shacl.repairs.processor.RepairProgram;

import java.io.*;

public class RepairTestRunner extends RepairProgram {

    public RepairTestRunner() {
    }

    public String runProgram(String rulesFile) throws IOException {

        Runtime rt = Runtime.getRuntime();
        String[] commands = {"/usr/local/bin/clingo", rulesFile, "--opt-mode=optN", "--quiet=1", "-n", "10"};
        Process proc = rt.exec(commands);

        BufferedReader stdInput = new BufferedReader(new
                InputStreamReader(proc.getInputStream()));

        String s;
        String result = "";
        while ((s = stdInput.readLine()) != null) {
            result += s;
            result += System.lineSeparator();
            System.out.println(s);
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