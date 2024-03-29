
% Graph Data

sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
sh_hasValue("ex_TestShape","Test") .
xsd_string("Test") .
sh_targetNode("ex_TestShape","Invalid String") .
xsd_string("Invalid String") .
sh_targetNode("ex_TestShape","Test") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hmcimj6lx48") .
rdf_first("node1hmcimj6lx48","http://repairs.shacl.org/hasValue_001") .
rdf_rest("node1hmcimj6lx48","rdf_nil") .
sht_Validate("http://repairs.shacl.org/hasValue_001") .
rdfs_label("http://repairs.shacl.org/hasValue_001","Test of sh:hasValue at node shape 001") .
xsd_string("Test of sh:hasValue at node shape 001") .
mf_action("http://repairs.shacl.org/hasValue_001","node1hmcimj6lx49") .
sht_dataGraph("node1hmcimj6lx49","http://repairs.shacl.org") .
sht_shapesGraph("node1hmcimj6lx49","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/hasValue_001","node1hmcimj6lx50") .
sh_ValidationReport("node1hmcimj6lx50") .
sh_conforms("node1hmcimj6lx50","false") .
xsd_boolean("false") .
sh_result("node1hmcimj6lx50","node1hmcimj6lx51") .
sh_ValidationResult("node1hmcimj6lx51") .
sh_focusNode("node1hmcimj6lx51","Invalid String") .
sh_resultSeverity("node1hmcimj6lx51","sh_Violation") .
sh_sourceConstraintComponent("node1hmcimj6lx51","sh_HasValueConstraintComponent") .
sh_sourceShape("node1hmcimj6lx51","ex_TestShape") .
mf_status("http://repairs.shacl.org/hasValue_001","sht_approved") .

% Shape Targets

targetNode("Invalid String",ex_TestShape) .
targetNode("Test",ex_TestShape) .

% Constants

const("Test") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("Invalid String","t*"):-actualTarget("Invalid String",ex_TestShape) .
ex_TestShape_("Test","t*"):-actualTarget("Test",ex_TestShape) .

% Annotation Rules


% Repair Rules


% Interpretation Rules


% Program Constraints

:-ex_TestShape_(X,"t*"),X!="Test" .
:-ex_TestShape_(X,"f"),X="Test" .

% Change Set Rules

% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
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
