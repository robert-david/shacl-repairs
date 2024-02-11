
% Graph Data

sh_NodeShape("ex_AndShape") .
sh_and("ex_AndShape","node1hmci9mjqx243") .
rdf_first("node1hmci9mjqx243","ex_SuperShape") .
rdf_rest("node1hmci9mjqx243","node1hmci9mjqx244") .
rdf_first("node1hmci9mjqx244","node1hmci9mjqx245") .
sh_property("node1hmci9mjqx245","node1hmci9mjqx246") .
sh_path("node1hmci9mjqx246","ex_property") .
sh_maxCount("node1hmci9mjqx246","1") .
xsd_integer("1") .
rdf_rest("node1hmci9mjqx244","rdf_nil") .
sh_targetNode("ex_AndShape","ex_InvalidInstance1") .
sh_targetNode("ex_AndShape","ex_InvalidInstance2") .
sh_targetNode("ex_AndShape","ex_ValidInstance1") .
ex_property("ex_InvalidInstance2","One") .
xsd_string("One") .
ex_property("ex_InvalidInstance2","Two") .
xsd_string("Two") .
sh_NodeShape("ex_SuperShape") .
sh_property("ex_SuperShape","node1hmci9mjqx247") .
sh_path("node1hmci9mjqx247","ex_property") .
sh_minCount("node1hmci9mjqx247","1") .
ex_property("ex_ValidInstance1","One") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hmci9mjqx248") .
rdf_first("node1hmci9mjqx248","http://repairs.shacl.org/and_002") .
rdf_rest("node1hmci9mjqx248","rdf_nil") .
sht_Validate("http://repairs.shacl.org/and_002") .
rdfs_label("http://repairs.shacl.org/and_002","Test of sh:and at node shape 002") .
xsd_string("Test of sh:and at node shape 002") .
mf_action("http://repairs.shacl.org/and_002","node1hmci9mjqx249") .
sht_dataGraph("node1hmci9mjqx249","http://repairs.shacl.org") .
sht_shapesGraph("node1hmci9mjqx249","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/and_002","node1hmci9mjqx250") .
sh_ValidationReport("node1hmci9mjqx250") .
sh_conforms("node1hmci9mjqx250","false") .
xsd_boolean("false") .
sh_result("node1hmci9mjqx250","node1hmci9mjqx251") .
sh_ValidationResult("node1hmci9mjqx251") .
sh_focusNode("node1hmci9mjqx251","ex_InvalidInstance1") .
sh_resultSeverity("node1hmci9mjqx251","sh_Violation") .
sh_sourceConstraintComponent("node1hmci9mjqx251","sh_AndConstraintComponent") .
sh_sourceShape("node1hmci9mjqx251","ex_AndShape") .
sh_value("node1hmci9mjqx251","ex_InvalidInstance1") .
sh_result("node1hmci9mjqx250","node1hmci9mjqx252") .
sh_ValidationResult("node1hmci9mjqx252") .
sh_focusNode("node1hmci9mjqx252","ex_InvalidInstance2") .
sh_resultSeverity("node1hmci9mjqx252","sh_Violation") .
sh_sourceConstraintComponent("node1hmci9mjqx252","sh_AndConstraintComponent") .
sh_sourceShape("node1hmci9mjqx252","ex_AndShape") .
sh_value("node1hmci9mjqx252","ex_InvalidInstance2") .
mf_status("http://repairs.shacl.org/and_002","sht_approved") .

% Shape Targets

targetNode("ex_ValidInstance1",ex_AndShape) .
targetNode("ex_InvalidInstance1",ex_AndShape) .
targetNode("ex_InvalidInstance2",ex_AndShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_AndShape_("ex_ValidInstance1","t*"):-actualTarget("ex_ValidInstance1",ex_AndShape) .
ex_AndShape_("ex_InvalidInstance1","t*"):-actualTarget("ex_InvalidInstance1",ex_AndShape) .
ex_AndShape_("ex_InvalidInstance2","t*"):-actualTarget("ex_InvalidInstance2",ex_AndShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .
node1hmci9mjqx256_st_(X,Y,"t*"):-node1hmci9mjqx256_(X,_),ex_property_(X,Y,"t*") .
node1hmci9mjqx257_st_(X,Y,"t*"):-node1hmci9mjqx257_(X,_),ex_property_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_AndShape_(X,"t*") .
node1hmci9mjqx256_(X,"t*"):-s0_(X,"t*") .
node1hmci9mjqx256_(X,"f"):-s0_(X,"f") .

% sh:maxCount 1 for node1hmci9mjqx256
s1_(X,"t*"):-node1hmci9mjqx256_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
ex_property_(X,@new(s2,X,ex_property,1..1),"t"):-choose(s2,X,ex_property,1) .
ex_property_(X,@new(s2,X,ex_property,1..2),"t"):-choose(s2,X,ex_property,2) .
choose(s2,X,ex_property,2);choose(s2,X,ex_property,1);choose(s2,X,ex_property,0):-s2_(X,"t*") .
(C-1) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s3_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-1):-s2_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>1 .
ex_property_(X,Y,"f"):-s2_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
2 {s3_(Y,"t*"):ex_property_(X,Y,"t**")} 2:-s2_(X,"t*") .


% sh:minCount 0 for node1hmci9mjqx256
s4_(X,"t*"):-node1hmci9mjqx256_(X,"t*") .
choose(s4,X,ex_property,0):-s4_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s5_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s4_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s5_(Y,"t*"):ex_property_(X,Y,"t**")} 0:-s4_(X,"t*") .


% universal for node1hmci9mjqx256
s6_(X,"t*"):-node1hmci9mjqx256_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
ex_property_(X,@new(s7,X,ex_property,1..1),"t"):-choose(s7,X,ex_property,1) .
choose(s7,X,ex_property,1);choose(s7,X,ex_property,0):-s7_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s8_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s7_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s8_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s4_(X,"f");s6_(X,"f"):-node1hmci9mjqx256_(X,"f") .
s10_(X,"t*"):-ex_AndShape_(X,"t*") .
node1hmci9mjqx257_(X,"t*"):-s10_(X,"t*") .
node1hmci9mjqx257_(X,"f"):-s10_(X,"f") .

% sh:minCount 1 for node1hmci9mjqx257
s11_(X,"t*"):-node1hmci9mjqx257_(X,"t*") .
ex_property_(X,@new(s11,X,ex_property,1..1),"t"):-choose(s11,X,ex_property,1) .
choose(s11,X,ex_property,1);choose(s11,X,ex_property,0):-s11_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s12_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s11_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s12_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s11_(X,"t*") .


% universal for node1hmci9mjqx257
s13_(X,"t*"):-node1hmci9mjqx257_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_property_(X,@new(s14,X,ex_property,1..1),"t"):-choose(s14,X,ex_property,1) .
choose(s14,X,ex_property,1);choose(s14,X,ex_property,0):-s14_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s15_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s14_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s15_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-node1hmci9mjqx257_(X,"f") .
s0_(X,"f");s10_(X,"f"):-ex_AndShape_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
node1hmci9mjqx256_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),node1hmci9mjqx256_st_(X,Y,"t*"),not node1hmci9mjqx256_st_(X,Y,"f") .
node1hmci9mjqx257_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),node1hmci9mjqx257_st_(X,Y,"t*"),not node1hmci9mjqx257_st_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s3_(X,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
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
