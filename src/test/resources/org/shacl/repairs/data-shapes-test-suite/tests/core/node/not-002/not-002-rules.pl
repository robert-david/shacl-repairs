
% Graph Data

ex_property("ex_InvalidInstance1","Some value") .
xsd_string("Some value") .
sh_NodeShape("ex_NotExampleShape") .
sh_not("ex_NotExampleShape","bnode_6e957a6331f648adaec55884eab70e6891") .
sh_NodeShape("bnode_6e957a6331f648adaec55884eab70e6891") .
sh_property("bnode_6e957a6331f648adaec55884eab70e6891","bnode_6e957a6331f648adaec55884eab70e6892") .
sh_path("bnode_6e957a6331f648adaec55884eab70e6892","ex_property") .
sh_minCount("bnode_6e957a6331f648adaec55884eab70e6892","1") .
xsd_integer("1") .
sh_targetNode("ex_NotExampleShape","ex_InvalidInstance1") .
sh_targetNode("ex_NotExampleShape","ex_ValidInstance1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_6e957a6331f648adaec55884eab70e6893") .
rdf_first("bnode_6e957a6331f648adaec55884eab70e6893","http://repairs.shacl.org/not_002") .
rdf_rest("bnode_6e957a6331f648adaec55884eab70e6893","rdf_nil") .
sht_Validate("http://repairs.shacl.org/not_002") .
rdfs_label("http://repairs.shacl.org/not_002","Test of sh:not at node shape 002") .
xsd_string("Test of sh:not at node shape 002") .
mf_action("http://repairs.shacl.org/not_002","bnode_6e957a6331f648adaec55884eab70e6894") .
sht_dataGraph("bnode_6e957a6331f648adaec55884eab70e6894","http://repairs.shacl.org") .
sht_shapesGraph("bnode_6e957a6331f648adaec55884eab70e6894","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/not_002","bnode_6e957a6331f648adaec55884eab70e6895") .
sh_ValidationReport("bnode_6e957a6331f648adaec55884eab70e6895") .
sh_conforms("bnode_6e957a6331f648adaec55884eab70e6895","false") .
xsd_boolean("false") .
sh_result("bnode_6e957a6331f648adaec55884eab70e6895","bnode_6e957a6331f648adaec55884eab70e6896") .
sh_ValidationResult("bnode_6e957a6331f648adaec55884eab70e6896") .
sh_focusNode("bnode_6e957a6331f648adaec55884eab70e6896","ex_InvalidInstance1") .
sh_resultSeverity("bnode_6e957a6331f648adaec55884eab70e6896","sh_Violation") .
sh_sourceConstraintComponent("bnode_6e957a6331f648adaec55884eab70e6896","sh_NotConstraintComponent") .
sh_sourceShape("bnode_6e957a6331f648adaec55884eab70e6896","ex_NotExampleShape") .
sh_value("bnode_6e957a6331f648adaec55884eab70e6896","ex_InvalidInstance1") .
mf_status("http://repairs.shacl.org/not_002","sht_approved") .
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

targetNode("ex_InvalidInstance1",ex_NotExampleShape) .
targetNode("ex_ValidInstance1",ex_NotExampleShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_NotExampleShape_("ex_InvalidInstance1","t*"):-actualTarget("ex_InvalidInstance1",ex_NotExampleShape) .
ex_NotExampleShape_("ex_ValidInstance1","t*"):-actualTarget("ex_ValidInstance1",ex_NotExampleShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .
bnode_6e957a6331f648adaec55884eab70e6898_st_(X,Y,"t*"):-bnode_6e957a6331f648adaec55884eab70e6898_(X,_),ex_property_(X,Y,"t*") .

% Repair Rules

bnode_6e957a6331f648adaec55884eab70e6897_(X,"f"):-ex_NotExampleShape_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e6897_(X,"t*"):-ex_NotExampleShape_(X,"f") .
bnode_6e957a6331f648adaec55884eab70e6898_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e6897_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e6898_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e6897_(X,"f") .

% sh:minCount 1 for bnode_6e957a6331f648adaec55884eab70e6898
s0_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e6898_(X,"t*") .
ex_property_(X,@new(s0,X,ex_property,1..1),"t"):-choose(s0,X,ex_property,1) .
choose(s0,X,ex_property,1);choose(s0,X,ex_property,0):-s0_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s1_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s1_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for bnode_6e957a6331f648adaec55884eab70e6898
s2_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e6898_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property_(X,@new(s3,X,ex_property,1..1),"t"):-choose(s3,X,ex_property,1) .
choose(s3,X,ex_property,1);choose(s3,X,ex_property,0):-s3_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s4_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e6898_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
bnode_6e957a6331f648adaec55884eab70e6898_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),bnode_6e957a6331f648adaec55884eab70e6898_st_(X,Y,"t*"),not bnode_6e957a6331f648adaec55884eab70e6898_st_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
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
