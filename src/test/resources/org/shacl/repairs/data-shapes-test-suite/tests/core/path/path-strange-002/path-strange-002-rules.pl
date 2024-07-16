
% Graph Data

ex_C("ex_i") .
ex_p("ex_i","ex_ip") .
ex_q("ex_ip","ex_ipq") .
ex_C("ex_ipq") .
ex_p("ex_pi","ex_i") .
ex_C("ex_j") .
ex_p("ex_j","ex_jp") .
ex_q("ex_jp","ex_jpq") .
sh_PropertyShape("ex_s1") .
sh_targetClass("ex_s1","ex_C") .
sh_path("ex_s1","bnode_3192f5e3ab9a46dfac026bfecdcd7453206") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453206","ex_p") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453206","bnode_3192f5e3ab9a46dfac026bfecdcd7453207") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453207","ex_q") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453207","rdf_nil") .
sh_inversePath("bnode_3192f5e3ab9a46dfac026bfecdcd7453206","bnode_3192f5e3ab9a46dfac026bfecdcd7453208") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453208","ex_p") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453208","rdf_nil") .
sh_class("ex_s1","ex_C") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_3192f5e3ab9a46dfac026bfecdcd7453209") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453209","http://repairs.shacl.org/path_strange_002") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453209","rdf_nil") .
sht_Validate("http://repairs.shacl.org/path_strange_002") .
rdfs_label("http://repairs.shacl.org/path_strange_002","Test of strange path 002 valid and invalid paths together") .
xsd_string("Test of strange path 002 valid and invalid paths together") .
mf_action("http://repairs.shacl.org/path_strange_002","bnode_3192f5e3ab9a46dfac026bfecdcd7453210") .
sht_dataGraph("bnode_3192f5e3ab9a46dfac026bfecdcd7453210","http://repairs.shacl.org") .
sht_shapesGraph("bnode_3192f5e3ab9a46dfac026bfecdcd7453210","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/path_strange_002","bnode_3192f5e3ab9a46dfac026bfecdcd7453211") .
sh_ValidationReport("bnode_3192f5e3ab9a46dfac026bfecdcd7453211") .
sh_conforms("bnode_3192f5e3ab9a46dfac026bfecdcd7453211","false") .
xsd_boolean("false") .
sh_result("bnode_3192f5e3ab9a46dfac026bfecdcd7453211","bnode_3192f5e3ab9a46dfac026bfecdcd7453212") .
sh_ValidationResult("bnode_3192f5e3ab9a46dfac026bfecdcd7453212") .
sh_focusNode("bnode_3192f5e3ab9a46dfac026bfecdcd7453212","ex_j") .
sh_value("bnode_3192f5e3ab9a46dfac026bfecdcd7453212","ex_jpq") .
sh_resultPath("bnode_3192f5e3ab9a46dfac026bfecdcd7453212","bnode_3192f5e3ab9a46dfac026bfecdcd7453213") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453213","ex_p") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453213","bnode_3192f5e3ab9a46dfac026bfecdcd7453214") .
rdf_first("bnode_3192f5e3ab9a46dfac026bfecdcd7453214","ex_q") .
rdf_rest("bnode_3192f5e3ab9a46dfac026bfecdcd7453214","rdf_nil") .
sh_resultSeverity("bnode_3192f5e3ab9a46dfac026bfecdcd7453212","sh_Violation") .
sh_sourceConstraintComponent("bnode_3192f5e3ab9a46dfac026bfecdcd7453212","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_3192f5e3ab9a46dfac026bfecdcd7453212","ex_s1") .
mf_status("http://repairs.shacl.org/path_strange_002","sht_approved") .
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
rdfs_Datatype("http://www.w3.org/2002/07/owl#rational") .
rdfs_Datatype("http://www.w3.org/2002/07/owl#real") .

% Shape Targets

targetNode("ex_i",ex_s1) .
targetNode("ex_j",ex_s1) .
targetNode("ex_ipq",ex_s1) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_s1_("ex_i","t*"):-actualTarget("ex_i",ex_s1) .
ex_s1_("ex_j","t*"):-actualTarget("ex_j",ex_s1) .
ex_s1_("ex_ipq","t*"):-actualTarget("ex_ipq",ex_s1) .

% Annotation Rules

