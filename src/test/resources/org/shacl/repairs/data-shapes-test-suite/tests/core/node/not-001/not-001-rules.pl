
% Graph Data

rdfs_Resource("ex_InvalidResource1") .
ex_property("ex_InvalidResource1","some value") .
xsd_string("some value") .
rdfs_Class("ex_TestShape") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
rdfs_Resource(X):-ex_TestShape(X) .
sh_not("ex_TestShape","node1g835dclmx66") .
sh_NodeShape("node1g835dclmx66") .
sh_property("node1g835dclmx66","node1g835dclmx67") .
sh_path("node1g835dclmx67","ex_property") .
sh_minCount("node1g835dclmx67","1") .
xsd_integer("1") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
rdfs_Resource("ex_ValidResource1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1g835dclmx68") .
rdf_first("node1g835dclmx68","http://repairs.shacl.org/not_001") .
rdf_rest("node1g835dclmx68","rdf_nil") .
sht_Validate("http://repairs.shacl.org/not_001") .
rdfs_label("http://repairs.shacl.org/not_001","Test of sh:not at node shape 001") .
xsd_string("Test of sh:not at node shape 001") .
mf_action("http://repairs.shacl.org/not_001","node1g835dclmx69") .
sht_dataGraph("node1g835dclmx69","http://repairs.shacl.org") .
sht_shapesGraph("node1g835dclmx69","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/not_001","node1g835dclmx70") .
sh_ValidationReport("node1g835dclmx70") .
sh_conforms("node1g835dclmx70","false") .
xsd_boolean("false") .
sh_result("node1g835dclmx70","node1g835dclmx71") .
sh_ValidationResult("node1g835dclmx71") .
sh_focusNode("node1g835dclmx71","ex_InvalidResource1") .
sh_resultSeverity("node1g835dclmx71","sh_Violation") .
sh_sourceConstraintComponent("node1g835dclmx71","sh_NotConstraintComponent") .
sh_sourceShape("node1g835dclmx71","ex_TestShape") .
sh_value("node1g835dclmx71","ex_InvalidResource1") .
mf_status("http://repairs.shacl.org/not_001","sht_approved") .

% Shape Targets

targetNode("ex_ValidResource1",ex_TestShape) .
targetNode("ex_InvalidResource1",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .

% Repair Rules

node1g835dclmx72_(X,"f"):-ex_TestShape_(X,"t*") .
node1g835dclmx72_(X,"t*"):-ex_TestShape_(X,"f") .
node1g835dclmx73_(X,"t*"):-node1g835dclmx72_(X,"t*") .
node1g835dclmx73_(X,"f"):-node1g835dclmx72_(X,"f") .

% sh:minCount 1 for node1g835dclmx73
s0_(X,"t*"):-node1g835dclmx73_(X,"t*") .
ex_property_(X,@new(s0,X,ex_property,1..1),"t"):-choose(s0,X,ex_property,1) .
choose(s0,X,ex_property,1);choose(s0,X,ex_property,0):-s0_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property(X,Y);s1_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s1_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1g835dclmx73
s2_(X,"t*"):-node1g835dclmx73_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property_(X,@new(s3,X,ex_property,1..1),"t"):-choose(s3,X,ex_property,1) .
choose(s3,X,ex_property,1);choose(s3,X,ex_property,0):-s3_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property(X,Y);s4_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1g835dclmx73_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
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
