
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
sh_xone("ex_XoneConstraintExampleShape","bnode_31316dda75104524af7c5e1311ab479056") .
rdf_first("bnode_31316dda75104524af7c5e1311ab479056","bnode_31316dda75104524af7c5e1311ab479057") .
sh_property("bnode_31316dda75104524af7c5e1311ab479057","bnode_31316dda75104524af7c5e1311ab479058") .
sh_path("bnode_31316dda75104524af7c5e1311ab479058","ex_fullName") .
sh_minCount("bnode_31316dda75104524af7c5e1311ab479058","1") .
xsd_integer("1") .
rdf_rest("bnode_31316dda75104524af7c5e1311ab479056","bnode_31316dda75104524af7c5e1311ab479059") .
rdf_first("bnode_31316dda75104524af7c5e1311ab479059","bnode_31316dda75104524af7c5e1311ab479060") .
sh_property("bnode_31316dda75104524af7c5e1311ab479060","bnode_31316dda75104524af7c5e1311ab479061") .
sh_path("bnode_31316dda75104524af7c5e1311ab479061","ex_firstName") .
sh_minCount("bnode_31316dda75104524af7c5e1311ab479061","1") .
sh_property("bnode_31316dda75104524af7c5e1311ab479060","bnode_31316dda75104524af7c5e1311ab479062") .
sh_path("bnode_31316dda75104524af7c5e1311ab479062","ex_lastName") .
sh_minCount("bnode_31316dda75104524af7c5e1311ab479062","1") .
rdf_rest("bnode_31316dda75104524af7c5e1311ab479059","rdf_nil") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_31316dda75104524af7c5e1311ab479063") .
rdf_first("bnode_31316dda75104524af7c5e1311ab479063","http://repairs.shacl.org/xone_001") .
rdf_rest("bnode_31316dda75104524af7c5e1311ab479063","rdf_nil") .
sht_Validate("http://repairs.shacl.org/xone_001") .
rdfs_label("http://repairs.shacl.org/xone_001","Test of sh:xone at node shape 001") .
xsd_string("Test of sh:xone at node shape 001") .
mf_action("http://repairs.shacl.org/xone_001","bnode_31316dda75104524af7c5e1311ab479064") .
sht_dataGraph("bnode_31316dda75104524af7c5e1311ab479064","http://repairs.shacl.org") .
sht_shapesGraph("bnode_31316dda75104524af7c5e1311ab479064","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/xone_001","bnode_31316dda75104524af7c5e1311ab479065") .
sh_ValidationReport("bnode_31316dda75104524af7c5e1311ab479065") .
sh_conforms("bnode_31316dda75104524af7c5e1311ab479065","false") .
xsd_boolean("false") .
sh_result("bnode_31316dda75104524af7c5e1311ab479065","bnode_31316dda75104524af7c5e1311ab479066") .
sh_ValidationResult("bnode_31316dda75104524af7c5e1311ab479066") .
sh_focusNode("bnode_31316dda75104524af7c5e1311ab479066","ex_Dory") .
sh_resultSeverity("bnode_31316dda75104524af7c5e1311ab479066","sh_Violation") .
sh_sourceConstraintComponent("bnode_31316dda75104524af7c5e1311ab479066","sh_XoneConstraintComponent") .
sh_sourceShape("bnode_31316dda75104524af7c5e1311ab479066","ex_XoneConstraintExampleShape") .
sh_value("bnode_31316dda75104524af7c5e1311ab479066","ex_Dory") .
mf_status("http://repairs.shacl.org/xone_001","sht_approved") .
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

ex_firstName_(X,Y,"t*"):-ex_firstName(X,Y) .
ex_firstName_(X,Y,"t*"):-ex_firstName_(X,Y,"t") .
bnode_31316dda75104524af7c5e1311ab479072_st_(X,Y,"t*"):-bnode_31316dda75104524af7c5e1311ab479072_(X,_),ex_firstName_(X,Y,"t*") .
ex_lastName_(X,Y,"t*"):-ex_lastName(X,Y) .
ex_lastName_(X,Y,"t*"):-ex_lastName_(X,Y,"t") .
bnode_31316dda75104524af7c5e1311ab479073_st_(X,Y,"t*"):-bnode_31316dda75104524af7c5e1311ab479073_(X,_),ex_lastName_(X,Y,"t*") .
ex_fullName_(X,Y,"t*"):-ex_fullName(X,Y) .
ex_fullName_(X,Y,"t*"):-ex_fullName_(X,Y,"t") .
bnode_31316dda75104524af7c5e1311ab479069_st_(X,Y,"t*"):-bnode_31316dda75104524af7c5e1311ab479069_(X,_),ex_fullName_(X,Y,"t*") .

% Repair Rules

