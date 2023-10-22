package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.impl.LinkedHashModel;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.BasicParserSettings;
import org.eclipse.rdf4j.rio.helpers.StatementCollector;
import org.shacl.repairs.data.SHACLData;
import org.shacl.repairs.data.RepairData;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Set;

public class RepairProgram {

    public void createRepairProgram(String dataFile, String shapesFile, String rulesFile) throws IOException {

        SHACLData.init();
        RepairData.init();

        try(InputStream inputStream = Files.newInputStream(Paths.get(shapesFile))) {
            Utils.nss = Rio.parse(inputStream, SHACLData.getBaseURI(), RDFFormat.TURTLE).getNamespaces();
        }

        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Model dataModel;
        try (InputStream inputStream = Files.newInputStream(Paths.get(dataFile))) {

            dataModel = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(dataModel));
            rdfParser.parse(inputStream, SHACLData.getBaseURI());
        }

        rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Model shapesModel;
        try (InputStream inputStream = Files.newInputStream(Paths.get(shapesFile))) {

            shapesModel = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(shapesModel));
            rdfParser.parse(inputStream, SHACLData.getBaseURI());
        }

        ShapesParser.collectConstants(shapesModel, SHACLData.get());
        GraphParser.createGraphFacts(dataModel, SHACLData.get());

        RepairGenerator.processRepairs(dataModel, shapesModel, SHACLData.get(), RepairData.get());
        ShapesParser.createTargetRules(SHACLData.get(), RepairData.get());

        writeRules(rulesFile);
    }

    public void writeRules(String rules) throws IOException {

        Set<String> lines = new HashSet<>();

        File file = new File(rules);
        if (!file.exists()) {
            file.createNewFile();
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file.getAbsolutePath()))) {

            writer.write("\n% Graph Data\n\n");
            for (String dataRule : SHACLData.get().getDataFacts()) {
                addLine(dataRule, lines, writer);
            }

            writer.write("\n% Shape Targets\n\n");
            for (String shapeTargetRule : RepairData.get().getShapeTargetRules()) {
                addLine(shapeTargetRule, lines, writer);
            }

            writer.write("\n% Constants\n\n");
            for (String constant : SHACLData.get().getConstantsFacts()) {
                addLine(constant, lines, writer);
            }

            writer.write("\n% Repair Targets\n\n");
            for (String repairTargetRule : RepairData.get().getRepairTargetRules()) {
                addLine(repairTargetRule, lines, writer);
            }

            writer.write("\n% Annotation Rules\n\n");
            for (String annotationRule : RepairData.get().getAnnotationRules()) {
                addLine(annotationRule, lines, writer);
            }

            writer.write("\n% Repair Rules\n\n");
            for (String repairRule : RepairData.get().getRepairRules()) {
                addLine(repairRule, lines, writer);
            }

            writer.write("\n% Interpretation Rules\n\n");
            for (String interpretationRule : RepairData.get().getInterpretationRules()) {
                addLine(interpretationRule, lines, writer);
            }

            writer.write("\n% Program Constraints\n\n");
            for (String programConstraint : RepairData.get().getProgramConstraints()) {
                addLine(programConstraint, lines, writer);
            }

            writer.write("\n% Change Set Rules\n\n");
            for (String changeSetRule : RepairData.get().getChangeSetRules()) {
                addLine(changeSetRule, lines, writer);
            }

            writer.write("\n% Program Functions\n\n");

            writer.write("#show actualTarget/2 .\n");
            writer.write("#show skipTarget/2 .\n");
            writer.write("#show add/1 .\n");
            writer.write("#show del/1 .\n");

            writer.write("\n\n");
            writer.write("#script (lua)\n");
            writer.write("function new(S, X, E, C)\n");
            writer.write("local x = tostring(S) .. tostring(X) .. tostring(E) .. tostring(C)\n");
            writer.write("local result = 0\n");
            writer.write("for i = 1, string.len(x) do\n");
            writer.write("result = result + string.byte(x,i)\n");
            writer.write("end\n");
            writer.write("return tostring(result)\n");
            writer.write("end\n");
            writer.write("#end .\n");
        }
    }

    private void addLine(String line, Set<String> lines, Writer writer) throws IOException {
        if ("\n".equals(line) || !lines.contains(line)) {
            lines.add(line);
            writer.write(line);
        }
    }
}
