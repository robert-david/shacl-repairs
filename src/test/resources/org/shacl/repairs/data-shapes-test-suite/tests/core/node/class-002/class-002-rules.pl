
% Graph Data

ex_TestClass("ex_NamedInstance") .
sh_NodeShape("ex_TestShape") .
sh_class("ex_TestShape","ex_TestClass") .
sh_targetClass("ex_TestShape","ex_BNodeClass") .
sh_targetNode("ex_TestShape","ex_NamedInstance") .
sh_targetNode("ex_TestShape","String") .
xsd_string("String") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hdcdgs0ox2205") .
rdf_first("node1hdcdgs0ox2205","http://repairs.shacl.org/class_002") .
rdf_rest("node1hdcdgs0ox2205","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class_002") .
rdfs_label("http://repairs.shacl.org/class_002","Test of sh:class at node shape 002") .
xsd_string("Test of sh:class at node shape 002") .
mf_action("http://repairs.shacl.org/class_002","node1hdcdgs0ox2206") .
sht_dataGraph("node1hdcdgs0ox2206","http://repairs.shacl.org") .
sht_shapesGraph("node1hdcdgs0ox2206","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class_002","node1hdcdgs0ox2207") .
sh_ValidationReport("node1hdcdgs0ox2207") .
sh_conforms("node1hdcdgs0ox2207","false") .
xsd_boolean("false") .
sh_result("node1hdcdgs0ox2207","node1hdcdgs0ox2208") .
sh_ValidationResult("node1hdcdgs0ox2208") .
sh_focusNode("node1hdcdgs0ox2208","String") .
sh_resultSeverity("node1hdcdgs0ox2208","sh_Violation") .
sh_sourceConstraintComponent("node1hdcdgs0ox2208","sh_ClassConstraintComponent") .
sh_sourceShape("node1hdcdgs0ox2208","ex_TestShape") .
sh_value("node1hdcdgs0ox2208","String") .
sh_result("node1hdcdgs0ox2207","node1hdcdgs0ox2209") .
sh_ValidationResult("node1hdcdgs0ox2209") .
sh_focusNode("node1hdcdgs0ox2209","b9751") .
sh_resultSeverity("node1hdcdgs0ox2209","sh_Violation") .
sh_sourceConstraintComponent("node1hdcdgs0ox2209","sh_ClassConstraintComponent") .
sh_sourceShape("node1hdcdgs0ox2209","ex_TestShape") .
sh_value("node1hdcdgs0ox2209","b9751") .
mf_status("http://repairs.shacl.org/class_002","sht_approved") .
ex_BNodeClass("b9751") .
ex_BNodeClass("node1hdcdgs0ox2210") .
ex_TestClass("node1hdcdgs0ox2210") .

% Shape Targets

targetNode("ex_NamedInstance",ex_TestShape) .
targetNode("b9751",ex_TestShape) .
targetNode("String",ex_TestShape) .
targetNode("node1hdcdgs0ox2210",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_NamedInstance","t*"):-actualTarget("ex_NamedInstance",ex_TestShape) .
ex_TestShape_("b9751","t*"):-actualTarget("b9751",ex_TestShape) .
ex_TestShape_("String","t*"):-actualTarget("String",ex_TestShape) .
ex_TestShape_("node1hdcdgs0ox2210","t*"):-actualTarget("node1hdcdgs0ox2210",ex_TestShape) .

% Annotation Rules

ex_TestClass_(X,"t*"):-ex_TestClass(X) .
ex_TestClass_(X,"t*"):-ex_TestClass_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestClass_(X,"t"):-s0_(X,"t*") .
ex_TestClass_(X,"f"):-s0_(X,"f") .
s1_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestClass_(X,"t"):-s1_(X,"t*") .
ex_TestClass_(X,"f"):-s1_(X,"f") .
s0_(X,"f");s1_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_TestClass_(X,"t**"):-ex_TestClass_(X,"t*"),not ex_TestClass_(X,"f") .

% Program Constraints

:-ex_TestClass_(X,"t"),ex_TestClass_(X,"f") .

% Change Set Rules

add(ex_TestClass(X)):-ex_TestClass_(X,"t**"),not ex_TestClass(X) .
del(ex_TestClass(X)):-ex_TestClass_(X,"f"),ex_TestClass(X) .
% Get all optimal models: --opt-mode=optN -n 100 --quiet=1
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
