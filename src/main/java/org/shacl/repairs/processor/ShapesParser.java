package org.shacl.repairs.processor;

import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.Resource;
import org.eclipse.rdf4j.model.Statement;
import org.eclipse.rdf4j.model.Value;
import org.eclipse.rdf4j.model.vocabulary.SHACL;
import org.shacl.repairs.data.RepairData;
import org.shacl.repairs.data.SHACLData;

import java.io.IOException;

import static org.shacl.repairs.processor.Utils.ns;
import static org.shacl.repairs.processor.Utils.nss;

public class ShapesParser {

    public static void collectConstants(
            Model shapesModel,
            SHACLData parserData) throws IOException {

        if (shapesModel.size() == 0) throw new RuntimeException("Shape data is 0");

        for (Statement statement : shapesModel.filter(null, SHACL.HAS_VALUE, null, (Resource) null)) {
            parserData.getConstantsFacts().add("const(\"" + statement.getObject().stringValue() + "\") .\n");
        }
    }

    public static void createTargetRules(
            SHACLData shapesData,
            RepairData repairData) {

        for (Value targetNode : shapesData.getTargetNodes().keySet()) {
            for (Resource nodeShape : shapesData.getTargetNodes().get(targetNode)) {
                repairData.getShapeTargetRules()
                        .add("targetNode(\"" + ns(nss,targetNode) + "\"," + ns(nss,nodeShape) + ") .\n");
            }
        }
    }
}
