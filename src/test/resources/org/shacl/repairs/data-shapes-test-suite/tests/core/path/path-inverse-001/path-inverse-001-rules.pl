
% Graph Data

ex_Person("ex_InvalidResource1") .
ex_Person("ex_InvalidResource2") .
ex_child("ex_Parent1","ex_InvalidResource1") .
ex_child("ex_Parent1","ex_InvalidResource2") .
ex_child("ex_Parent1","ex_ValidResource1") .
ex_child("ex_Parent2","ex_InvalidResource2") .
ex_child("ex_Parent2","ex_ValidResource1") .
ex_child("ex_Parent3","ex_InvalidResource2") .
rdfs_Class("ex_Person") .
sh_NodeShape("ex_Person") .
rdfs_label("ex_Person","Person") .
xsd_string("Person") .
rdfs_subClassOf("ex_Person","rdfs_Resource") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
sh_property("ex_TestShape","ex_TestShape_P") .
sh_targetClass("ex_TestShape","ex_Person") .
sh_PropertyShape("ex_TestShape_P") .
sh_path("ex_TestShape_P","bnode_3192f5e3ab9a46dfac026bfecdcd74539") .
sh_inversePath("bnode_3192f5e3ab9a46dfac026bfecdcd74539","ex_child") .
sh_maxCount("ex_TestShape_P","2") .
xsd_integer("2") .
sh_minCount("ex_TestShape_P","2") .
ex_Person("ex_ValidResource1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_3192f5e3ab9a46dfac026bfecdcd745310") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd745310","http://repairs.shacl.org/path_inverse_001") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd745310","rdf_nil") .
sht_Validate("http://repairs.shacl.org/path_inverse_001") .
rdfs_label("http://repairs.shacl.org/path_inverse_001","Test of path sh:inversePath 001") .
xsd_string("Test of path sh:inversePath 001") .
mf_action("http://repairs.shacl.org/path_inverse_001","bnode_3192f5e3ab9a46dfac026bfecdcd745311") .
sht_dataGraph("bnode_3192f5e3ab9a46dfac026bfecdcd745311","http://repairs.shacl.org") .
sht_shapesGraph("bnode_3192f5e3ab9a46dfac026bfecdcd745311","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/path_inverse_001","bnode_3192f5e3ab9a46dfac026bfecdcd745312") .
sh_ValidationReport("bnode_3192f5e3ab9a46dfac026bfecdcd745312") .
sh_conforms("bnode_3192f5e3ab9a46dfac026bfecdcd745312","false") .
xsd_boolean("false") .
sh_result("bnode_3192f5e3ab9a46dfac026bfecdcd745312","bnode_3192f5e3ab9a46dfac026bfecdcd745313") .
sh_ValidationResult("bnode_3192f5e3ab9a46dfac026bfecdcd745313") .
sh_focusNode("bnode_3192f5e3ab9a46dfac026bfecdcd745313","ex_InvalidResource1") .
sh_resultPath("bnode_3192f5e3ab9a46dfac026bfecdcd745313","bnode_3192f5e3ab9a46dfac026bfecdcd745314") .
sh_inversePath("bnode_3192f5e3ab9a46dfac026bfecdcd745314","ex_child") .
sh_resultSeverity("bnode_3192f5e3ab9a46dfac026bfecdcd745313","sh_Violation") .
sh_sourceConstraintComponent("bnode_3192f5e3ab9a46dfac026bfecdcd745313","sh_MinCountConstraintComponent") .
sh_sourceShape("bnode_3192f5e3ab9a46dfac026bfecdcd745313","ex_TestShape_P") .
sh_result("bnode_3192f5e3ab9a46dfac026bfecdcd745312","bnode_3192f5e3ab9a46dfac026bfecdcd745315") .
sh_ValidationResult("bnode_3192f5e3ab9a46dfac026bfecdcd745315") .
sh_focusNode("bnode_3192f5e3ab9a46dfac026bfecdcd745315","ex_InvalidResource2") .
sh_resultPath("bnode_3192f5e3ab9a46dfac026bfecdcd745315","bnode_3192f5e3ab9a46dfac026bfecdcd745316") .
sh_inversePath("bnode_3192f5e3ab9a46dfac026bfecdcd745316","ex_child") .
sh_resultSeverity("bnode_3192f5e3ab9a46dfac026bfecdcd745315","sh_Violation") .
sh_sourceConstraintComponent("bnode_3192f5e3ab9a46dfac026bfecdcd745315","sh_MaxCountConstraintComponent") .
sh_sourceShape("bnode_3192f5e3ab9a46dfac026bfecdcd745315","ex_TestShape_P") .
mf_status("http://repairs.shacl.org/path_inverse_001","sht_approved") .
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

