package org.shacl.repairs.processor.reduction;

import org.eclipse.rdf4j.model.IRI;
import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.Resource;
import org.eclipse.rdf4j.sail.shacl.SourceConstraintComponent;
import org.eclipse.rdf4j.sail.shacl.ast.Shape;
import org.eclipse.rdf4j.sail.shacl.ast.constraintcomponents.ConstraintComponent;
import org.eclipse.rdf4j.sail.shacl.ast.constraintcomponents.LogicalOperatorConstraintComponent;
import org.eclipse.rdf4j.sail.shacl.ast.constraintcomponents.NotConstraintComponent;

import java.util.Set;

public class NotConstraintHelper extends LogicalOperatorConstraintComponent {

    private ConstraintComponent not;

    public NotConstraintHelper(ConstraintComponent not) {
        super(null);
        this.not = not;
    }

    public ConstraintComponent getNot() {
        return not;
    }

    public void setNot(ConstraintComponent not) {
        this.not = not;
    };

    @Override
    public SourceConstraintComponent getConstraintComponent() {
        return null;
    }

    @Override
    public ConstraintComponent deepClone() {
        return null;
    }

    @Override
    public void toModel(Resource resource, IRI iri, Model model, Set<Resource> set) {

    }
}
