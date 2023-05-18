
% Graph Data

ex_MalePerson("ex_John") .
rdfs_Class("ex_MalePerson") .
ex_Person(X):-ex_MalePerson(X) .
rdfs_Class("ex_Person") .
rdfs_Resource(X):-ex_Person(X) .
ex_Animal("ex_Quokki") .
ex_Person("ex_Someone") .
sh_NodeShape("ex_TestShape") .
sh_class("ex_TestShape","ex_Person") .
sh_targetNode("ex_TestShape","ex_John") .
sh_targetNode("ex_TestShape","ex_Quokki") .
sh_targetNode("ex_TestShape","ex_Someone") .
sh_targetNode("ex_TestShape","ex_Typeless") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1h0oc2cvkx893") .
rdf_first("node1h0oc2cvkx893","http://repairs.shacl.org/class_001") .
rdf_rest("node1h0oc2cvkx893","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class_001") .
rdfs_label("http://repairs.shacl.org/class_001","Test of sh:class at node shape 001") .
xsd_string("Test of sh:class at node shape 001") .
mf_action("http://repairs.shacl.org/class_001","node1h0oc2cvkx894") .
sht_dataGraph("node1h0oc2cvkx894","http://repairs.shacl.org") .
sht_shapesGraph("node1h0oc2cvkx894","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class_001","node1h0oc2cvkx895") .
sh_ValidationReport("node1h0oc2cvkx895") .
sh_conforms("node1h0oc2cvkx895","false") .
xsd_boolean("false") .
sh_result("node1h0oc2cvkx895","node1h0oc2cvkx896") .
sh_ValidationResult("node1h0oc2cvkx896") .
sh_focusNode("node1h0oc2cvkx896","ex_Quokki") .
sh_resultSeverity("node1h0oc2cvkx896","sh_Violation") .
sh_sourceConstraintComponent("node1h0oc2cvkx896","sh_ClassConstraintComponent") .
sh_sourceShape("node1h0oc2cvkx896","ex_TestShape") .
sh_value("node1h0oc2cvkx896","ex_Quokki") .
sh_result("node1h0oc2cvkx895","node1h0oc2cvkx897") .
sh_ValidationResult("node1h0oc2cvkx897") .
sh_focusNode("node1h0oc2cvkx897","ex_Typeless") .
sh_resultSeverity("node1h0oc2cvkx897","sh_Violation") .
sh_sourceConstraintComponent("node1h0oc2cvkx897","sh_ClassConstraintComponent") .
sh_sourceShape("node1h0oc2cvkx897","ex_TestShape") .
sh_value("node1h0oc2cvkx897","ex_Typeless") .
mf_status("http://repairs.shacl.org/class_001","sht_approved") .

% Shape Targets

targetNode("ex_Quokki",ex_TestShape) .
targetNode("ex_John",ex_TestShape) .
targetNode("ex_Typeless",ex_TestShape) .
targetNode("ex_Someone",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_Quokki","t*"):-actualTarget("ex_Quokki",ex_TestShape) .
ex_TestShape_("ex_John","t*"):-actualTarget("ex_John",ex_TestShape) .
ex_TestShape_("ex_Typeless","t*"):-actualTarget("ex_Typeless",ex_TestShape) .
ex_TestShape_("ex_Someone","t*"):-actualTarget("ex_Someone",ex_TestShape) .

% Annotation Rules

ex_Person_(X,"t*"):-ex_Person(X) .
ex_Person_(X,"t*"):-ex_Person_(X,"t") .

% Repair Rules

ex_Person_(X,"t"):-ex_TestShape_(X,"t*") .
ex_Person_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_Person_(X,"t**"):-ex_Person_(X,"t*"),not ex_Person_(X,"f") .

% Program Constraints

:-ex_Person_(X,"t"),ex_Person_(X,"f") .

% Change Set Rules

add(ex_Person(X)):-ex_Person_(X,"t**"),not ex_Person(X) .
del(ex_Person(X)):-ex_Person_(X,"f"),ex_Person(X) .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Program Functions

#show actualTarget/2 .
#show skipTarget/2 .
#show add/1 .
#show del/1 .


#script (lua)
function new(S, X, E, C)
local x = tostring(S) .. tostring(X) .. tostring(E) .. tostring(C)
local result = 0
for i = 1, string.len(x) do
result = result + string.byte(x,i)
end
return tostring(result)
end
#end .
