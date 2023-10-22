
% Graph Data

rdfs_Resource("ex_InvalidResource1") .
ex_testProperty("ex_InvalidResource1","ex_InvalidResource1") .
ex_testProperty("ex_InvalidResource1","A string") .
xsd_string("A string") .
rdfs_Class("ex_SubClass") .
ex_SuperClass(X):-ex_SubClass(X) .
ex_SubClass("ex_SubClassInstance") .
rdfs_Class("ex_SuperClass") .
ex_SuperClass("ex_SuperClassInstance") .
sh_NodeShape("ex_TestShape") .
sh_property("ex_TestShape","ex_TestShape_testProperty") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource2") .
sh_path("ex_TestShape_testProperty","ex_testProperty") .
rdfs_label("ex_TestShape_testProperty","test property") .
xsd_string("test property") .
sh_class("ex_TestShape_testProperty","ex_SuperClass") .
rdfs_Resource("ex_ValidResource1") .
ex_testProperty("ex_ValidResource1","ex_SubClassInstance") .
ex_testProperty("ex_ValidResource1","ex_SuperClassInstance") .
rdfs_Resource("ex_ValidResource2") .
ex_testProperty("ex_ValidResource2","node1hdcdgs0ox1511") .
ex_SubClass("node1hdcdgs0ox1511") .
ex_testProperty("ex_ValidResource2","node1hdcdgs0ox1512") .
ex_SuperClass("node1hdcdgs0ox1512") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hdcdgs0ox1513") .
rdf_first("node1hdcdgs0ox1513","http://repairs.shacl.org/class_001") .
rdf_rest("node1hdcdgs0ox1513","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class_001") .
rdfs_label("http://repairs.shacl.org/class_001","Test of sh:class at property shape 001") .
xsd_string("Test of sh:class at property shape 001") .
mf_action("http://repairs.shacl.org/class_001","node1hdcdgs0ox1514") .
sht_dataGraph("node1hdcdgs0ox1514","http://repairs.shacl.org") .
sht_shapesGraph("node1hdcdgs0ox1514","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class_001","node1hdcdgs0ox1515") .
sh_ValidationReport("node1hdcdgs0ox1515") .
sh_conforms("node1hdcdgs0ox1515","false") .
xsd_boolean("false") .
sh_result("node1hdcdgs0ox1515","node1hdcdgs0ox1516") .
sh_ValidationResult("node1hdcdgs0ox1516") .
sh_focusNode("node1hdcdgs0ox1516","ex_InvalidResource1") .
sh_resultPath("node1hdcdgs0ox1516","ex_testProperty") .
sh_resultSeverity("node1hdcdgs0ox1516","sh_Violation") .
sh_sourceConstraintComponent("node1hdcdgs0ox1516","sh_ClassConstraintComponent") .
sh_sourceShape("node1hdcdgs0ox1516","ex_TestShape_testProperty") .
sh_value("node1hdcdgs0ox1516","ex_InvalidResource1") .
sh_result("node1hdcdgs0ox1515","node1hdcdgs0ox1517") .
sh_ValidationResult("node1hdcdgs0ox1517") .
sh_focusNode("node1hdcdgs0ox1517","ex_InvalidResource1") .
sh_resultPath("node1hdcdgs0ox1517","ex_testProperty") .
sh_resultSeverity("node1hdcdgs0ox1517","sh_Violation") .
sh_sourceConstraintComponent("node1hdcdgs0ox1517","sh_ClassConstraintComponent") .
sh_sourceShape("node1hdcdgs0ox1517","ex_TestShape_testProperty") .
sh_value("node1hdcdgs0ox1517","A string") .
mf_status("http://repairs.shacl.org/class_001","sht_approved") .

% Shape Targets

targetNode("ex_ValidResource2",ex_TestShape) .
targetNode("ex_InvalidResource1",ex_TestShape) .
targetNode("ex_ValidResource1",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource2","t*"):-actualTarget("ex_ValidResource2",ex_TestShape) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .

% Annotation Rules

ex_testProperty_(X,Y,"t*"):-ex_testProperty(X,Y) .
ex_testProperty_(X,Y,"t*"):-ex_testProperty_(X,Y,"t") .
ex_SuperClass_(X,"t*"):-ex_SuperClass(X) .
ex_SuperClass_(X,"t*"):-ex_SuperClass_(X,"t") .

% Repair Rules

ex_TestShape_testProperty_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_testProperty_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for ex_TestShape_testProperty
s0_(X,"t*"):-ex_TestShape_testProperty_(X,"t*") .
choose(s0,X,ex_testProperty,0):-s0_(X,"t*") .
(C-0) {ex_testProperty_(X,Y,"f"):ex_testProperty_(X,Y,"t*");s1_(Y,"f"):ex_testProperty_(X,Y,"t*"),not ex_testProperty_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_testProperty_(X,Y,"t*")}=C,C>0 .
ex_testProperty_(X,Y,"f"):-s0_(X,"f"),ex_testProperty_(X,Y,"t*"),ex_testProperty_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_testProperty_(X,Y,"t**")} 0:-s0_(X,"t*") .

ex_SuperClass_(X,"t"):-s1_(X,"t*") .
ex_SuperClass_(X,"f"):-s1_(X,"f") .

% universal for ex_TestShape_testProperty
s2_(X,"t*"):-ex_TestShape_testProperty_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_testProperty_(X,@new(s3,X,ex_testProperty,1..1),"t"):-choose(s3,X,ex_testProperty,1) .
choose(s3,X,ex_testProperty,1);choose(s3,X,ex_testProperty,0):-s3_(X,"t*") .
(C-0) {ex_testProperty_(X,Y,"f"):ex_testProperty_(X,Y,"t*");s4_(Y,"f"):ex_testProperty_(X,Y,"t*"),not ex_testProperty_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_testProperty_(X,Y,"t*")}=C,C>0 .
ex_testProperty_(X,Y,"f"):-s3_(X,"f"),ex_testProperty_(X,Y,"t*"),ex_testProperty_(X,Y,"f") .
1 {s4_(Y,"t*"):ex_testProperty_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

ex_SuperClass_(X,"t"):-s5_(X,"t*") .
ex_SuperClass_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-ex_TestShape_testProperty_(X,"f") .

% Interpretation Rules

ex_testProperty_(X,Y,"t**"):-ex_testProperty_(X,Y,"t*"),not ex_testProperty_(X,Y,"f") .
ex_SuperClass_(X,"t**"):-ex_SuperClass_(X,"t*"),not ex_SuperClass_(X,"f") .

% Program Constraints

:-ex_testProperty_(X,Y,"t"),ex_testProperty_(X,Y,"f") .
:-ex_SuperClass_(X,"t"),ex_SuperClass_(X,"f") .

% Change Set Rules

add(ex_testProperty(X,Y)):-ex_testProperty_(X,Y,"t**"),not ex_testProperty(X,Y) .
del(ex_testProperty(X,Y)):-ex_testProperty_(X,Y,"f"),ex_testProperty(X,Y) .
add(ex_SuperClass(X)):-ex_SuperClass_(X,"t**"),not ex_SuperClass(X) .
del(ex_SuperClass(X)):-ex_SuperClass_(X,"f"),ex_SuperClass(X) .
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
