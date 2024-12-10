package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.impl.LinkedHashModel;
import org.eclipse.rdf4j.rio.RDFFormat;
import org.eclipse.rdf4j.rio.RDFParser;
import org.eclipse.rdf4j.rio.Rio;
import org.eclipse.rdf4j.rio.helpers.BasicParserSettings;
import org.eclipse.rdf4j.rio.helpers.StatementCollector;
import org.shacl.repairs.data.RepairData;
import org.shacl.repairs.data.SHACLData;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Set;

public class RepairProgram {

    public void createRepairProgram(String dataFile, String shapesFile, String rulesFile) throws IOException {
        createRepairProgram(dataFile, shapesFile, rulesFile, null, true);
    }

    public void createRepairProgram(String dataFile, String shapesFile, String rulesFile, boolean xsd) throws IOException {
        createRepairProgram(dataFile, shapesFile, rulesFile, null, xsd);
    }

    public void createRepairProgram(String dataFile, String shapesFile, String rulesFile, String repairStrategiesFile) throws IOException {
        createRepairProgram(dataFile, shapesFile, rulesFile, repairStrategiesFile, true);
    }

    public void createRepairProgram(String dataFile, String shapesFile, String rulesFile, String repairStrategiesFile, boolean xsd) throws IOException {

        SHACLData.init();
        RepairData.init();

        if (repairStrategiesFile != null) {

            createRepairStrategyRules(repairStrategiesFile);
        }

        try(InputStream inputStream = new FileInputStream(shapesFile)) {
            Utils.nss = Rio.parse(inputStream, SHACLData.getBaseURI(), RDFFormat.TURTLE).getNamespaces();
        }

        RDFParser rdfParser = Rio.createParser(Rio.getParserFormatForFileName(dataFile).get());
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Model dataModel;
        try (InputStream inputStream = Files.newInputStream(Paths.get(dataFile))) {

            dataModel = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(dataModel));
            rdfParser.parse(inputStream, SHACLData.getBaseURI());
        }

        rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        if (xsd) {
            try (InputStream inputStream = RepairProgram.class.getResourceAsStream("xsd-datatypes.ttl")) {

                rdfParser.setRDFHandler(new StatementCollector(dataModel));
                rdfParser.parse(inputStream, SHACLData.getBaseURI());
            }
        }

        Model shapesModel;
        try (InputStream inputStream = Files.newInputStream(Paths.get(shapesFile))) {

            shapesModel = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(shapesModel));
            rdfParser.parse(inputStream, SHACLData.getBaseURI());
        }

        // repair strategies
        if (repairStrategiesFile != null) {
            try (InputStream inputStream = new FileInputStream(repairStrategiesFile)) {
                Utils.nss = Rio.parse(inputStream, SHACLData.getBaseURI(), RDFFormat.TURTLE).getNamespaces();
            }

            rdfParser = Rio.createParser(RDFFormat.TURTLE);
            rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

            Model repairStrategiesModel;
            try (InputStream inputStream = new FileInputStream(repairStrategiesFile)) {

                repairStrategiesModel = new LinkedHashModel();
                rdfParser.setRDFHandler(new StatementCollector(repairStrategiesModel));
                rdfParser.parse(inputStream, SHACLData.getBaseURI());
            }

            RepairStrategyParser.createRepairStrategyRules(repairStrategiesModel, RepairData.get());
        }
        // repair strategies - end

        try (InputStream inputStream = new FileInputStream(shapesFile)) {
            Utils.nss = Rio.parse(inputStream, SHACLData.getBaseURI(), RDFFormat.TURTLE).getNamespaces();
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

            if (RepairData.get().getRepairStrategyRules().size() > 0) {
                writer.write("\n% Repair Strategy Rules\n\n");
                for (String changeSetRule : RepairData.get().getRepairStrategyRules()) {
                    addLine(changeSetRule, lines, writer);
                }
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

            writer.write("\n\n");
            writer.write("#script (lua)\n");
            writer.write("function gt(X,Y)\n");
            writer.write("local x,y = getNumbers(X,Y)\n");
            writer.write("if x==nil or y==nil then return \"nil\" end\n");
            writer.write("if x>y then return \"t\" else return \"f\" end\n");
            writer.write("end\n");

            writer.write("\n");
            writer.write("function lt(X,Y)\n");
            writer.write("local x,y = getNumbers(X,Y)\n");
            writer.write("if x==nil or y==nil then return \"nil\" end\n");
            writer.write("if x<y then return \"t\" else return \"f\" end\n");
            writer.write("end\n");

            writer.write("\n");
            writer.write("function geq(X,Y)\n");
            writer.write("local x,y = getNumbers(X,Y)\n");
            writer.write("if x==nil or y==nil then return \"nil\" end\n");
            writer.write("if x>=y then return \"t\" else return \"f\" end\n");
            writer.write("end\n");

            writer.write("\n");
            writer.write("function leq(X,Y)\n");
            writer.write("local x,y = getNumbers(X,Y)\n");
            writer.write("if x==nil or y==nil then return \"nil\" end\n");
            writer.write("if x<=y then return \"t\" else return \"f\" end\n");
            writer.write("end\n");

            writer.write("\n");
            writer.write("function getNumbers(X,Y)\n");
            writer.write("local x,_ = string.gsub(tostring(X),\"\\\"\",\"\")\n");
            writer.write("local y,_ = string.gsub(tostring(Y),\"\\\"\",\"\")\n");
            writer.write("local xn = tonumber(x)\n");
            writer.write("local yn = tonumber(y)\n");
            writer.write("return xn,yn\n");
            writer.write("end\n");
            writer.write("#end .\n");

//          alternative new function
//
//            writer.write("\n\n");
//            writer.write("#script (lua)\n");
//            writer.write("function new(S, X, E, C)\n");
//            writer.write("local x = tostring(S) .. tostring(X) .. tostring(E) .. tostring(C)\n");
//            writer.write("return enc(x)\n");
//            writer.write("end\n");
//
//            writer.write("local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'");
//            writer.write("function enc(data)");
//            writer.write("return ((data:gsub('.', function(x)");
//            writer.write("local r,b='',x:byte()");
//            writer.write("for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end");
//            writer.write("return r;");
//            writer.write("end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)");
//            writer.write("if (#x < 6) then return '' end!");
//            writer.write("local c=0");
//            writer.write("for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end");
//            writer.write("return b:sub(c+1,c+1)");
//            writer.write("end)..({ '', '==', '=' })[#data%3+1])");
//            writer.write("end");
//
//            writer.write("#end .\n");
        }
    }

    private void addLine(String line, Set<String> lines, Writer writer) throws IOException {
        if ("\n".equals(line) || !lines.contains(line)) {
            lines.add(line);
            writer.write(line);
        }
    }

    private void createRepairStrategyRules(String path) throws IOException {

        try(InputStream inputStream = new FileInputStream(path)) {
            Utils.nss = Rio.parse(inputStream, SHACLData.getBaseURI(), RDFFormat.TURTLE).getNamespaces();
        }

        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        rdfParser.getParserConfig().set(BasicParserSettings.PRESERVE_BNODE_IDS, true);

        Model repairStrategiesModel;
        try (InputStream inputStream = new FileInputStream(path)) {

            repairStrategiesModel = new LinkedHashModel();
            rdfParser.setRDFHandler(new StatementCollector(repairStrategiesModel));
            rdfParser.parse(inputStream, SHACLData.getBaseURI());
        }

        RepairStrategyParser.
                createRepairStrategyRules(
                        repairStrategiesModel,
                        RepairData.get());
    }
}
