
% Graph Data

ex_property1("ex_InvalidResource1","ex_Node3") .
ex_property2("ex_InvalidResource1","ex_Node4") .
ex_property2("ex_Node1","ex_Node2") .
ex_property3("ex_Node2","Value") .
xsd_string("Value") .
sh_PropertyShape("ex_TestShape") .
sh_path("ex_TestShape","bnode_3192f5e3ab9a46dfac026bfecdcd7453120") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453120","ex_property1") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453120","bnode_3192f5e3ab9a46dfac026bfecdcd7453121") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453121","ex_property2") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453121","bnode_3192f5e3ab9a46dfac026bfecdcd7453122") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453122","ex_property3") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453122","rdf_nil") .
sh_minCount("ex_TestShape","1") .
xsd_integer("1") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_InvalidResource2") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource2") .
ex_property1("ex_ValidResource1","ex_Node1") .
ex_property1("ex_ValidResource2","ex_Node1") .
ex_property1("ex_ValidResource2","ex_Node2") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_3192f5e3ab9a46dfac026bfecdcd7453123") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453123","http://repairs.shacl.org/path_sequence_002") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453123","rdf_nil") .
sht_Validate("http://repairs.shacl.org/path_sequence_002") .
rdfs_label("http://repairs.shacl.org/path_sequence_002","Test of path sequence 002") .
xsd_string("Test of path sequence 002") .
mf_action("http://repairs.shacl.org/path_sequence_002","bnode_3192f5e3ab9a46dfac026bfecdcd7453124") .
sht_dataGraph("bnode_3192f5e3ab9a46dfac026bfecdcd7453124","http://repairs.shacl.org") .
sht_shapesGraph("bnode_3192f5e3ab9a46dfac026bfecdcd7453124","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/path_sequence_002","bnode_3192f5e3ab9a46dfac026bfecdcd7453125") .
sh_ValidationReport("bnode_3192f5e3ab9a46dfac026bfecdcd7453125") .
sh_conforms("bnode_3192f5e3ab9a46dfac026bfecdcd7453125","false") .
xsd_boolean("false") .
sh_result("bnode_3192f5e3ab9a46dfac026bfecdcd7453125","bnode_3192f5e3ab9a46dfac026bfecdcd7453126") .
sh_ValidationResult("bnode_3192f5e3ab9a46dfac026bfecdcd7453126") .
sh_focusNode("bnode_3192f5e3ab9a46dfac026bfecdcd7453126","ex_InvalidResource1") .
sh_resultPath("bnode_3192f5e3ab9a46dfac026bfecdcd7453126","bnode_3192f5e3ab9a46dfac026bfecdcd7453127") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453127","ex_property1") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453127","bnode_3192f5e3ab9a46dfac026bfecdcd7453128") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453128","ex_property2") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453128","bnode_3192f5e3ab9a46dfac026bfecdcd7453129") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453129","ex_property3") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453129","rdf_nil") .
sh_resultSeverity("bnode_3192f5e3ab9a46dfac026bfecdcd7453126","sh_Violation") .
sh_sourceConstraintComponent("bnode_3192f5e3ab9a46dfac026bfecdcd7453126","sh_MinCountConstraintComponent") .
sh_sourceShape("bnode_3192f5e3ab9a46dfac026bfecdcd7453126","ex_TestShape") .
sh_result("bnode_3192f5e3ab9a46dfac026bfecdcd7453125","bnode_3192f5e3ab9a46dfac026bfecdcd7453130") .
sh_ValidationResult("bnode_3192f5e3ab9a46dfac026bfecdcd7453130") .
sh_focusNode("bnode_3192f5e3ab9a46dfac026bfecdcd7453130","ex_InvalidResource2") .
sh_resultPath("bnode_3192f5e3ab9a46dfac026bfecdcd7453130","bnode_3192f5e3ab9a46dfac026bfecdcd7453131") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453131","ex_property1") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453131","bnode_3192f5e3ab9a46dfac026bfecdcd7453132") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453132","ex_property2") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453132","bnode_3192f5e3ab9a46dfac026bfecdcd7453133") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453133","ex_property3") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453133","rdf_nil") .
sh_resultSeverity("bnode_3192f5e3ab9a46dfac026bfecdcd7453130","sh_Violation") .
sh_sourceConstraintComponent("bnode_3192f5e3ab9a46dfac026bfecdcd7453130","sh_MinCountConstraintComponent") .
sh_sourceShape("bnode_3192f5e3ab9a46dfac026bfecdcd7453130","ex_TestShape") .
mf_status("http://repairs.shacl.org/path_sequence_002","sht_approved") .
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

