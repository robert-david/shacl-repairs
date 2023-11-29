
% Graph Data

ex_MalePerson("ex_John") .
ex_MalePerson("ex_Joe") .
ex_Animal("ex_Joe") .
rdfs_Class("ex_MalePerson") .
ex_Person(X):-ex_MalePerson(X) .
rdfs_Class("ex_Person") .
rdfs_Resource(X):-ex_Person(X) .
ex_Animal("ex_Quokki") .
ex_Person("ex_Quokkip") .
ex_Person("ex_Someone") .
ex_Animal("ex_Someone") .
sh_NodeShape("ex_TestShape") .
sh_class("ex_TestShape","ex_Person") .
sh_class("ex_TestShape","ex_Animal") .
sh_targetClass("ex_TestShape","ex_MalePerson") .
sh_targetNode("ex_TestShape","ex_John") .
sh_targetNode("ex_TestShape","ex_Quokki") .
sh_targetNode("ex_TestShape","ex_Quokkip") .
sh_targetNode("ex_TestShape","ex_Someone") .
sh_targetNode("ex_TestShape","ex_Typeless") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgd7v9f9x2530") .
rdf_first("node1hgd7v9f9x2530","http://repairs.shacl.org/class_003") .
rdf_rest("node1hgd7v9f9x2530","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class_003") .
rdfs_label("http://repairs.shacl.org/class_003","Test of sh:class at node shape 003 multiple classes, overlapping target sets") .
xsd_string("Test of sh:class at node shape 003 multiple classes, overlapping target sets") .
mf_action("http://repairs.shacl.org/class_003","node1hgd7v9f9x2531") .
sht_dataGraph("node1hgd7v9f9x2531","http://repairs.shacl.org") .
sht_shapesGraph("node1hgd7v9f9x2531","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class_003","node1hgd7v9f9x2532") .
sh_ValidationReport("node1hgd7v9f9x2532") .
sh_conforms("node1hgd7v9f9x2532","false") .
xsd_boolean("false") .
sh_result("node1hgd7v9f9x2532","node1hgd7v9f9x2533") .
sh_ValidationResult("node1hgd7v9f9x2533") .
sh_focusNode("node1hgd7v9f9x2533","ex_Typeless") .
sh_resultSeverity("node1hgd7v9f9x2533","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2533","sh_ClassConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2533","ex_TestShape") .
sh_value("node1hgd7v9f9x2533","ex_Typeless") .
sh_result("node1hgd7v9f9x2532","node1hgd7v9f9x2534") .
sh_ValidationResult("node1hgd7v9f9x2534") .
sh_focusNode("node1hgd7v9f9x2534","ex_Typeless") .
sh_resultSeverity("node1hgd7v9f9x2534","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2534","sh_ClassConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2534","ex_TestShape") .
sh_value("node1hgd7v9f9x2534","ex_Typeless") .
sh_result("node1hgd7v9f9x2532","node1hgd7v9f9x2535") .
sh_ValidationResult("node1hgd7v9f9x2535") .
sh_focusNode("node1hgd7v9f9x2535","ex_Quokki") .
sh_resultSeverity("node1hgd7v9f9x2535","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2535","sh_ClassConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2535","ex_TestShape") .
sh_value("node1hgd7v9f9x2535","ex_Quokki") .
sh_result("node1hgd7v9f9x2532","node1hgd7v9f9x2536") .
sh_ValidationResult("node1hgd7v9f9x2536") .
sh_focusNode("node1hgd7v9f9x2536","ex_John") .
sh_resultSeverity("node1hgd7v9f9x2536","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2536","sh_ClassConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2536","ex_TestShape") .
sh_value("node1hgd7v9f9x2536","ex_John") .
sh_result("node1hgd7v9f9x2532","node1hgd7v9f9x2537") .
sh_ValidationResult("node1hgd7v9f9x2537") .
sh_focusNode("node1hgd7v9f9x2537","ex_Quokkip") .
sh_resultSeverity("node1hgd7v9f9x2537","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2537","sh_ClassConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2537","ex_TestShape") .
sh_value("node1hgd7v9f9x2537","ex_Quokkip") .
mf_status("http://repairs.shacl.org/class_003","sht_approved") .

% Shape Targets

targetNode("ex_Quokki",ex_TestShape) .
targetNode("ex_John",ex_TestShape) .
targetNode("ex_Typeless",ex_TestShape) .
targetNode("ex_Joe",ex_TestShape) .
targetNode("ex_Quokkip",ex_TestShape) .
targetNode("ex_Someone",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_Quokki","t*"):-actualTarget("ex_Quokki",ex_TestShape) .
ex_TestShape_("ex_John","t*"):-actualTarget("ex_John",ex_TestShape) .
ex_TestShape_("ex_Typeless","t*"):-actualTarget("ex_Typeless",ex_TestShape) .
ex_TestShape_("ex_Joe","t*"):-actualTarget("ex_Joe",ex_TestShape) .
ex_TestShape_("ex_Quokkip","t*"):-actualTarget("ex_Quokkip",ex_TestShape) .
ex_TestShape_("ex_Someone","t*"):-actualTarget("ex_Someone",ex_TestShape) .

% Annotation Rules

ex_Person_(X,"t*"):-ex_Person(X) .
ex_Person_(X,"t*"):-ex_Person_(X,"t") .
ex_Animal_(X,"t*"):-ex_Animal(X) .
ex_Animal_(X,"t*"):-ex_Animal_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_Person_(X,"t"):-s0_(X,"t*") .
ex_Person_(X,"f"):-s0_(X,"f") .
s1_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_Animal_(X,"t"):-s1_(X,"t*") .
ex_Animal_(X,"f"):-s1_(X,"f") .
s2_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_Person_(X,"t"):-s2_(X,"t*") .
ex_Person_(X,"f"):-s2_(X,"f") .
s3_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_Animal_(X,"t"):-s3_(X,"t*") .
ex_Animal_(X,"f"):-s3_(X,"f") .
s0_(X,"f");s1_(X,"f");s2_(X,"f");s3_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_Person_(X,"t**"):-ex_Person_(X,"t*"),not ex_Person_(X,"f") .
ex_Animal_(X,"t**"):-ex_Animal_(X,"t*"),not ex_Animal_(X,"f") .

% Program Constraints

:-ex_Person_(X,"t"),ex_Person_(X,"f") .
:-ex_Animal_(X,"t"),ex_Animal_(X,"f") .

% Change Set Rules

add(ex_Person(X)):-ex_Person_(X,"t**"),not ex_Person(X) .
del(ex_Person(X)):-ex_Person_(X,"f"),ex_Person(X) .
add(ex_Animal(X)):-ex_Animal_(X,"t**"),not ex_Animal(X) .
del(ex_Animal(X)):-ex_Animal_(X,"f"),ex_Animal(X) .
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
