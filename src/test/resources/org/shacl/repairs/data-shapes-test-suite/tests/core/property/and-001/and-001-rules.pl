
% Graph Data

sh_NodeShape("ex_AddressShape") .
rdfs_label("ex_AddressShape","Address shape") .
xsd_string("Address shape") .
sh_property("ex_AddressShape","ex_AddressShape-address") .
sh_targetNode("ex_AddressShape","ex_InvalidResource1") .
sh_targetNode("ex_AddressShape","ex_InvalidResource2") .
sh_targetNode("ex_AddressShape","ex_InvalidResource3") .
sh_targetNode("ex_AddressShape","ex_ValidResource1") .
sh_path("ex_AddressShape-address","ex_address") .
sh_and("ex_AddressShape-address","bnode_0465bff3129e4f3db89e6d0321ce7388553") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388553","bnode_0465bff3129e4f3db89e6d0321ce7388554") .
sh_property("bnode_0465bff3129e4f3db89e6d0321ce7388554","bnode_0465bff3129e4f3db89e6d0321ce7388555") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388555","ex_suburb") .
sh_minCount("bnode_0465bff3129e4f3db89e6d0321ce7388555","1") .
xsd_integer("1") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388553","bnode_0465bff3129e4f3db89e6d0321ce7388556") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388556","bnode_0465bff3129e4f3db89e6d0321ce7388557") .
sh_property("bnode_0465bff3129e4f3db89e6d0321ce7388557","bnode_0465bff3129e4f3db89e6d0321ce7388558") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388558","ex_postalCode") .
sh_minCount("bnode_0465bff3129e4f3db89e6d0321ce7388558","1") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388556","rdf_nil") .
rdfs_Resource("ex_InvalidResource1") .
ex_address("ex_InvalidResource1","bnode_b61065") .
rdfs_Resource("ex_InvalidResource2") .
ex_address("ex_InvalidResource2","bnode_b31477") .
rdfs_Resource("ex_InvalidResource3") .
ex_address("ex_InvalidResource3","bnode_b94057") .
rdfs_Resource("ex_ValidResource1") .
ex_address("ex_ValidResource1","bnode_0465bff3129e4f3db89e6d0321ce7388559") .
ex_postalCode("bnode_0465bff3129e4f3db89e6d0321ce7388559","4879") .
xsd_integer("4879") .
ex_suburb("bnode_0465bff3129e4f3db89e6d0321ce7388559","ex_KewarraBeach") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388560") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388560","http://repairs.shacl.org/and-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388560","rdf_nil") .
sht_Validate("http://repairs.shacl.org/and-001") .
rdfs_label("http://repairs.shacl.org/and-001","Test of sh:and at property shape 001") .
xsd_string("Test of sh:and at property shape 001") .
mf_action("http://repairs.shacl.org/and-001","bnode_0465bff3129e4f3db89e6d0321ce7388561") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388561","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388561","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/and-001","bnode_0465bff3129e4f3db89e6d0321ce7388562") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388562") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388562","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388562","bnode_0465bff3129e4f3db89e6d0321ce7388563") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388563") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388563","ex_InvalidResource1") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388563","ex_address") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388563","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388563","sh_AndConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388563","ex_AddressShape-address") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388563","bnode_b61065") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388562","bnode_0465bff3129e4f3db89e6d0321ce7388564") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388564") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388564","ex_InvalidResource2") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388564","ex_address") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388564","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388564","sh_AndConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388564","ex_AddressShape-address") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388564","bnode_b31477") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388562","bnode_0465bff3129e4f3db89e6d0321ce7388565") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388565") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388565","ex_InvalidResource3") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388565","ex_address") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388565","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388565","sh_AndConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388565","ex_AddressShape-address") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388565","bnode_b94057") .
mf_status("http://repairs.shacl.org/and-001","sht_approved") .
ex_suburb("bnode_b31477","ex_KewarraBeach") .
ex_postalCode("bnode_b61065","4879") .
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

targetNode("ex_InvalidResource1",ex_AddressShape) .
targetNode("ex_ValidResource1",ex_AddressShape) .
targetNode("ex_InvalidResource3",ex_AddressShape) .
targetNode("ex_InvalidResource2",ex_AddressShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_AddressShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_AddressShape) .
ex_AddressShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_AddressShape) .
ex_AddressShape_("ex_InvalidResource3","t*"):-actualTarget("ex_InvalidResource3",ex_AddressShape) .
ex_AddressShape_("ex_InvalidResource2","t*"):-actualTarget("ex_InvalidResource2",ex_AddressShape) .

% Annotation Rules