targetNode("ex_ValidResource1",ex_TestShape) .
targetNode("ex_ValidResource2",ex_TestShape) .
targetNode("ex_InvalidResource1",ex_TestShape) .
targetNode("ex_InvalidResource2",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .
ex_TestShape_("ex_ValidResource2","t*"):-actualTarget("ex_ValidResource2",ex_TestShape) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .
ex_TestShape_("ex_InvalidResource2","t*"):-actualTarget("ex_InvalidResource2",ex_TestShape) .

% Annotation Rules

ex_property1_(X,Y,"t*"):-ex_property1(X,Y) .
ex_property1_(X,Y,"t*"):-ex_property1_(X,Y,"t") .
ex_property2_(X,Y,"t*"):-ex_property2(X,Y) .
ex_property2_(X,Y,"t*"):-ex_property2_(X,Y,"t") .
ex_property3_(X,Y,"t*"):-ex_property3(X,Y) .
ex_property3_(X,Y,"t*"):-ex_property3_(X,Y,"t") .
ex_TestShape_st_(X,X2,"t*"):-ex_TestShape_(X,_),ex_property1_(X,X0,"t*"),ex_property2_(X0,X1,"t*"),ex_property3_(X1,X2,"t*") .

% Repair Rules

ex_TestShape_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_(X,"f"):-ex_TestShape_(X,"f") .



% sh:minCount 1 for ex_TestShape
s0_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_st_(X,@new(s0,X,ex_TestShape_st,1..1),"t"):-choose(s0,X,ex_TestShape_st,1) .
choose(s0,X,ex_TestShape_st,1);choose(s0,X,ex_TestShape_st,0):-s0_(X,"t*") .
choose(ex_TestShape_st,X,ex_property1,1);choose(ex_TestShape_st,X,ex_property1,0):-ex_TestShape_st_(X,Y,"t") .
ex_property1_(X,@new(ex_TestShape_st,X,ex_property1,1),"t"):-choose(ex_TestShape_st,X,ex_property1,1),ex_TestShape_st_(X,Y,"t") .
choose(ex_TestShape_st,X0,ex_property2,1);choose(ex_TestShape_st,X0,ex_property2,0):-ex_property1_(X,X0,"t**"),ex_TestShape_st_(X,Y,"t") .
ex_property2_(X0,@new(ex_TestShape_st,X0,ex_property2,1),"t"):-choose(ex_TestShape_st,X0,ex_property2,1),ex_property1_(X,X0,"t**"),ex_TestShape_st_(X,Y,"t") .
0 {ex_property3_(X1,Y,"t")} 1:-ex_property1_(X,X0,"t**"),ex_property2_(X0,X1,"t**"),ex_TestShape_st_(X,Y,"t") .
(C-0) {ex_TestShape_st_(X,Y,"f"):ex_TestShape_st_(X,Y,"t*");s1_(Y,"f"):ex_TestShape_st_(X,Y,"t*"),not ex_TestShape_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_TestShape_st_(X,Y,"t*")}=C,C>0 .
ex_property1_(X,X0,"f");ex_property2_(X0,X1,"f");ex_property3_(X1,X2,"f"):-ex_property1_(X,X0,"t*"),ex_property2_(X0,X1,"t*"),ex_property3_(X1,X2,"t*"),ex_TestShape_st_(X,X2,"f") .
1 {s1_(Y,"t*"):ex_TestShape_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for ex_TestShape
s2_(X,"t*"):-ex_TestShape_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_TestShape_st_(X,@new(s3,X,ex_TestShape_st,1..1),"t"):-choose(s3,X,ex_TestShape_st,1) .
choose(s3,X,ex_TestShape_st,1);choose(s3,X,ex_TestShape_st,0):-s3_(X,"t*") .
(C-0) {ex_TestShape_st_(X,Y,"f"):ex_TestShape_st_(X,Y,"t*");s4_(Y,"f"):ex_TestShape_st_(X,Y,"t*"),not ex_TestShape_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_TestShape_st_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_TestShape_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_property1_(X,Y,"t**"):-ex_property1_(X,Y,"t*"),not ex_property1_(X,Y,"f") .
ex_property2_(X,Y,"t**"):-ex_property2_(X,Y,"t*"),not ex_property2_(X,Y,"f") .
ex_property3_(X,Y,"t**"):-ex_property3_(X,Y,"t*"),not ex_property3_(X,Y,"f") .
ex_TestShape_st_(X,X2,"t**"):-ex_TestShape_st_(X,X2,"t*"),not ex_TestShape_st_(X,X2,"f"),ex_property1_(X,X0,"t**"),ex_property2_(X0,X1,"t**"),ex_property3_(X1,X2,"t**") .

% Program Constraints

:-ex_property1_(X,Y,"t"),ex_property1_(X,Y,"f") .
:-ex_property2_(X,Y,"t"),ex_property2_(X,Y,"f") .
:-ex_property3_(X,Y,"t"),ex_property3_(X,Y,"f") .
:-ex_TestShape_st_(X,Y,"t"),ex_TestShape_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(ex_property1(X,Y)):-ex_property1_(X,Y,"t**"),not ex_property1(X,Y) .
del(ex_property1(X,Y)):-ex_property1_(X,Y,"f"),ex_property1(X,Y) .
add(ex_property2(X,Y)):-ex_property2_(X,Y,"t**"),not ex_property2(X,Y) .
del(ex_property2(X,Y)):-ex_property2_(X,Y,"f"),ex_property2(X,Y) .
add(ex_property3(X,Y)):-ex_property3_(X,Y,"t**"),not ex_property3(X,Y) .
del(ex_property3(X,Y)):-ex_property3_(X,Y,"f"),ex_property3(X,Y) .
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
