
% Graph Data

ex_MalePerson("ex_InvalidMalePerson") .
ex_gender("ex_InvalidMalePerson","female") .
xsd_string("female") .
rdfs_label("ex_InvalidMalePerson","Invalid male person") .
xsd_string("Invalid male person") .
rdfs_Class("ex_MalePerson") .
rdfs_label("ex_MalePerson","Male person") .
xsd_string("Male person") .
rdfs_subClassOf("ex_MalePerson","rdfs_Resource") .
sh_NodeShape("ex_PersonShape") .
rdfs_label("ex_PersonShape","Person shape") .
xsd_string("Person shape") .
sh_property("ex_PersonShape","ex_PersonShape-gender") .
sh_targetClass("ex_PersonShape","ex_MalePerson") .
sh_path("ex_PersonShape-gender","ex_gender") .
rdfs_label("ex_PersonShape-gender","gender") .
xsd_string("gender") .
sh_datatype("ex_PersonShape-gender","xsd_string") .
sh_hasValue("ex_PersonShape-gender","male") .
xsd_string("male") .
ex_MalePerson("ex_ValidMalePerson1") .
ex_gender("ex_ValidMalePerson1","male") .
ex_MalePerson("ex_ValidMalePerson2") .
ex_gender("ex_ValidMalePerson2","female") .
ex_gender("ex_ValidMalePerson2","male") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce738833") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce738833","http://repairs.shacl.org/hasValue-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce738833","rdf_nil") .
sht_Validate("http://repairs.shacl.org/hasValue-001") .
rdfs_label("http://repairs.shacl.org/hasValue-001","Test of sh:hasValue at property shape 001") .
xsd_string("Test of sh:hasValue at property shape 001") .
mf_action("http://repairs.shacl.org/hasValue-001","bnode_0465bff3129e4f3db89e6d0321ce738834") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce738834","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce738834","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/hasValue-001","bnode_0465bff3129e4f3db89e6d0321ce738835") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce738835") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce738835","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce738835","bnode_0465bff3129e4f3db89e6d0321ce738836") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce738836") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce738836","ex_InvalidMalePerson") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce738836","ex_gender") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce738836","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce738836","sh_HasValueConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce738836","ex_PersonShape-gender") .
mf_status("http://repairs.shacl.org/hasValue-001","sht_approved") .
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

targetNode("ex_InvalidMalePerson",ex_PersonShape) .
targetNode("ex_ValidMalePerson1",ex_PersonShape) .
targetNode("ex_ValidMalePerson2",ex_PersonShape) .

% Constants

const("male") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_PersonShape_("ex_InvalidMalePerson","t*"):-actualTarget("ex_InvalidMalePerson",ex_PersonShape) .
ex_PersonShape_("ex_ValidMalePerson1","t*"):-actualTarget("ex_ValidMalePerson1",ex_PersonShape) .
ex_PersonShape_("ex_ValidMalePerson2","t*"):-actualTarget("ex_ValidMalePerson2",ex_PersonShape) .

% Annotation Rules

ex_gender_(X,Y,"t*"):-ex_gender(X,Y) .
ex_gender_(X,Y,"t*"):-ex_gender_(X,Y,"t") .
ex_PersonShape__gender_st_(X,Y,"t*"):-ex_PersonShape__gender_(X,_),ex_gender_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__gender_(X,"t*"):-s0_(X,"t*") .
ex_PersonShape__gender_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for ex_PersonShape__gender
s1_(X,"t*"):-ex_PersonShape__gender_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
(C-0) {ex_gender_(X,Y,"f"):ex_gender_(X,Y,"t*");s2_(Y,"f"):ex_gender_(X,Y,"t*"),not ex_gender_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_gender_(X,Y,"t*")}=C,C>0 .
ex_gender_(X,Y,"f"):-ex_gender_(X,Y,"t*"),ex_gender_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_gender_(X,Y,"t**")} 1:-s1_(X,"t*") .

xsd_string_(X,"t"):-s2_(X,"t*") .
xsd_string_(X,"f"):-s2_(X,"f") .

% universal for ex_PersonShape__gender
s3_(X,"t*"):-ex_PersonShape__gender_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_gender_(X,@new(s4,X,ex_gender,1..1),"t"):-choose(s4,X,ex_gender,1) .
choose(s4,X,ex_gender,1);choose(s4,X,ex_gender,0):-s4_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
(C-0) {ex_gender_(X,Y,"f"):ex_gender_(X,Y,"t*");s5_(Y,"f"):ex_gender_(X,Y,"t*"),not ex_gender_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_gender_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_gender_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

xsd_string_(X,"t"):-s6_(X,"t*") .
xsd_string_(X,"f"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-ex_PersonShape__gender_(X,"f") .
s7_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape__gender_(X,"t*"):-s7_(X,"t*") .
ex_PersonShape__gender_(X,"f"):-s7_(X,"f") .

s8_(X,"t*"):-ex_PersonShape__gender_(X,"t*") .
ex_gender_(X,@new(s8,X,ex_gender,1..1),"t"):-choose(s8,X,ex_gender,1) .
choose(s8,X,ex_gender,1);choose(s8,X,ex_gender,0):-s8_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s8_(X,"t*") .
(C-0) {ex_gender_(X,Y,"f"):ex_gender_(X,Y,"t*");s9_(Y,"f"):ex_gender_(X,Y,"t*"),not ex_gender_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_gender_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):ex_gender_(X,Y,"t**")} 1:-s8_(X,"t*") .


s10_(X,"t*"):-ex_PersonShape__gender_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s10_(X,"t*") .
(C-0) {ex_gender_(X,Y,"f"):ex_gender_(X,Y,"t*");s11_(Y,"f"):ex_gender_(X,Y,"t*"),not ex_gender_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:ex_gender_(X,Y,"t*")}=C,C>0 .
0 {s11_(Y,"t*"):ex_gender_(X,Y,"t**")} 1:-s10_(X,"t*") .


s12_(X,"t*"):-ex_PersonShape__gender_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
ex_gender_(X,@new(s13,X,ex_gender,1..1),"t"):-choose(s13,X,ex_gender,1) .
choose(s13,X,ex_gender,1);choose(s13,X,ex_gender,0):-s13_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s13_(X,"t*") .
(C-0) {ex_gender_(X,Y,"f"):ex_gender_(X,Y,"t*");s14_(Y,"f"):ex_gender_(X,Y,"t*"),not ex_gender_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:ex_gender_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):ex_gender_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s8_(X,"f");s10_(X,"f");s12_(X,"f"):-ex_PersonShape__gender_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_gender_(X,Y,"t**"):-ex_gender_(X,Y,"t*"),not ex_gender_(X,Y,"f") .
ex_PersonShape__gender_st_(X,Y,"t**"):-ex_gender_(X,Y,"t**"),ex_PersonShape__gender_st_(X,Y,"t*"),not ex_PersonShape__gender_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_gender_(X,Y,"t"),ex_gender_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s9_(X,"t*"),X!="male" .
:-s9_(X,"f"),X="male" .
:-s11_(X,"f") .
:-s15_(X,"f") .

% Change Set Rules

add(ex_gender(X,Y)):-ex_gender_(X,Y,"t**"),not ex_gender(X,Y) .
del(ex_gender(X,Y)):-ex_gender_(X,Y,"f"),ex_gender(X,Y) .
#minimize { 1@1,X,Y: ex_gender_(X,Y,"t"), const(Y) } .
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
