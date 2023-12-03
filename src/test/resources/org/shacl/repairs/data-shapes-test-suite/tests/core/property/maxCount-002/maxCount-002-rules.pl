
% Graph Data

rdfs_Resource("ex_InvalidResource") .
rdfs_label("ex_InvalidResource","Invalid resource") .
xsd_string("Invalid resource") .
owl_versionInfo("ex_InvalidResource","1.0") .
xsd_string("1.0") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
sh_property("ex_TestShape","ex_TestShape_versionInfo") .
sh_targetNode("ex_TestShape","ex_InvalidResource") .
sh_targetNode("ex_TestShape","ex_ValidResource") .
sh_path("ex_TestShape_versionInfo","owl_versionInfo") .
sh_maxCount("ex_TestShape_versionInfo","0") .
xsd_integer("0") .
rdfs_Resource("ex_ValidResource") .
rdfs_label("ex_ValidResource","Valid resource") .
xsd_string("Valid resource") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgobhchgx314") .
rdf_first("node1hgobhchgx314","http://repairs.shacl.org/maxCount_002") .
rdf_rest("node1hgobhchgx314","rdf_nil") .
sht_Validate("http://repairs.shacl.org/maxCount_002") .
rdfs_label("http://repairs.shacl.org/maxCount_002","Test of sh:maxCount at property shape 002") .
xsd_string("Test of sh:maxCount at property shape 002") .
mf_action("http://repairs.shacl.org/maxCount_002","node1hgobhchgx315") .
sht_dataGraph("node1hgobhchgx315","http://repairs.shacl.org") .
sht_shapesGraph("node1hgobhchgx315","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/maxCount_002","node1hgobhchgx316") .
sh_ValidationReport("node1hgobhchgx316") .
sh_conforms("node1hgobhchgx316","false") .
xsd_boolean("false") .
sh_result("node1hgobhchgx316","node1hgobhchgx317") .
sh_ValidationResult("node1hgobhchgx317") .
sh_focusNode("node1hgobhchgx317","ex_InvalidResource") .
sh_resultPath("node1hgobhchgx317","owl_versionInfo") .
sh_resultSeverity("node1hgobhchgx317","sh_Violation") .
sh_sourceConstraintComponent("node1hgobhchgx317","sh_MaxCountConstraintComponent") .
sh_sourceShape("node1hgobhchgx317","ex_TestShape_versionInfo") .
mf_status("http://repairs.shacl.org/maxCount_002","sht_approved") .

% Shape Targets

targetNode("ex_ValidResource",ex_TestShape) .
targetNode("ex_InvalidResource",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource","t*"):-actualTarget("ex_ValidResource",ex_TestShape) .
ex_TestShape_("ex_InvalidResource","t*"):-actualTarget("ex_InvalidResource",ex_TestShape) .

% Annotation Rules

owl_versionInfo_(X,Y,"t*"):-owl_versionInfo(X,Y) .
owl_versionInfo_(X,Y,"t*"):-owl_versionInfo_(X,Y,"t") .

% Repair Rules

ex_TestShape_versionInfo_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_versionInfo_(X,"f"):-ex_TestShape_(X,"f") .

% sh:maxCount 0 for ex_TestShape_versionInfo
s0_(X,"t*"):-ex_TestShape_versionInfo_(X,"t*") .
s1_(X,"f"):-s0_(X,"t*") .
s1_(X,"t*"):-s0_(X,"f") .
owl_versionInfo_(X,@new(s1,X,owl_versionInfo,1..1),"t"):-choose(s1,X,owl_versionInfo,1) .
choose(s1,X,owl_versionInfo,1);choose(s1,X,owl_versionInfo,0):-s1_(X,"t*") .
(C-0) {owl_versionInfo_(X,Y,"f"):owl_versionInfo_(X,Y,"t*");s2_(Y,"f"):owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:owl_versionInfo_(X,Y,"t*")}=C,C>0 .
owl_versionInfo_(X,Y,"f"):-s1_(X,"f"),owl_versionInfo_(X,Y,"t*"),owl_versionInfo_(X,Y,"f") .
1 {s2_(Y,"t*"):owl_versionInfo_(X,Y,"t**")} 1:-s1_(X,"t*") .


% sh:minCount 0 for ex_TestShape_versionInfo
s3_(X,"t*"):-ex_TestShape_versionInfo_(X,"t*") .
choose(s3,X,owl_versionInfo,0):-s3_(X,"t*") .
(C-0) {owl_versionInfo_(X,Y,"f"):owl_versionInfo_(X,Y,"t*");s4_(Y,"f"):owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:owl_versionInfo_(X,Y,"t*")}=C,C>0 .
owl_versionInfo_(X,Y,"f"):-s3_(X,"f"),owl_versionInfo_(X,Y,"t*"),owl_versionInfo_(X,Y,"f") .
0 {s4_(Y,"t*"):owl_versionInfo_(X,Y,"t**")} 0:-s3_(X,"t*") .


% universal for ex_TestShape_versionInfo
s5_(X,"t*"):-ex_TestShape_versionInfo_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
owl_versionInfo_(X,@new(s6,X,owl_versionInfo,1..1),"t"):-choose(s6,X,owl_versionInfo,1) .
choose(s6,X,owl_versionInfo,1);choose(s6,X,owl_versionInfo,0):-s6_(X,"t*") .
(C-0) {owl_versionInfo_(X,Y,"f"):owl_versionInfo_(X,Y,"t*");s7_(Y,"f"):owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:owl_versionInfo_(X,Y,"t*")}=C,C>0 .
owl_versionInfo_(X,Y,"f"):-s6_(X,"f"),owl_versionInfo_(X,Y,"t*"),owl_versionInfo_(X,Y,"f") .
1 {s7_(Y,"t*"):owl_versionInfo_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s3_(X,"f");s5_(X,"f"):-ex_TestShape_versionInfo_(X,"f") .

% Interpretation Rules

owl_versionInfo_(X,Y,"t**"):-owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f") .

% Program Constraints

:-owl_versionInfo_(X,Y,"t"),owl_versionInfo_(X,Y,"f") .
:-s2_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(owl_versionInfo(X,Y)):-owl_versionInfo_(X,Y,"t**"),not owl_versionInfo(X,Y) .
del(owl_versionInfo(X,Y)):-owl_versionInfo_(X,Y,"f"),owl_versionInfo(X,Y) .
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
