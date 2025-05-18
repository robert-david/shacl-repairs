
% Graph Data

sh_NodeShape("ex_AddressShape") .
sh_property("ex_AddressShape","ex_AddressShape-postalCode") .
sh_path("ex_AddressShape-postalCode","ex_postalCode") .
sh_datatype("ex_AddressShape-postalCode","xsd_string") .
sh_maxCount("ex_AddressShape-postalCode","1") .
xsd_integer("1") .
ex_Person("ex_Bob") .
ex_address("ex_Bob","ex_BobsAddress") .
ex_postalCode("ex_BobsAddress","1234") .
xsd_string("1234") .
rdfs_Class("ex_Person") .
rdfs_label("ex_Person","Person") .
xsd_string("Person") .
sh_NodeShape("ex_PersonShape") .
sh_property("ex_PersonShape","ex_PersonShape-address") .
sh_targetClass("ex_PersonShape","ex_Person") .
sh_path("ex_PersonShape-address","ex_address") .
sh_minCount("ex_PersonShape-address","1") .
sh_node("ex_PersonShape-address","ex_AddressShape") .
ex_Person("ex_Reto") .
ex_address("ex_Reto","ex_RetosAddress") .
ex_postalCode("ex_RetosAddress","5678") .
xsd_integer("5678") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388528") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388528","http://repairs.shacl.org/node-002") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388528","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node-002") .
rdfs_label("http://repairs.shacl.org/node-002","Test of sh:node at property shape 002") .
xsd_string("Test of sh:node at property shape 002") .
mf_action("http://repairs.shacl.org/node-002","bnode_0465bff3129e4f3db89e6d0321ce7388529") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388529","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388529","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node-002","bnode_0465bff3129e4f3db89e6d0321ce7388530") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388530") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388530","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388530","bnode_0465bff3129e4f3db89e6d0321ce7388531") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388531") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388531","ex_Reto") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388531","ex_address") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388531","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388531","sh_NodeConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388531","ex_PersonShape-address") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388531","ex_RetosAddress") .
mf_status("http://repairs.shacl.org/node-002","sht_approved") .
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