s0_(X,"f"):-ex_XoneConstraintExampleShape_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
s3_(X,"f"):-s2_(X,"f") .
bnode_31316dda75104524af7c5e1311ab479072_(X,"t*"):-s3_(X,"t*") .

% sh:minCount 1 for bnode_31316dda75104524af7c5e1311ab479072
s4_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479072_(X,"t*") .
ex_firstName_(X,@new(s4,X,ex_firstName,1..1),"t"):-choose(s4,X,ex_firstName,1) .
choose(s4,X,ex_firstName,1);choose(s4,X,ex_firstName,0):-s4_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s5_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s5_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .


% universal for bnode_31316dda75104524af7c5e1311ab479072
s6_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479072_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
ex_firstName_(X,@new(s7,X,ex_firstName,1..1),"t"):-choose(s7,X,ex_firstName,1) .
choose(s7,X,ex_firstName,1);choose(s7,X,ex_firstName,0):-s7_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s8_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s8_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s4_(X,"f");s6_(X,"f"):-bnode_31316dda75104524af7c5e1311ab479072_(X,"f") .
bnode_31316dda75104524af7c5e1311ab479073_(X,"t*"):-s3_(X,"t*") .

% sh:minCount 1 for bnode_31316dda75104524af7c5e1311ab479073
s10_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479073_(X,"t*") .
ex_lastName_(X,@new(s10,X,ex_lastName,1..1),"t"):-choose(s10,X,ex_lastName,1) .
choose(s10,X,ex_lastName,1);choose(s10,X,ex_lastName,0):-s10_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s11_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s11_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s10_(X,"t*") .


% universal for bnode_31316dda75104524af7c5e1311ab479073
s12_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479073_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
ex_lastName_(X,@new(s13,X,ex_lastName,1..1),"t"):-choose(s13,X,ex_lastName,1) .
choose(s13,X,ex_lastName,1);choose(s13,X,ex_lastName,0):-s13_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s14_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s10_(X,"f");s12_(X,"f"):-bnode_31316dda75104524af7c5e1311ab479073_(X,"f") .
bnode_31316dda75104524af7c5e1311ab479072_(X,"f");bnode_31316dda75104524af7c5e1311ab479073_(X,"f"):-s3_(X,"f") .
s3_(X,"t*"):-s2_(X,"t*") .
s16_(X,"t*"):-s0_(X,"t*") .
bnode_31316dda75104524af7c5e1311ab479069_(X,"t*"):-s16_(X,"t*") .
bnode_31316dda75104524af7c5e1311ab479069_(X,"f"):-s16_(X,"f") .

