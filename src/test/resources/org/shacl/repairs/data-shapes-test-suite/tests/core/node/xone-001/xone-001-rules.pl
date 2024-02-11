
% Graph Data

ex_Person("ex_Bob") .
ex_firstName("ex_Bob","Robert") .
xsd_string("Robert") .
ex_lastName("ex_Bob","Coin") .
xsd_string("Coin") .
ex_Person("ex_Carla") .
ex_fullName("ex_Carla","Carla Miller") .
xsd_string("Carla Miller") .
ex_Person("ex_Dory") .
ex_firstName("ex_Dory","Dory") .
xsd_string("Dory") .
ex_fullName("ex_Dory","Dory Dunce") .
xsd_string("Dory Dunce") .
ex_lastName("ex_Dory","Dunce") .
xsd_string("Dunce") .
sh_NodeShape("ex_XoneConstraintExampleShape") .
sh_targetClass("ex_XoneConstraintExampleShape","ex_Person") .
sh_xone("ex_XoneConstraintExampleShape","node1hmci9mjqx55") .
rdf_first("node1hmci9mjqx55","node1hmci9mjqx56") .
sh_property("node1hmci9mjqx56","node1hmci9mjqx57") .
sh_path("node1hmci9mjqx57","ex_fullName") .
sh_minCount("node1hmci9mjqx57","1") .
xsd_integer("1") .
rdf_rest("node1hmci9mjqx55","node1hmci9mjqx58") .
rdf_first("node1hmci9mjqx58","node1hmci9mjqx59") .
sh_property("node1hmci9mjqx59","node1hmci9mjqx60") .
sh_path("node1hmci9mjqx60","ex_firstName") .
sh_minCount("node1hmci9mjqx60","1") .
sh_property("node1hmci9mjqx59","node1hmci9mjqx61") .
sh_path("node1hmci9mjqx61","ex_lastName") .
sh_minCount("node1hmci9mjqx61","1") .
rdf_rest("node1hmci9mjqx58","rdf_nil") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hmci9mjqx62") .
rdf_first("node1hmci9mjqx62","http://repairs.shacl.org/xone_001") .
rdf_rest("node1hmci9mjqx62","rdf_nil") .
sht_Validate("http://repairs.shacl.org/xone_001") .
rdfs_label("http://repairs.shacl.org/xone_001","Test of sh:xone at node shape 001") .
xsd_string("Test of sh:xone at node shape 001") .
mf_action("http://repairs.shacl.org/xone_001","node1hmci9mjqx63") .
sht_dataGraph("node1hmci9mjqx63","http://repairs.shacl.org") .
sht_shapesGraph("node1hmci9mjqx63","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/xone_001","node1hmci9mjqx64") .
sh_ValidationReport("node1hmci9mjqx64") .
sh_conforms("node1hmci9mjqx64","false") .
xsd_boolean("false") .
sh_result("node1hmci9mjqx64","node1hmci9mjqx65") .
sh_ValidationResult("node1hmci9mjqx65") .
sh_focusNode("node1hmci9mjqx65","ex_Dory") .
sh_resultSeverity("node1hmci9mjqx65","sh_Violation") .
sh_sourceConstraintComponent("node1hmci9mjqx65","sh_XoneConstraintComponent") .
sh_sourceShape("node1hmci9mjqx65","ex_XoneConstraintExampleShape") .
sh_value("node1hmci9mjqx65","ex_Dory") .
mf_status("http://repairs.shacl.org/xone_001","sht_approved") .

% Shape Targets