targetNode("ex_InvalidResource1",ex_TestShape) .
targetNode("ex_ValidResource1",ex_TestShape) .
targetNode("ex_InvalidResource2",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .
ex_TestShape_("ex_InvalidResource2","t*"):-actualTarget("ex_InvalidResource2",ex_TestShape) .

% Annotation Rules

ex_child_(X,Y,"t*"):-ex_child(X,Y) .
ex_child_(X,Y,"t*"):-ex_child_(X,Y,"t") .
ex_child_(Y,X,"t"):-ex_child_inv_(X,Y,"t") .
ex_child_inv_(X,Y,"t*"):-ex_child_(Y,X,"t*") .
ex_child_(Y,X,"f"):-ex_child_inv_(X,Y,"f") .
ex_child_inv_(X,Y,"f"):-ex_child_(Y,X,"f") .
ex_TestShape_P_st_(X,Y,"t*"):-ex_TestShape_P_(X,_),ex_child_inv_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_P_(X,"t*"):-s0_(X,"t*") .
ex_TestShape_P_(X,"f"):-s0_(X,"f") .

% sh:maxCount 2 for ex_TestShape_P
s1_(X,"t*"):-ex_TestShape_P_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
ex_child_inv_(X,@new(s2,X,ex_child_inv_,1..1),"t"):-choose(s2,X,ex_child,1) .
ex_child_inv_(X,@new(s2,X,ex_child_inv_,1..2),"t"):-choose(s2,X,ex_child,2) .
ex_child_inv_(X,@new(s2,X,ex_child_inv_,1..3),"t"):-choose(s2,X,ex_child,3) .
choose(s2,X,ex_child,3);choose(s2,X,ex_child,2);choose(s2,X,ex_child,1);choose(s2,X,ex_child,0):-s2_(X,"t*") .
(C-2) {ex_TestShape_P_st_(X,Y,"f"):ex_TestShape_P_st_(X,Y,"t*");s3_(Y,"f"):ex_TestShape_P_st_(X,Y,"t*"),not ex_TestShape_P_st_(X,Y,"f")} (C-2):-s2_(X,"f"),#count {Y:ex_TestShape_P_st_(X,Y,"t*")}=C,C>2 .
ex_child_(Y,X,"f"):-ex_child_inv_(X,Y,"t*"),ex_TestShape_P_st_(X,Y,"f") .
3 {s3_(Y,"t*"):ex_TestShape_P_st_(X,Y,"t**")} 3:-s2_(X,"t*") .


% sh:minCount 0 for ex_TestShape_P
s4_(X,"t*"):-ex_TestShape_P_(X,"t*") .
(C-0) {ex_TestShape_P_st_(X,Y,"f"):ex_TestShape_P_st_(X,Y,"t*");s5_(Y,"f"):ex_TestShape_P_st_(X,Y,"t*"),not ex_TestShape_P_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_TestShape_P_st_(X,Y,"t*")}=C,C>0 .
0 {s5_(Y,"t*"):ex_TestShape_P_st_(X,Y,"t**")} 0:-s4_(X,"t*") .


% universal for ex_TestShape_P
s6_(X,"t*"):-ex_TestShape_P_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
ex_child_inv_(X,@new(s7,X,ex_child_inv_,1..1),"t"):-choose(s7,X,ex_child,1) .
choose(s7,X,ex_child,1);choose(s7,X,ex_child,0):-s7_(X,"t*") .
(C-0) {ex_TestShape_P_st_(X,Y,"f"):ex_TestShape_P_st_(X,Y,"t*");s8_(Y,"f"):ex_TestShape_P_st_(X,Y,"t*"),not ex_TestShape_P_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:ex_TestShape_P_st_(X,Y,"t*")}=C,C>0 .
1 {s8_(Y,"t*"):ex_TestShape_P_st_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s4_(X,"f");s6_(X,"f"):-ex_TestShape_P_(X,"f") .
s10_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_P_(X,"t*"):-s10_(X,"t*") .
ex_TestShape_P_(X,"f"):-s10_(X,"f") .

% sh:minCount 2 for ex_TestShape_P
s11_(X,"t*"):-ex_TestShape_P_(X,"t*") .
ex_child_inv_(X,@new(s11,X,ex_child_inv_,1..1),"t"):-choose(s11,X,ex_child,1) .
ex_child_inv_(X,@new(s11,X,ex_child_inv_,1..2),"t"):-choose(s11,X,ex_child,2) .
choose(s11,X,ex_child,2);choose(s11,X,ex_child,1);choose(s11,X,ex_child,0):-s11_(X,"t*") .
(C-1) {ex_TestShape_P_st_(X,Y,"f"):ex_TestShape_P_st_(X,Y,"t*");s12_(Y,"f"):ex_TestShape_P_st_(X,Y,"t*"),not ex_TestShape_P_st_(X,Y,"f")} (C-1):-s11_(X,"f"),#count {Y:ex_TestShape_P_st_(X,Y,"t*")}=C,C>1 .
2 {s12_(Y,"t*"):ex_TestShape_P_st_(X,Y,"t**")} 2:-s11_(X,"t*") .


s13_(X,"t*"):-ex_TestShape_P_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_child_inv_(X,@new(s14,X,ex_child_inv_,1..1),"t"):-choose(s14,X,ex_child,1) .
choose(s14,X,ex_child,1);choose(s14,X,ex_child,0):-s14_(X,"t*") .
(C-0) {ex_TestShape_P_st_(X,Y,"f"):ex_TestShape_P_st_(X,Y,"t*");s15_(Y,"f"):ex_TestShape_P_st_(X,Y,"t*"),not ex_TestShape_P_st_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_TestShape_P_st_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):ex_TestShape_P_st_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-ex_TestShape_P_(X,"f") .
s0_(X,"f");s10_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_child_(X,Y,"t**"):-ex_child_(X,Y,"t*"),not ex_child_(X,Y,"f") .
ex_child_inv_(X,Y,"t**"):-ex_child_inv_(X,Y,"t*"),not ex_child_inv_(X,Y,"f") .
ex_TestShape_P_st_(X,Y,"t**"):-ex_child_inv_(X,Y,"t**"),ex_TestShape_P_st_(X,Y,"t*"),not ex_TestShape_P_st_(X,Y,"f") .

% Program Constraints

:-ex_child_(X,Y,"t"),ex_child_(X,Y,"f") .
:-ex_child_inv_(X,Y,"t"),ex_child_inv_(X,Y,"f") .
:-s3_(X,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .

% Change Set Rules

add(ex_child(X,Y)):-ex_child_(X,Y,"t**"),not ex_child(X,Y) .
del(ex_child(X,Y)):-ex_child_(X,Y,"f"),ex_child(X,Y) .
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
