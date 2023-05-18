
% Graph Data

ex_TestClass("ex_InvalidInstance") .
rdfs_label("ex_InvalidInstance","Invalid instance") .
xsd_string("Invalid instance") .
rdfs_Class("ex_TestClass") .
sh_NodeShape("ex_TestClass") .
rdfs_label("ex_TestClass","Test class") .
xsd_string("Test class") .
rdfs_Resource(X):-ex_TestClass(X) .
sh_node("ex_TestClass","node1h0oc2cvkx773") .
sh_class("node1h0oc2cvkx773","ex_OtherClass") .
ex_OtherClass("ex_ValidInstance") .
ex_TestClass("ex_ValidInstance") .
rdfs_label("ex_ValidInstance","Valid instance") .
xsd_string("Valid instance") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1h0oc2cvkx774") .
rdf_first("node1h0oc2cvkx774","http://repairs.shacl.org/node_001") .
rdf_rest("node1h0oc2cvkx774","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node_001") .
rdfs_label("http://repairs.shacl.org/node_001","Test of sh:node at node shape 001") .
xsd_string("Test of sh:node at node shape 001") .
mf_action("http://repairs.shacl.org/node_001","node1h0oc2cvkx775") .
sht_dataGraph("node1h0oc2cvkx775","http://repairs.shacl.org") .
sht_shapesGraph("node1h0oc2cvkx775","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node_001","node1h0oc2cvkx776") .
sh_ValidationReport("node1h0oc2cvkx776") .
sh_conforms("node1h0oc2cvkx776","false") .
xsd_boolean("false") .
sh_result("node1h0oc2cvkx776","node1h0oc2cvkx777") .
sh_ValidationResult("node1h0oc2cvkx777") .
sh_focusNode("node1h0oc2cvkx777","ex_InvalidInstance") .
sh_resultSeverity("node1h0oc2cvkx777","sh_Violation") .
sh_sourceConstraintComponent("node1h0oc2cvkx777","sh_NodeConstraintComponent") .
sh_sourceShape("node1h0oc2cvkx777","ex_TestClass") .
sh_value("node1h0oc2cvkx777","ex_InvalidInstance") .
mf_status("http://repairs.shacl.org/node_001","sht_approved") .

% Shape Targets

targetNode("ex_ValidInstance",ex_TestClass) .
targetNode("ex_InvalidInstance",ex_TestClass) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestClass_("ex_ValidInstance","t*"):-actualTarget("ex_ValidInstance",ex_TestClass) .
ex_TestClass_("ex_InvalidInstance","t*"):-actualTarget("ex_InvalidInstance",ex_TestClass) .

% Annotation Rules

ex_OtherClass_(X,"t*"):-ex_OtherClass(X) .
ex_OtherClass_(X,"t*"):-ex_OtherClass_(X,"t") .

% Repair Rules

ex_OtherClass_(X,"t"):-ex_TestClass_(X,"t*") .
ex_OtherClass_(X,"f"):-ex_TestClass_(X,"f") .

% Interpretation Rules

ex_OtherClass_(X,"t**"):-ex_OtherClass_(X,"t*"),not ex_OtherClass_(X,"f") .

% Program Constraints

:-ex_OtherClass_(X,"t"),ex_OtherClass_(X,"f") .

% Change Set Rules

add(ex_OtherClass(X)):-ex_OtherClass_(X,"t**"),not ex_OtherClass(X) .
del(ex_OtherClass(X)):-ex_OtherClass_(X,"f"),ex_OtherClass(X) .
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