ex_p_(X,Y,"t*"):-ex_p(X,Y) .
ex_p_(X,Y,"t*"):-ex_p_(X,Y,"t") .
ex_q_(X,Y,"t*"):-ex_q(X,Y) .
ex_q_(X,Y,"t*"):-ex_q_(X,Y,"t") .
ex_s1_st_(X,X1,"t*"):-ex_s1_(X,_),ex_p_(X,X0,"t*"),ex_q_(X0,X1,"t*") .
ex_C_(X,"t*"):-ex_C(X) .
ex_C_(X,"t*"):-ex_C_(X,"t") .

% Repair Rules

ex_s1_(X,"t*"):-ex_s1_(X,"t*") .
ex_s1_(X,"f"):-ex_s1_(X,"f") .


% sh:minCount 0 for ex_s1
s0_(X,"t*"):-ex_s1_(X,"t*") .
choose(ex_s1_st,X,ex_p,1);choose(ex_s1_st,X,ex_p,0):-ex_s1_st_(X,Y,"t") .
ex_p_(X,@new(ex_s1_st,X,ex_p,1),"t"):-choose(ex_s1_st,X,ex_p,1),ex_s1_st_(X,Y,"t") .
0 {ex_q_(X0,Y,"t")} 1:-ex_p_(X,X0,"t**"),ex_s1_st_(X,Y,"t") .
(C-0) {ex_s1_st_(X,Y,"f"):ex_s1_st_(X,Y,"t*");s1_(Y,"f"):ex_s1_st_(X,Y,"t*"),not ex_s1_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_s1_st_(X,Y,"t*")}=C,C>0 .
ex_p_(X,X0,"f");ex_q_(X0,X1,"f"):-ex_p_(X,X0,"t*"),ex_q_(X0,X1,"t*"),ex_s1_st_(X,X1,"f") .
0 {s1_(Y,"t*"):ex_s1_st_(X,Y,"t**")} 0:-s0_(X,"t*") .

ex_C_(X,"t"):-s1_(X,"t*") .
ex_C_(X,"f"):-s1_(X,"f") .

% universal for ex_s1
s2_(X,"t*"):-ex_s1_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_s1_st_(X,@new(s3,X,ex_s1_st,1..1),"t"):-choose(s3,X,ex_s1_st,1) .
choose(s3,X,ex_s1_st,1);choose(s3,X,ex_s1_st,0):-s3_(X,"t*") .
(C-0) {ex_s1_st_(X,Y,"f"):ex_s1_st_(X,Y,"t*");s4_(Y,"f"):ex_s1_st_(X,Y,"t*"),not ex_s1_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_s1_st_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_s1_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

ex_C_(X,"t"):-s5_(X,"t*") .
ex_C_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-ex_s1_(X,"f") .

% Interpretation Rules

ex_p_(X,Y,"t**"):-ex_p_(X,Y,"t*"),not ex_p_(X,Y,"f") .
ex_q_(X,Y,"t**"):-ex_q_(X,Y,"t*"),not ex_q_(X,Y,"f") .
ex_s1_st_(X,X1,"t**"):-ex_s1_st_(X,X1,"t*"),not ex_s1_st_(X,X1,"f"),ex_p_(X,X0,"t**"),ex_q_(X0,X1,"t**") .
ex_C_(X,"t**"):-ex_C_(X,"t*"),not ex_C_(X,"f") .

% Program Constraints

:-ex_p_(X,Y,"t"),ex_p_(X,Y,"f") .
:-ex_q_(X,Y,"t"),ex_q_(X,Y,"f") .
:-ex_s1_st_(X,Y,"t"),ex_s1_st_(X,Y,"f") .
:-ex_C_(X,"t"),ex_C_(X,"f") .

% Change Set Rules

add(ex_p(X,Y)):-ex_p_(X,Y,"t**"),not ex_p(X,Y) .
del(ex_p(X,Y)):-ex_p_(X,Y,"f"),ex_p(X,Y) .
add(ex_q(X,Y)):-ex_q_(X,Y,"t**"),not ex_q(X,Y) .
del(ex_q(X,Y)):-ex_q_(X,Y,"f"),ex_q(X,Y) .
add(ex_C(X)):-ex_C_(X,"t**"),not ex_C(X) .
del(ex_C(X)):-ex_C_(X,"f"),ex_C(X) .
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