ex_address_(X,Y,"t*"):-ex_address(X,Y) .
ex_address_(X,Y,"t*"):-ex_address_(X,Y,"t") .
ex_AddressShape__address_st_(X,Y,"t*"):-ex_AddressShape__address_(X,_),ex_address_(X,Y,"t*") .
ex_suburb_(X,Y,"t*"):-ex_suburb(X,Y) .
ex_suburb_(X,Y,"t*"):-ex_suburb_(X,Y,"t") .
bnode_0465bff3129e4f3db89e6d0321ce7388568_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,_),ex_suburb_(X,Y,"t*") .
ex_postalCode_(X,Y,"t*"):-ex_postalCode(X,Y) .
ex_postalCode_(X,Y,"t*"):-ex_postalCode_(X,Y,"t") .
bnode_0465bff3129e4f3db89e6d0321ce7388571_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,_),ex_postalCode_(X,Y,"t*") .

% Repair Rules

ex_AddressShape__address_(X,"t*"):-ex_AddressShape_(X,"t*") .
ex_AddressShape__address_(X,"f"):-ex_AddressShape_(X,"f") .

% sh:minCount 0 for ex_AddressShape__address
s0_(X,"t*"):-ex_AddressShape__address_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s1_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_address_(X,Y,"t**")} 0:-s0_(X,"t*") .

s2_(X,"t*"):-s1_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"t*"):-s2_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"f"):-s2_(X,"f") .

% sh:minCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388568
s3_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"t*") .
ex_suburb_(X,@new(s3,X,ex_suburb,1..1),"t"):-choose(s3,X,ex_suburb,1) .
choose(s3,X,ex_suburb,1);choose(s3,X,ex_suburb,0):-s3_(X,"t*") .
(C-0) {ex_suburb_(X,Y,"f"):ex_suburb_(X,Y,"t*");s4_(Y,"f"):ex_suburb_(X,Y,"t*"),not ex_suburb_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_suburb_(X,Y,"t*")}=C,C>0 .
ex_suburb_(X,Y,"f"):-ex_suburb_(X,Y,"t*"),ex_suburb_(X,Y,"f") .
1 {s4_(Y,"t*"):ex_suburb_(X,Y,"t**")} 1:-s3_(X,"t*") .


% universal for bnode_0465bff3129e4f3db89e6d0321ce7388568
s5_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
ex_suburb_(X,@new(s6,X,ex_suburb,1..1),"t"):-choose(s6,X,ex_suburb,1) .
choose(s6,X,ex_suburb,1);choose(s6,X,ex_suburb,0):-s6_(X,"t*") .
(C-0) {ex_suburb_(X,Y,"f"):ex_suburb_(X,Y,"t*");s7_(Y,"f"):ex_suburb_(X,Y,"t*"),not ex_suburb_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:ex_suburb_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):ex_suburb_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s3_(X,"f");s5_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"f") .
s9_(X,"t*"):-s1_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"t*"):-s9_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"f"):-s9_(X,"f") .

% sh:minCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388571
s10_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"t*") .
ex_postalCode_(X,@new(s10,X,ex_postalCode,1..1),"t"):-choose(s10,X,ex_postalCode,1) .
choose(s10,X,ex_postalCode,1);choose(s10,X,ex_postalCode,0):-s10_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s11_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
ex_postalCode_(X,Y,"f"):-ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
1 {s11_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s10_(X,"t*") .


% universal for bnode_0465bff3129e4f3db89e6d0321ce7388571
s12_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
ex_postalCode_(X,@new(s13,X,ex_postalCode,1..1),"t"):-choose(s13,X,ex_postalCode,1) .
choose(s13,X,ex_postalCode,1);choose(s13,X,ex_postalCode,0):-s13_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s14_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s10_(X,"f");s12_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"f") .
s2_(X,"f");s9_(X,"f"):-s1_(X,"f") .

% universal for ex_AddressShape__address
s16_(X,"t*"):-ex_AddressShape__address_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
ex_address_(X,@new(s17,X,ex_address,1..1),"t"):-choose(s17,X,ex_address,1) .
choose(s17,X,ex_address,1);choose(s17,X,ex_address,0):-s17_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s18_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
1 {s18_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s17_(X,"t*") .
s19_(X,"f"):-s18_(X,"t*") .
s19_(X,"t*"):-s18_(X,"f") .

s20_(X,"t*"):-s19_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"t*"):-s20_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"f"):-s20_(X,"f") .

