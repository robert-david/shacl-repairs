
% Graph Data

ex_TestClass("ex_NamedInstance") .
sh_NodeShape("ex_TestShape") .
sh_class("ex_TestShape","ex_TestClass") .
sh_targetClass("ex_TestShape","ex_BNodeClass") .
sh_targetNode("ex_TestShape","ex_NamedInstance") .
sh_targetNode("ex_TestShape","String") .
xsd_string("String") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_6e957a6331f648adaec55884eab70e68135") .
rdf_first("bnode_6e957a6331f648adaec55884eab70e68135","http://repairs.shacl.org/class_002") .
rdf_rest("bnode_6e957a6331f648adaec55884eab70e68135","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class_002") .
rdfs_label("http://repairs.shacl.org/class_002","Test of sh:class at node shape 002") .
xsd_string("Test of sh:class at node shape 002") .
mf_action("http://repairs.shacl.org/class_002","bnode_6e957a6331f648adaec55884eab70e68136") .
sht_dataGraph("bnode_6e957a6331f648adaec55884eab70e68136","http://repairs.shacl.org") .
sht_shapesGraph("bnode_6e957a6331f648adaec55884eab70e68136","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class_002","bnode_6e957a6331f648adaec55884eab70e68137") .
sh_ValidationReport("bnode_6e957a6331f648adaec55884eab70e68137") .
sh_conforms("bnode_6e957a6331f648adaec55884eab70e68137","false") .
xsd_boolean("false") .
sh_result("bnode_6e957a6331f648adaec55884eab70e68137","bnode_6e957a6331f648adaec55884eab70e68138") .
sh_ValidationResult("bnode_6e957a6331f648adaec55884eab70e68138") .
sh_focusNode("bnode_6e957a6331f648adaec55884eab70e68138","String") .
sh_resultSeverity("bnode_6e957a6331f648adaec55884eab70e68138","sh_Violation") .
sh_sourceConstraintComponent("bnode_6e957a6331f648adaec55884eab70e68138","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_6e957a6331f648adaec55884eab70e68138","ex_TestShape") .
sh_value("bnode_6e957a6331f648adaec55884eab70e68138","String") .
sh_result("bnode_6e957a6331f648adaec55884eab70e68137","bnode_6e957a6331f648adaec55884eab70e68139") .
sh_ValidationResult("bnode_6e957a6331f648adaec55884eab70e68139") .
sh_focusNode("bnode_6e957a6331f648adaec55884eab70e68139","bnode_b9751") .
sh_resultSeverity("bnode_6e957a6331f648adaec55884eab70e68139","sh_Violation") .
sh_sourceConstraintComponent("bnode_6e957a6331f648adaec55884eab70e68139","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_6e957a6331f648adaec55884eab70e68139","ex_TestShape") .
sh_value("bnode_6e957a6331f648adaec55884eab70e68139","bnode_b9751") .
mf_status("http://repairs.shacl.org/class_002","sht_approved") .
ex_BNodeClass("bnode_b9751") .
ex_BNodeClass("bnode_6e957a6331f648adaec55884eab70e68140") .
ex_TestClass("bnode_6e957a6331f648adaec55884eab70e68140") .
rdfs_Datatype("xsd_byte") .
rdfs_Datatype("xsd_date") .
rdfs_Datatype("xsd_decimal") .
rdfs_Datatype("xsd_double") .
rdfs_Datatype("xsd_float") .
rdfs_Datatype("xsd_int") .
rdfs_Datatype("xsd_integer") .
rdfs_Datatype("xsd_language") .
rdfs_Datatype("xsd_long") .
rdfs_Datatype("xsd_negativeInteger") .
rdfs_Datatype("xsd_nonNegativeInteger") .
rdfs_Datatype("xsd_nonPositiveInteger") .
rdfs_Datatype("xsd_positiveInteger") .
rdfs_Datatype("xsd_short") .
rdfs_Datatype("xsd_string") .
rdfs_Datatype("xsd_unsignedByte") .
rdfs_Datatype("xsd_unsignedInt") .
rdfs_Datatype("xsd_unsignedLong") .
rdfs_Datatype("xsd_unsignedShort") .
rdfs_Datatype("owl_rational") .
rdfs_Datatype("owl_real") .

% Shape Targets

targetNode("ex_NamedInstance",ex_TestShape) .
targetNode("bnode_b9751",ex_TestShape) .
targetNode("bnode_6e957a6331f648adaec55884eab70e68140",ex_TestShape) .
targetNode("String",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_NamedInstance","t*"):-actualTarget("ex_NamedInstance",ex_TestShape) .
ex_TestShape_("bnode_b9751","t*"):-actualTarget("bnode_b9751",ex_TestShape) .
ex_TestShape_("bnode_6e957a6331f648adaec55884eab70e68140","t*"):-actualTarget("bnode_6e957a6331f648adaec55884eab70e68140",ex_TestShape) .
ex_TestShape_("String","t*"):-actualTarget("String",ex_TestShape) .

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
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@5,X,S: skipTarget(X,S) } .

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
