
% Graph Data

ex_Person("ex_InvalidPerson") .
ex_firstName("ex_InvalidPerson","George") .
xsd_string("George") .
ex_firstName("ex_InvalidPerson","John") .
xsd_string("John") .
rdfs_label("ex_InvalidPerson","Invalid person") .
xsd_string("Invalid person") .
rdfs_Class("ex_Person") .
rdfs_label("ex_Person","Person") .
xsd_string("Person") .
rdfs_subClassOf("ex_Person","rdfs_Resource") .
sh_NodeShape("ex_PersonShape") .
sh_property("ex_PersonShape","ex_PersonShape-firstName") .
sh_targetClass("ex_PersonShape","ex_Person") .
sh_targetNode("ex_PersonShape","ex_ValidResource") .
sh_path("ex_PersonShape-firstName","ex_firstName") .
sh_datatype("ex_PersonShape-firstName","xsd_string") .
sh_maxCount("ex_PersonShape-firstName","1") .
xsd_integer("1") .
ex_Person("ex_ValidResource") .
ex_firstName("ex_ValidResource","John") .
rdfs_label("ex_ValidResource","Valid resource") .
xsd_string("Valid resource") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388254") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388254","http://repairs.shacl.org/maxCount-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388254","rdf_nil") .
sht_Validate("http://repairs.shacl.org/maxCount-001") .
rdfs_label("http://repairs.shacl.org/maxCount-001","Test of sh:maxCount at property shape 001") .
xsd_string("Test of sh:maxCount at property shape 001") .
mf_action("http://repairs.shacl.org/maxCount-001","bnode_0465bff3129e4f3db89e6d0321ce7388255") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388255","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388255","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/maxCount-001","bnode_0465bff3129e4f3db89e6d0321ce7388256") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388256") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388256","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388256","bnode_0465bff3129e4f3db89e6d0321ce7388257") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388257") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388257","ex_InvalidPerson") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388257","ex_firstName") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388257","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388257","sh_MaxCountConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388257","ex_PersonShape-firstName") .
mf_status("http://repairs.shacl.org/maxCount-001","sht_approved") .
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

targetNode("ex_InvalidPerson",ex_PersonShape) .
targetNode("ex_ValidResource",ex_PersonShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_PersonShape_("ex_InvalidPerson","t*"):-actualTarget("ex_InvalidPerson",ex_PersonShape) .
ex_PersonShape_("ex_ValidResource","t*"):-actualTarget("ex_ValidResource",ex_PersonShape) .

% Annotation Rules

ex_firstName_(X,Y,"t*"):-ex_firstName(X,Y) .
ex_firstName_(X,Y,"t*"):-ex_firstName_(X,Y,"t") .
ex_PersonShape__firstName_st_(X,Y,"t*"):-ex_PersonShape__firstName_(X,_),ex_firstName_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__firstName_(X,"t*"):-s0_(X,"t*") .
ex_PersonShape__firstName_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for ex_PersonShape__firstName
s1_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s2_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s1_(X,"t*") .

xsd_string_(X,"t"):-s2_(X,"t*") .
xsd_string_(X,"f"):-s2_(X,"f") .

% universal for ex_PersonShape__firstName
s3_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_firstName_(X,@new(s4,X,ex_firstName,1..1),"t"):-choose(s4,X,ex_firstName,1) .
choose(s4,X,ex_firstName,1);choose(s4,X,ex_firstName,0):-s4_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s5_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

xsd_string_(X,"t"):-s6_(X,"t*") .
xsd_string_(X,"f"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-ex_PersonShape__firstName_(X,"f") .
s7_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__firstName_(X,"t*"):-s7_(X,"t*") .
ex_PersonShape__firstName_(X,"f"):-s7_(X,"f") .

s8_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s9_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s9_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s8_(X,"t*") .


% sh:maxCount 1 for ex_PersonShape__firstName
s10_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_firstName_(X,@new(s11,X,ex_firstName,1..1),"t"):-choose(s11,X,ex_firstName,1) .
ex_firstName_(X,@new(s11,X,ex_firstName,1..2),"t"):-choose(s11,X,ex_firstName,2) .
choose(s11,X,ex_firstName,2);choose(s11,X,ex_firstName,1);choose(s11,X,ex_firstName,0):-s11_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s12_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s11_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s12_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s11_(X,"t*") .


s13_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_firstName_(X,@new(s14,X,ex_firstName,1..1),"t"):-choose(s14,X,ex_firstName,1) .
choose(s14,X,ex_firstName,1);choose(s14,X,ex_firstName,0):-s14_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s15_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s10_(X,"f");s13_(X,"f"):-ex_PersonShape__firstName_(X,"f") .
s17_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__firstName_(X,"t*"):-s17_(X,"t*") .
ex_PersonShape__firstName_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s19_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s19_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s18_(X,"t*") .

xsd_string_(X,"t"):-s19_(X,"t*") .
xsd_string_(X,"f"):-s19_(X,"f") .

s20_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
ex_firstName_(X,@new(s21,X,ex_firstName,1..1),"t"):-choose(s21,X,ex_firstName,1) .
choose(s21,X,ex_firstName,1);choose(s21,X,ex_firstName,0):-s21_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s22_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .

xsd_string_(X,"t"):-s23_(X,"t*") .
xsd_string_(X,"f"):-s23_(X,"f") .

s18_(X,"f");s20_(X,"f"):-ex_PersonShape__firstName_(X,"f") .
s24_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__firstName_(X,"t*"):-s24_(X,"t*") .
ex_PersonShape__firstName_(X,"f"):-s24_(X,"f") .

s25_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s26_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s26_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s25_(X,"t*") .


s27_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
ex_firstName_(X,@new(s28,X,ex_firstName,1..1),"t"):-choose(s28,X,ex_firstName,1) .
ex_firstName_(X,@new(s28,X,ex_firstName,1..2),"t"):-choose(s28,X,ex_firstName,2) .
choose(s28,X,ex_firstName,2);choose(s28,X,ex_firstName,1);choose(s28,X,ex_firstName,0):-s28_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s29_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s28_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s29_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s28_(X,"t*") .


s30_(X,"t*"):-ex_PersonShape__firstName_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
ex_firstName_(X,@new(s31,X,ex_firstName,1..1),"t"):-choose(s31,X,ex_firstName,1) .
choose(s31,X,ex_firstName,1);choose(s31,X,ex_firstName,0):-s31_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s32_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s32_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s31_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .


s25_(X,"f");s27_(X,"f");s30_(X,"f"):-ex_PersonShape__firstName_(X,"f") .
s0_(X,"f");s7_(X,"f");s17_(X,"f");s24_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
ex_PersonShape__firstName_st_(X,Y,"t**"):-ex_firstName_(X,Y,"t**"),ex_PersonShape__firstName_st_(X,Y,"t*"),not ex_PersonShape__firstName_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s26_(X,"f") .
:-s29_(X,"f") .
:-s33_(X,"f") .

% Change Set Rules

add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
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
