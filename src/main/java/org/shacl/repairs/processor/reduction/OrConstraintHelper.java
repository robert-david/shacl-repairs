package org.shacl.repairs.processor.reduction;

import org.eclipse.rdf4j.model.IRI;
import org.eclipse.rdf4j.model.Literal;
import org.eclipse.rdf4j.model.Model;
import org.eclipse.rdf4j.model.Resource;
import org.eclipse.rdf4j.sail.shacl.SourceConstraintComponent;
import org.eclipse.rdf4j.sail.shacl.ast.constraintcomponents.ConstraintComponent;
import org.eclipse.rdf4j.sail.shacl.ast.constraintcomponents.LogicalOperatorConstraintComponent;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class OrConstraintHelper extends LogicalOperatorConstraintComponent {

    private List<ConstraintComponent> or = new ArrayList();

    public OrConstraintHelper() {
        super(null);
    }

    public List<ConstraintComponent> getOr() {
        return this.or;
    }

    public void setOr(List<ConstraintComponent> constraintComponents) {
        this.or = constraintComponents;
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
    public List<Literal> getDefaultMessage() {
        return null;
    }

    @Override
    public void toModel(Resource resource, IRI iri, Model model, Set<Resource> set) {

    }
}
