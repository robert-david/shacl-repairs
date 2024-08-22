package org.shacl.repairs.tests;

import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.Statement;
import org.eclipse.rdf4j.model.ValueFactory;
import org.eclipse.rdf4j.model.impl.LinkedHashModel;
import org.eclipse.rdf4j.model.impl.SimpleValueFactory;
import org.eclipse.rdf4j.model.vocabulary.RDF;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.RDFWriter;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.BasicParserSettings;
import org.eclipse.rdf4j.rio.helpers.StatementCollector;
import org.shacl.repairs.data.SHACLData;
import org.shacl.repairs.processor.Utils;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.LinkedHashSet;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class RepairTestRunnerGraphGenerator extends RepairTestRunner {

    private final Logger logger = LogManager.getLogger(this.getClass());

    private final ValueFactory vf = SimpleValueFactory.getInstance();

    Model additions = new LinkedHashModel();
    Model deletions = new LinkedHashModel();

    public RepairTestRunnerGraphGenerator() {
    }

    public String runProgram(String rulesFile, String additionsFile, String deletionsFile) throws IOException {

        Runtime rt = Runtime.getRuntime();
        String[] commands = {"clingo", rulesFile, "--opt-mode=optN", "--quiet=1", "-n", "10000", "-t", "3", "--time-limit=60"};
        Process proc = rt.exec(commands);

        BufferedReader stdInput = new BufferedReader(new
                InputStreamReader(proc.getInputStream()));

        Set<String> reduced = new LinkedHashSet();

        additions.clear();
        deletions.clear();

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
                generateChangeTriples(s1);
                result = s1;
                break;
            }

            if (s1.equals("Solving...")) {
                solutions = true;
            }
        }

        storeRepairedData(additionsFile, deletionsFile);

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

    public void storeRepairedData(String additionsFile, String deletionsFile) throws IOException {

        try (FileOutputStream out = new FileOutputStream(additionsFile)) {
            RDFWriter writer = Rio.createWriter(RDFFormat.TURTLE, out);
            writer.set(BasicParserSettings.PRESERVE_BNODE_IDS, true);
            Rio.write(additions, writer);
        }

        try (FileOutputStream out = new FileOutputStream(deletionsFile)) {
            RDFWriter writer = Rio.createWriter(RDFFormat.TURTLE, out);
            writer.set(BasicParserSettings.PRESERVE_BNODE_IDS, true);
            Rio.write(deletions, writer);
        }
    }

    private void generateChangeTriples(String input) {

        String[] lines = input.split("\\) ");

        for (String line : lines) {
            // workaround for splitting clingo atoms
            line = line + ")";
            if (line.startsWith("add")) {
                line = line.replace("add", "").replaceFirst("\\(", "");
                additions.add(processLine(line));
            } else if (line.startsWith("del")) {
                line = line.replace("del", "").replaceFirst("\\(", "");
                deletions.add(processLine(line));
            }
        }
    }

    private Statement processLine(String line) {

        String subject;
        String predicate = line.substring(0, line.indexOf("("));
        String object;

        String namespace = predicate.substring(0, predicate.indexOf("_"));
        if (!(Utils.getNsURI(Utils.nss, namespace) == null)) {
            predicate = predicate.replace(namespace + "_", "");
            predicate = Utils.getNsURI(Utils.nss, namespace) + predicate;
        }

        if (line.indexOf("\",") == -1) {
            object = predicate;
            predicate = RDF.TYPE.stringValue();

            subject = line.substring(line.indexOf("(\"") + 2, line.indexOf("\")"));
            if (subject.contains("_") && !subject.startsWith("bnode_")) {
                namespace = subject.substring(0, subject.indexOf("_"));
                if (!(Utils.getNsURI(Utils.nss, namespace) == null)) {
                    subject = subject.replace(namespace + "_", "");
                    subject = Utils.getNsURI(Utils.nss, namespace) + subject;
                }
            }
        } else {
            subject = line.substring(line.indexOf("(\"") + 2, line.indexOf("\","));
            if (subject.contains("_") && !subject.startsWith("bnode_")) {
                namespace = subject.substring(0, subject.indexOf("_"));
                if (!(Utils.getNsURI(Utils.nss, namespace) == null)) {
                    subject = subject.replace(namespace + "_", "");
                    subject = Utils.getNsURI(Utils.nss, namespace) + subject;
                }
            }
            object = line.substring(line.indexOf(",\"") + 2, line.indexOf("\")"));
            if (object.contains("_") && !object.startsWith("bnode_")) {
                namespace = object.substring(0, object.indexOf("_"));
                if (!(Utils.getNsURI(Utils.nss, namespace) == null)) {
                    object = object.replace(namespace + "_", "");
                    object = Utils.getNsURI(Utils.nss, namespace) + object;
                }
            }
        }

        return vf.createStatement(
                subject.startsWith("bnode") ?
                        vf.createBNode(subject.replace("bnode_", "")) :
                        vf.createIRI(subject.startsWith("new") ? "http://" + subject : subject),
                vf.createIRI(predicate),
                object.startsWith("http") ?
                        vf.createIRI(object) :
                        object.startsWith("new") ? vf.createIRI("http://" + object) :
                        object.startsWith("bnode") ?
                                vf.createBNode(object.replace("bnode_", "")) :
                                vf.createLiteral(object));
    }

    public void repairDataGraph(String dataFile, String additionsFile, String deletionsFile, String targetFile, boolean addXSD) throws IOException {

        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Model dataModel;
        try (InputStream inputStream = Files.newInputStream(Paths.get(dataFile))) {
            dataModel = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(dataModel));
            rdfParser.parse(inputStream, "");
        }

        Model additions;
        try (InputStream inputStream = Files.newInputStream(Paths.get(additionsFile))) {
            additions = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(additions));
            rdfParser.parse(inputStream, "");
        }

        Model deletions;
        try (InputStream inputStream = Files.newInputStream(Paths.get(deletionsFile))) {
            deletions = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(deletions));
            rdfParser.parse(inputStream, "");
        }

        if (addXSD) {
            Model xsd = new LinkedHashModel();
            try (InputStream inputStream =
                         Files.newInputStream(Paths.get("src/main/resources/org/shacl/repairs/xsd-datatypes.ttl"))) {
                rdfParser.setRDFHandler(new StatementCollector(xsd));
                rdfParser.parse(inputStream, SHACLData.getBaseURI());
                dataModel.addAll(xsd);
            }
        }

        logger.info("Initial data graph size: " + dataModel.size());
        logger.info("Adding " + additions.size() + " triples");
        dataModel.addAll(additions);

        logger.info("Deleting " + deletions.size() + " triples");
        dataModel.removeAll(deletions);

        logger.info("Repaired data graph size: " + dataModel.size());

        try (FileOutputStream out = new FileOutputStream(targetFile)) {
            Rio.write(dataModel, out, RDFFormat.TURTLE);
        }
    }

    public void verifyConformance(String result) {

        assertTrue(StringUtils.countMatches(result,"skipTarget(") == 0);
        assertTrue(StringUtils.countMatches(result,"add(") == 0);
        assertTrue(StringUtils.countMatches(result,"del(") == 0);
    }
}