targetNode("ex_Carla",ex_XoneConstraintExampleShape) .
targetNode("ex_Bob",ex_XoneConstraintExampleShape) .
targetNode("ex_Dory",ex_XoneConstraintExampleShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_XoneConstraintExampleShape_("ex_Carla","t*"):-actualTarget("ex_Carla",ex_XoneConstraintExampleShape) .
ex_XoneConstraintExampleShape_("ex_Bob","t*"):-actualTarget("ex_Bob",ex_XoneConstraintExampleShape) .
ex_XoneConstraintExampleShape_("ex_Dory","t*"):-actualTarget("ex_Dory",ex_XoneConstraintExampleShape) .

% Annotation Rules

ex_fullName_(X,Y,"t*"):-ex_fullName(X,Y) .
ex_fullName_(X,Y,"t*"):-ex_fullName_(X,Y,"t") .
node1hmci9mjqx68_st_(X,Y,"t*"):-node1hmci9mjqx68_(X,_),ex_fullName_(X,Y,"t*") .
ex_lastName_(X,Y,"t*"):-ex_lastName(X,Y) .
ex_lastName_(X,Y,"t*"):-ex_lastName_(X,Y,"t") .
node1hmci9mjqx72_st_(X,Y,"t*"):-node1hmci9mjqx72_(X,_),ex_lastName_(X,Y,"t*") .
ex_firstName_(X,Y,"t*"):-ex_firstName(X,Y) .
ex_firstName_(X,Y,"t*"):-ex_firstName_(X,Y,"t") .
node1hmci9mjqx71_st_(X,Y,"t*"):-node1hmci9mjqx71_(X,_),ex_firstName_(X,Y,"t*") .

% Repair Rules

s0_(X,"f"):-ex_XoneConstraintExampleShape_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
s3_(X,"f"):-s2_(X,"f") .
node1hmci9mjqx68_(X,"t*"):-s3_(X,"t*") .
node1hmci9mjqx68_(X,"f"):-s3_(X,"f") .

% sh:minCount 1 for node1hmci9mjqx68
s4_(X,"t*"):-node1hmci9mjqx68_(X,"t*") .
ex_fullName_(X,@new(s4,X,ex_fullName,1..1),"t"):-choose(s4,X,ex_fullName,1) .
choose(s4,X,ex_fullName,1);choose(s4,X,ex_fullName,0):-s4_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s5_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
ex_fullName_(X,Y,"f"):-s4_(X,"f"),ex_fullName_(X,Y,"t*"),ex_fullName_(X,Y,"f") .
1 {s5_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s4_(X,"t*") .


% universal for node1hmci9mjqx68
s6_(X,"t*"):-node1hmci9mjqx68_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
ex_fullName_(X,@new(s7,X,ex_fullName,1..1),"t"):-choose(s7,X,ex_fullName,1) .
choose(s7,X,ex_fullName,1);choose(s7,X,ex_fullName,0):-s7_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s8_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
ex_fullName_(X,Y,"f"):-s7_(X,"f"),ex_fullName_(X,Y,"t*"),ex_fullName_(X,Y,"f") .
1 {s8_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s4_(X,"f");s6_(X,"f"):-node1hmci9mjqx68_(X,"f") .
s3_(X,"t*"):-s2_(X,"t*") .
s10_(X,"t*"):-s0_(X,"t*") .
node1hmci9mjqx72_(X,"t*"):-s10_(X,"t*") .

% sh:minCount 1 for node1hmci9mjqx72
s11_(X,"t*"):-node1hmci9mjqx72_(X,"t*") .
ex_lastName_(X,@new(s11,X,ex_lastName,1..1),"t"):-choose(s11,X,ex_lastName,1) .
choose(s11,X,ex_lastName,1);choose(s11,X,ex_lastName,0):-s11_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s12_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s11_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s12_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s11_(X,"t*") .


% universal for node1hmci9mjqx72
s13_(X,"t*"):-node1hmci9mjqx72_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_lastName_(X,@new(s14,X,ex_lastName,1..1),"t"):-choose(s14,X,ex_lastName,1) .
choose(s14,X,ex_lastName,1);choose(s14,X,ex_lastName,0):-s14_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s15_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s14_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s15_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-node1hmci9mjqx72_(X,"f") .
node1hmci9mjqx71_(X,"t*"):-s10_(X,"t*") .

% sh:minCount 1 for node1hmci9mjqx71
s17_(X,"t*"):-node1hmci9mjqx71_(X,"t*") .
ex_firstName_(X,@new(s17,X,ex_firstName,1..1),"t"):-choose(s17,X,ex_firstName,1) .
choose(s17,X,ex_firstName,1);choose(s17,X,ex_firstName,0):-s17_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s18_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s17_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s18_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s17_(X,"t*") .


% universal for node1hmci9mjqx71
s19_(X,"t*"):-node1hmci9mjqx71_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
ex_firstName_(X,@new(s20,X,ex_firstName,1..1),"t"):-choose(s20,X,ex_firstName,1) .
choose(s20,X,ex_firstName,1);choose(s20,X,ex_firstName,0):-s20_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s21_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s20_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s21_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .


s17_(X,"f");s19_(X,"f"):-node1hmci9mjqx71_(X,"f") .
node1hmci9mjqx72_(X,"f");node1hmci9mjqx71_(X,"f"):-s10_(X,"f") .
s1_(X,"f");s10_(X,"f"):-s0_(X,"f") .
s23_(X,"f"):-ex_XoneConstraintExampleShape_(X,"f") .
s24_(X,"t*"):-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
s26_(X,"f"):-s25_(X,"f") .
node1hmci9mjqx72_(X,"t*"):-s26_(X,"t*") .

s27_(X,"t*"):-node1hmci9mjqx72_(X,"t*") .
ex_lastName_(X,@new(s27,X,ex_lastName,1..1),"t"):-choose(s27,X,ex_lastName,1) .
choose(s27,X,ex_lastName,1);choose(s27,X,ex_lastName,0):-s27_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s28_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s27_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s28_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s27_(X,"t*") .


s29_(X,"t*"):-node1hmci9mjqx72_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
ex_lastName_(X,@new(s30,X,ex_lastName,1..1),"t"):-choose(s30,X,ex_lastName,1) .
choose(s30,X,ex_lastName,1);choose(s30,X,ex_lastName,0):-s30_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s31_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s30_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s31_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s27_(X,"f");s29_(X,"f"):-node1hmci9mjqx72_(X,"f") .
node1hmci9mjqx71_(X,"t*"):-s26_(X,"t*") .

s33_(X,"t*"):-node1hmci9mjqx71_(X,"t*") .
ex_firstName_(X,@new(s33,X,ex_firstName,1..1),"t"):-choose(s33,X,ex_firstName,1) .
choose(s33,X,ex_firstName,1);choose(s33,X,ex_firstName,0):-s33_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s34_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s33_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s33_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s34_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s33_(X,"t*") .


s35_(X,"t*"):-node1hmci9mjqx71_(X,"t*") .
s36_(X,"f"):-s35_(X,"t*") .
s36_(X,"t*"):-s35_(X,"f") .
ex_firstName_(X,@new(s36,X,ex_firstName,1..1),"t"):-choose(s36,X,ex_firstName,1) .
choose(s36,X,ex_firstName,1);choose(s36,X,ex_firstName,0):-s36_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s37_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s36_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s36_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s37_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s36_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .


s33_(X,"f");s35_(X,"f"):-node1hmci9mjqx71_(X,"f") .
node1hmci9mjqx72_(X,"f");node1hmci9mjqx71_(X,"f"):-s26_(X,"f") .
s26_(X,"t*"):-s25_(X,"t*") .
s39_(X,"t*"):-s23_(X,"t*") .
node1hmci9mjqx68_(X,"t*"):-s39_(X,"t*") .
node1hmci9mjqx68_(X,"f"):-s39_(X,"f") .

s40_(X,"t*"):-node1hmci9mjqx68_(X,"t*") .
ex_fullName_(X,@new(s40,X,ex_fullName,1..1),"t"):-choose(s40,X,ex_fullName,1) .
choose(s40,X,ex_fullName,1);choose(s40,X,ex_fullName,0):-s40_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s41_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s40_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
ex_fullName_(X,Y,"f"):-s40_(X,"f"),ex_fullName_(X,Y,"t*"),ex_fullName_(X,Y,"f") .
1 {s41_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s40_(X,"t*") .


s42_(X,"t*"):-node1hmci9mjqx68_(X,"t*") .
s43_(X,"f"):-s42_(X,"t*") .
s43_(X,"t*"):-s42_(X,"f") .
ex_fullName_(X,@new(s43,X,ex_fullName,1..1),"t"):-choose(s43,X,ex_fullName,1) .
choose(s43,X,ex_fullName,1);choose(s43,X,ex_fullName,0):-s43_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s44_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
ex_fullName_(X,Y,"f"):-s43_(X,"f"),ex_fullName_(X,Y,"t*"),ex_fullName_(X,Y,"f") .
1 {s44_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s43_(X,"t*") .
s45_(X,"f"):-s44_(X,"t*") .
s45_(X,"t*"):-s44_(X,"f") .


s40_(X,"f");s42_(X,"f"):-node1hmci9mjqx68_(X,"f") .
s24_(X,"f");s39_(X,"f"):-s23_(X,"f") .
s0_(X,"t*");s23_(X,"t*"):-ex_XoneConstraintExampleShape_(X,"t*") .

% Interpretation Rules

ex_fullName_(X,Y,"t**"):-ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f") .
node1hmci9mjqx68_st_(X,Y,"t**"):-ex_fullName_(X,Y,"t**"),node1hmci9mjqx68_st_(X,Y,"t*"),not node1hmci9mjqx68_st_(X,Y,"f") .
ex_lastName_(X,Y,"t**"):-ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f") .
node1hmci9mjqx72_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),node1hmci9mjqx72_st_(X,Y,"t*"),not node1hmci9mjqx72_st_(X,Y,"f") .
ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
node1hmci9mjqx71_st_(X,Y,"t**"):-ex_firstName_(X,Y,"t**"),node1hmci9mjqx71_st_(X,Y,"t*"),not node1hmci9mjqx71_st_(X,Y,"f") .

% Program Constraints

:-ex_fullName_(X,Y,"t"),ex_fullName_(X,Y,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-ex_lastName_(X,Y,"t"),ex_lastName_(X,Y,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-s18_(X,"f") .
:-s22_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-s34_(X,"f") .
:-s38_(X,"f") .
:-s41_(X,"f") .
:-s45_(X,"f") .

% Change Set Rules

add(ex_fullName(X,Y)):-ex_fullName_(X,Y,"t**"),not ex_fullName(X,Y) .
del(ex_fullName(X,Y)):-ex_fullName_(X,Y,"f"),ex_fullName(X,Y) .
add(ex_lastName(X,Y)):-ex_lastName_(X,Y,"t**"),not ex_lastName(X,Y) .
del(ex_lastName(X,Y)):-ex_lastName_(X,Y,"f"),ex_lastName(X,Y) .
add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
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