% sh:minCount 1 for bnode_31316dda75104524af7c5e1311ab479069
s17_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479069_(X,"t*") .
ex_fullName_(X,@new(s17,X,ex_fullName,1..1),"t"):-choose(s17,X,ex_fullName,1) .
choose(s17,X,ex_fullName,1);choose(s17,X,ex_fullName,0):-s17_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s18_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
ex_fullName_(X,Y,"f"):-ex_fullName_(X,Y,"t*"),ex_fullName_(X,Y,"f") .
1 {s18_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s17_(X,"t*") .


% universal for bnode_31316dda75104524af7c5e1311ab479069
s19_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479069_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
ex_fullName_(X,@new(s20,X,ex_fullName,1..1),"t"):-choose(s20,X,ex_fullName,1) .
choose(s20,X,ex_fullName,1);choose(s20,X,ex_fullName,0):-s20_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s21_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
1 {s21_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .


s17_(X,"f");s19_(X,"f"):-bnode_31316dda75104524af7c5e1311ab479069_(X,"f") .
s1_(X,"f");s16_(X,"f"):-s0_(X,"f") .
s23_(X,"f"):-ex_XoneConstraintExampleShape_(X,"f") .
s24_(X,"t*"):-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
s26_(X,"f"):-s25_(X,"f") .
bnode_31316dda75104524af7c5e1311ab479069_(X,"t*"):-s26_(X,"t*") .
bnode_31316dda75104524af7c5e1311ab479069_(X,"f"):-s26_(X,"f") .

s27_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479069_(X,"t*") .
ex_fullName_(X,@new(s27,X,ex_fullName,1..1),"t"):-choose(s27,X,ex_fullName,1) .
choose(s27,X,ex_fullName,1);choose(s27,X,ex_fullName,0):-s27_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s28_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
1 {s28_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s27_(X,"t*") .


s29_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479069_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
ex_fullName_(X,@new(s30,X,ex_fullName,1..1),"t"):-choose(s30,X,ex_fullName,1) .
choose(s30,X,ex_fullName,1);choose(s30,X,ex_fullName,0):-s30_(X,"t*") .
(C-0) {ex_fullName_(X,Y,"f"):ex_fullName_(X,Y,"t*");s31_(Y,"f"):ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:ex_fullName_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):ex_fullName_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s27_(X,"f");s29_(X,"f"):-bnode_31316dda75104524af7c5e1311ab479069_(X,"f") .
s26_(X,"t*"):-s25_(X,"t*") .
s33_(X,"t*"):-s23_(X,"t*") .
bnode_31316dda75104524af7c5e1311ab479072_(X,"t*"):-s33_(X,"t*") .

s34_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479072_(X,"t*") .
ex_firstName_(X,@new(s34,X,ex_firstName,1..1),"t"):-choose(s34,X,ex_firstName,1) .
choose(s34,X,ex_firstName,1);choose(s34,X,ex_firstName,0):-s34_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s35_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s35_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s34_(X,"t*") .


s36_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479072_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .
ex_firstName_(X,@new(s37,X,ex_firstName,1..1),"t"):-choose(s37,X,ex_firstName,1) .
choose(s37,X,ex_firstName,1);choose(s37,X,ex_firstName,0):-s37_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s38_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s38_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s37_(X,"t*") .
s39_(X,"f"):-s38_(X,"t*") .
s39_(X,"t*"):-s38_(X,"f") .


s34_(X,"f");s36_(X,"f"):-bnode_31316dda75104524af7c5e1311ab479072_(X,"f") .
bnode_31316dda75104524af7c5e1311ab479073_(X,"t*"):-s33_(X,"t*") .

s40_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479073_(X,"t*") .
ex_lastName_(X,@new(s40,X,ex_lastName,1..1),"t"):-choose(s40,X,ex_lastName,1) .
choose(s40,X,ex_lastName,1);choose(s40,X,ex_lastName,0):-s40_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s41_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s40_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s41_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s40_(X,"t*") .


s42_(X,"t*"):-bnode_31316dda75104524af7c5e1311ab479073_(X,"t*") .
s43_(X,"f"):-s42_(X,"t*") .
s43_(X,"t*"):-s42_(X,"f") .
ex_lastName_(X,@new(s43,X,ex_lastName,1..1),"t"):-choose(s43,X,ex_lastName,1) .
choose(s43,X,ex_lastName,1);choose(s43,X,ex_lastName,0):-s43_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s44_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s44_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s43_(X,"t*") .
s45_(X,"f"):-s44_(X,"t*") .
s45_(X,"t*"):-s44_(X,"f") .


s40_(X,"f");s42_(X,"f"):-bnode_31316dda75104524af7c5e1311ab479073_(X,"f") .
bnode_31316dda75104524af7c5e1311ab479072_(X,"f");bnode_31316dda75104524af7c5e1311ab479073_(X,"f"):-s33_(X,"f") .
s24_(X,"f");s33_(X,"f"):-s23_(X,"f") .
s0_(X,"t*");s23_(X,"t*"):-ex_XoneConstraintExampleShape_(X,"t*") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
bnode_31316dda75104524af7c5e1311ab479072_st_(X,Y,"t**"):-ex_firstName_(X,Y,"t**"),bnode_31316dda75104524af7c5e1311ab479072_st_(X,Y,"t*"),not bnode_31316dda75104524af7c5e1311ab479072_st_(X,Y,"f") .
ex_lastName_(X,Y,"t**"):-ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f") .
bnode_31316dda75104524af7c5e1311ab479073_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),bnode_31316dda75104524af7c5e1311ab479073_st_(X,Y,"t*"),not bnode_31316dda75104524af7c5e1311ab479073_st_(X,Y,"f") .
ex_fullName_(X,Y,"t**"):-ex_fullName_(X,Y,"t*"),not ex_fullName_(X,Y,"f") .
bnode_31316dda75104524af7c5e1311ab479069_st_(X,Y,"t**"):-ex_fullName_(X,Y,"t**"),bnode_31316dda75104524af7c5e1311ab479069_st_(X,Y,"t*"),not bnode_31316dda75104524af7c5e1311ab479069_st_(X,Y,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-ex_lastName_(X,Y,"t"),ex_lastName_(X,Y,"f") .
:-s11_(X,"f") .
:-s15_(X,"f") .
:-ex_fullName_(X,Y,"t"),ex_fullName_(X,Y,"f") .
:-s18_(X,"f") .
:-s22_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-s35_(X,"f") .
:-s39_(X,"f") .
:-s41_(X,"f") .
:-s45_(X,"f") .

% Change Set Rules

add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
add(ex_lastName(X,Y)):-ex_lastName_(X,Y,"t**"),not ex_lastName(X,Y) .
del(ex_lastName(X,Y)):-ex_lastName_(X,Y,"f"),ex_lastName(X,Y) .
add(ex_fullName(X,Y)):-ex_fullName_(X,Y,"t**"),not ex_fullName(X,Y) .
del(ex_fullName(X,Y)):-ex_fullName_(X,Y,"f"),ex_fullName(X,Y) .
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