s21_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"t*") .
ex_suburb_(X,@new(s21,X,ex_suburb,1..1),"t"):-choose(s21,X,ex_suburb,1) .
choose(s21,X,ex_suburb,1);choose(s21,X,ex_suburb,0):-s21_(X,"t*") .
(C-0) {ex_suburb_(X,Y,"f"):ex_suburb_(X,Y,"t*");s22_(Y,"f"):ex_suburb_(X,Y,"t*"),not ex_suburb_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:ex_suburb_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):ex_suburb_(X,Y,"t**")} 1:-s21_(X,"t*") .


s23_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .
ex_suburb_(X,@new(s24,X,ex_suburb,1..1),"t"):-choose(s24,X,ex_suburb,1) .
choose(s24,X,ex_suburb,1);choose(s24,X,ex_suburb,0):-s24_(X,"t*") .
(C-0) {ex_suburb_(X,Y,"f"):ex_suburb_(X,Y,"t*");s25_(Y,"f"):ex_suburb_(X,Y,"t*"),not ex_suburb_(X,Y,"f")} (C-0):-s24_(X,"f"),#count {Y:ex_suburb_(X,Y,"t*")}=C,C>0 .
1 {s25_(Y,"t*"):ex_suburb_(X,Y,"t**")} 1:-s24_(X,"t*") .
s26_(X,"f"):-s25_(X,"t*") .
s26_(X,"t*"):-s25_(X,"f") .


s21_(X,"f");s23_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388568_(X,"f") .
s27_(X,"t*"):-s19_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"t*"):-s27_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"f"):-s27_(X,"f") .

s28_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"t*") .
ex_postalCode_(X,@new(s28,X,ex_postalCode,1..1),"t"):-choose(s28,X,ex_postalCode,1) .
choose(s28,X,ex_postalCode,1);choose(s28,X,ex_postalCode,0):-s28_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s29_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
1 {s29_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s28_(X,"t*") .


s30_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
ex_postalCode_(X,@new(s31,X,ex_postalCode,1..1),"t"):-choose(s31,X,ex_postalCode,1) .
choose(s31,X,ex_postalCode,1);choose(s31,X,ex_postalCode,0):-s31_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s32_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
1 {s32_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s31_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .


s28_(X,"f");s30_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388571_(X,"f") .
s20_(X,"f");s27_(X,"f"):-s19_(X,"f") .

s0_(X,"f");s16_(X,"f"):-ex_AddressShape__address_(X,"f") .

% Interpretation Rules

ex_address_(X,Y,"t**"):-ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f") .
ex_AddressShape__address_st_(X,Y,"t**"):-ex_address_(X,Y,"t**"),ex_AddressShape__address_st_(X,Y,"t*"),not ex_AddressShape__address_st_(X,Y,"f") .
ex_suburb_(X,Y,"t**"):-ex_suburb_(X,Y,"t*"),not ex_suburb_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388568_st_(X,Y,"t**"):-ex_suburb_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce7388568_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce7388568_st_(X,Y,"f") .
ex_postalCode_(X,Y,"t**"):-ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388571_st_(X,Y,"t**"):-ex_postalCode_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce7388571_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce7388571_st_(X,Y,"f") .

% Program Constraints

:-ex_address_(X,Y,"t"),ex_address_(X,Y,"f") .
:-ex_suburb_(X,Y,"t"),ex_suburb_(X,Y,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .
:-ex_postalCode_(X,Y,"t"),ex_postalCode_(X,Y,"f") .
:-s11_(X,"f") .
:-s15_(X,"f") .
:-s22_(X,"f") .
:-s26_(X,"f") .
:-s29_(X,"f") .
:-s33_(X,"f") .

% Change Set Rules

add(ex_address(X,Y)):-ex_address_(X,Y,"t**"),not ex_address(X,Y) .
del(ex_address(X,Y)):-ex_address_(X,Y,"f"),ex_address(X,Y) .
add(ex_suburb(X,Y)):-ex_suburb_(X,Y,"t**"),not ex_suburb(X,Y) .
del(ex_suburb(X,Y)):-ex_suburb_(X,Y,"f"),ex_suburb(X,Y) .
add(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"t**"),not ex_postalCode(X,Y) .
del(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"f"),ex_postalCode(X,Y) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

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
return tostring('new_' .. result)
end
#end .


#script (lua)
function gt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>y then return "t" else return "f" end
end

function lt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<y then return "t" else return "f" end
end

function geq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>=y then return "t" else return "f" end
end

function leq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<=y then return "t" else return "f" end
end

function getNumbers(X,Y)
local x,_ = string.gsub(tostring(X),"\"","")
local y,_ = string.gsub(tostring(Y),"\"","")
local xn = tonumber(x)
local yn = tonumber(y)
return xn,yn
end

function isNew(X)
return string.match(tostring(X), '^"new')
end
#end .
