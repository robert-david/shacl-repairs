
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
sh_path("ex_s1","node1hmcia2oqx149") .
rdf_first("node1hmcia2oqx149","ex_p") .
rdf_rest("node1hmcia2oqx149","node1hmcia2oqx150") .
rdf_first("node1hmcia2oqx150","ex_q") .
rdf_rest("node1hmcia2oqx150","rdf_nil") .
sh_inversePath("node1hmcia2oqx149","ex_p") .
sh_class("ex_s1","ex_C") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hmcia2oqx151") .
rdf_first("node1hmcia2oqx151","http://repairs.shacl.org/path_strange_001") .
rdf_rest("node1hmcia2oqx151","rdf_nil") .
sht_Validate("http://repairs.shacl.org/path_strange_001") .
rdfs_label("http://repairs.shacl.org/path_strange_001","Test of strange path 001 two valid paths together") .
xsd_string("Test of strange path 001 two valid paths together") .
mf_action("http://repairs.shacl.org/path_strange_001","node1hmcia2oqx152") .
sht_dataGraph("node1hmcia2oqx152","http://repairs.shacl.org") .
sht_shapesGraph("node1hmcia2oqx152","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/path_strange_001","node1hmcia2oqx153") .
sh_ValidationReport("node1hmcia2oqx153") .
sh_conforms("node1hmcia2oqx153","false") .
xsd_boolean("false") .
sh_result("node1hmcia2oqx153","node1hmcia2oqx154") .
sh_ValidationResult("node1hmcia2oqx154") .
sh_focusNode("node1hmcia2oqx154","ex_j") .
sh_value("node1hmcia2oqx154","ex_jpq") .
sh_resultPath("node1hmcia2oqx154","node1hmcia2oqx155") .
rdf_first("node1hmcia2oqx155","ex_p") .
rdf_rest("node1hmcia2oqx155","node1hmcia2oqx156") .
rdf_first("node1hmcia2oqx156","ex_q") .
rdf_rest("node1hmcia2oqx156","rdf_nil") .
sh_resultSeverity("node1hmcia2oqx154","sh_Violation") .
sh_sourceConstraintComponent("node1hmcia2oqx154","sh_ClassConstraintComponent") .
sh_sourceShape("node1hmcia2oqx154","ex_s1") .
mf_status("http://repairs.shacl.org/path_strange_001","sht_approved") .

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
choose(s0,X,ex_s1_st,0):-s0_(X,"t*") .
choose(ex_s1_st,X,ex_p,1);choose(ex_s1_st,X,ex_p,0):-ex_s1_st_(X,Y,"t") .
ex_p_(X,@new(ex_s1_st,X,ex_p,1),"t"):-choose(ex_s1_st,X,ex_p,1),ex_s1_st_(X,Y,"t") .
(C-0) {ex_s1_st_(X,Y,"f"):ex_s1_st_(X,Y,"t*");s1_(Y,"f"):ex_s1_st_(X,Y,"t*"),not ex_s1_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_s1_st_(X,Y,"t*")}=C,C>0 .
ex_p_(X,X0,"f");ex_q_(X0,X1,"f"):-s0_(X,"f"),ex_p_(X,X0,"t*"),ex_q_(X0,X1,"t*"),ex_s1_st_(X,X1,"f") .
0 {s1_(Y,"t*"):ex_s1_st_(X,Y,"t**")} 0:-s0_(X,"t*") .

ex_C_(X,"t"):-s1_(X,"t*") .
ex_C_(X,"f"):-s1_(X,"f") .

% universal for ex_s1
s2_(X,"t*"):-ex_s1_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_s1_st_(X,@new(s3,X,ex_s1_st,1..1),"t"):-choose(s3,X,ex_s1_st,1) .
choose(s3,X,ex_s1_st,1);choose(s3,X,ex_s1_st,0):-s3_(X,"t*") .
0 {ex_q_(X0,Y,"t")} 1:-ex_p_(X,X0,"t**"),ex_s1_st_(X,Y,"t") .
(C-0) {ex_s1_st_(X,Y,"f"):ex_s1_st_(X,Y,"t*");s4_(Y,"f"):ex_s1_st_(X,Y,"t*"),not ex_s1_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_s1_st_(X,Y,"t*")}=C,C>0 .
ex_p_(X,X0,"f");ex_q_(X0,X1,"f"):-s3_(X,"f"),ex_p_(X,X0,"t*"),ex_q_(X0,X1,"t*"),ex_s1_st_(X,X1,"f") .
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