targetNode("ex_Bob",ex_PersonShape) .
targetNode("ex_Reto",ex_PersonShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_PersonShape_("ex_Bob","t*"):-actualTarget("ex_Bob",ex_PersonShape) .
ex_PersonShape_("ex_Reto","t*"):-actualTarget("ex_Reto",ex_PersonShape) .

% Annotation Rules

ex_address_(X,Y,"t*"):-ex_address(X,Y) .
ex_address_(X,Y,"t*"):-ex_address_(X,Y,"t") .
ex_PersonShape__address_st_(X,Y,"t*"):-ex_PersonShape__address_(X,_),ex_address_(X,Y,"t*") .
ex_postalCode_(X,Y,"t*"):-ex_postalCode(X,Y) .
ex_postalCode_(X,Y,"t*"):-ex_postalCode_(X,Y,"t") .
ex_AddressShape__postalCode_st_(X,Y,"t*"):-ex_AddressShape__postalCode_(X,_),ex_postalCode_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__address_(X,"t*"):-s0_(X,"t*") .
ex_PersonShape__address_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for ex_PersonShape__address
s1_(X,"t*"):-ex_PersonShape__address_(X,"t*") .
ex_address_(X,@new(s1,X,ex_address,1..1),"t"):-choose(s1,X,ex_address,1) .
choose(s1,X,ex_address,1);choose(s1,X,ex_address,0):-s1_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s2_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for ex_PersonShape__address
s3_(X,"t*"):-ex_PersonShape__address_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_address_(X,@new(s4,X,ex_address,1..1),"t"):-choose(s4,X,ex_address,1) .
choose(s4,X,ex_address,1);choose(s4,X,ex_address,0):-s4_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s5_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-ex_PersonShape__address_(X,"f") .
s7_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__address_(X,"t*"):-s7_(X,"t*") .
ex_PersonShape__address_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for ex_PersonShape__address
s8_(X,"t*"):-ex_PersonShape__address_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s9_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
0 {s9_(Y,"t*"):ex_address_(X,Y,"t**")} 0:-s8_(X,"t*") .

ex_AddressShape__postalCode_(X,"t*"):-s9_(X,"t*") .
ex_AddressShape__postalCode_(X,"f"):-s9_(X,"f") .

% sh:minCount 0 for ex_AddressShape__postalCode
s10_(X,"t*"):-ex_AddressShape__postalCode_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s11_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
ex_postalCode_(X,Y,"f"):-ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
0 {s11_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 0:-s10_(X,"t*") .

xsd_string_(X,"t"):-s11_(X,"t*") .
xsd_string_(X,"f"):-s11_(X,"f") .

% sh:maxCount 1 for ex_AddressShape__postalCode
s12_(X,"t*"):-ex_AddressShape__postalCode_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
ex_postalCode_(X,@new(s13,X,ex_postalCode,1..1),"t"):-choose(s13,X,ex_postalCode,1) .
ex_postalCode_(X,@new(s13,X,ex_postalCode,1..2),"t"):-choose(s13,X,ex_postalCode,2) .
choose(s13,X,ex_postalCode,2);choose(s13,X,ex_postalCode,1);choose(s13,X,ex_postalCode,0):-s13_(X,"t*") .
(C-1) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s14_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-1):-s13_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>1 .
2 {s14_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 2:-s13_(X,"t*") .

xsd_string_(X,"t"):-s14_(X,"t*") .
xsd_string_(X,"f"):-s14_(X,"f") .

% universal for ex_AddressShape__postalCode
s15_(X,"t*"):-ex_AddressShape__postalCode_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
ex_postalCode_(X,@new(s16,X,ex_postalCode,1..1),"t"):-choose(s16,X,ex_postalCode,1) .
choose(s16,X,ex_postalCode,1);choose(s16,X,ex_postalCode,0):-s16_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s17_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s16_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
1 {s17_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s16_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .

xsd_string_(X,"t"):-s18_(X,"t*") .
xsd_string_(X,"f"):-s18_(X,"f") .

s10_(X,"f");s12_(X,"f");s15_(X,"f"):-ex_AddressShape__postalCode_(X,"f") .

s19_(X,"t*"):-ex_PersonShape__address_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
ex_address_(X,@new(s20,X,ex_address,1..1),"t"):-choose(s20,X,ex_address,1) .
choose(s20,X,ex_address,1);choose(s20,X,ex_address,0):-s20_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s21_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
1 {s21_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .

ex_AddressShape__postalCode_(X,"t*"):-s22_(X,"t*") .
ex_AddressShape__postalCode_(X,"f"):-s22_(X,"f") .

s23_(X,"t*"):-ex_AddressShape__postalCode_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .
ex_postalCode_(X,@new(s24,X,ex_postalCode,1..1),"t"):-choose(s24,X,ex_postalCode,1) .
ex_postalCode_(X,@new(s24,X,ex_postalCode,1..2),"t"):-choose(s24,X,ex_postalCode,2) .
choose(s24,X,ex_postalCode,2);choose(s24,X,ex_postalCode,1);choose(s24,X,ex_postalCode,0):-s24_(X,"t*") .
(C-1) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s25_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-1):-s24_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>1 .
2 {s25_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 2:-s24_(X,"t*") .

xsd_string_(X,"t"):-s25_(X,"t*") .
xsd_string_(X,"f"):-s25_(X,"f") .

s26_(X,"t*"):-ex_AddressShape__postalCode_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s27_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s26_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
0 {s27_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 0:-s26_(X,"t*") .

xsd_string_(X,"t"):-s27_(X,"t*") .
xsd_string_(X,"f"):-s27_(X,"f") .

s28_(X,"t*"):-ex_AddressShape__postalCode_(X,"t*") .
s29_(X,"f"):-s28_(X,"t*") .
s29_(X,"t*"):-s28_(X,"f") .
ex_postalCode_(X,@new(s29,X,ex_postalCode,1..1),"t"):-choose(s29,X,ex_postalCode,1) .
choose(s29,X,ex_postalCode,1);choose(s29,X,ex_postalCode,0):-s29_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s30_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s29_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
1 {s30_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s29_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .

xsd_string_(X,"t"):-s31_(X,"t*") .
xsd_string_(X,"f"):-s31_(X,"f") .

s23_(X,"f");s26_(X,"f");s28_(X,"f"):-ex_AddressShape__postalCode_(X,"f") .

s8_(X,"f");s19_(X,"f"):-ex_PersonShape__address_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_address_(X,Y,"t**"):-ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f") .
ex_PersonShape__address_st_(X,Y,"t**"):-ex_address_(X,Y,"t**"),ex_PersonShape__address_st_(X,Y,"t*"),not ex_PersonShape__address_st_(X,Y,"f") .
ex_postalCode_(X,Y,"t**"):-ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f") .
ex_AddressShape__postalCode_st_(X,Y,"t**"):-ex_postalCode_(X,Y,"t**"),ex_AddressShape__postalCode_st_(X,Y,"t*"),not ex_AddressShape__postalCode_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_address_(X,Y,"t"),ex_address_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-ex_postalCode_(X,Y,"t"),ex_postalCode_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .

% Change Set Rules

add(ex_address(X,Y)):-ex_address_(X,Y,"t**"),not ex_address(X,Y) .
del(ex_address(X,Y)):-ex_address_(X,Y,"f"),ex_address(X,Y) .
add(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"t**"),not ex_postalCode(X,Y) .
del(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"f"),ex_postalCode(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
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
