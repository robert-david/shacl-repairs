
% Graph Data

sh_NodeShape("ex_AndShape") .
sh_and("ex_AndShape","bnode_31e6d6f256764fe1980ffabd79a50e72269") .
rdf_first("bnode_31e6d6f256764fe1980ffabd79a50e72269","ex_SuperShape") .
rdf_rest("bnode_31e6d6f256764fe1980ffabd79a50e72269","bnode_31e6d6f256764fe1980ffabd79a50e72270") .
rdf_first("bnode_31e6d6f256764fe1980ffabd79a50e72270","bnode_31e6d6f256764fe1980ffabd79a50e72271") .
sh_property("bnode_31e6d6f256764fe1980ffabd79a50e72271","bnode_31e6d6f256764fe1980ffabd79a50e72272") .
sh_path("bnode_31e6d6f256764fe1980ffabd79a50e72272","ex_property") .
sh_maxCount("bnode_31e6d6f256764fe1980ffabd79a50e72272","1") .
xsd_integer("1") .
rdf_rest("bnode_31e6d6f256764fe1980ffabd79a50e72270","rdf_nil") .
sh_targetNode("ex_AndShape","ex_InvalidInstance1") .
sh_targetNode("ex_AndShape","ex_InvalidInstance2") .
sh_targetNode("ex_AndShape","ex_ValidInstance1") .
ex_property("ex_InvalidInstance2","One") .
xsd_string("One") .
ex_property("ex_InvalidInstance2","Two") .
xsd_string("Two") .
sh_NodeShape("ex_SuperShape") .
sh_property("ex_SuperShape","bnode_31e6d6f256764fe1980ffabd79a50e72273") .
sh_path("bnode_31e6d6f256764fe1980ffabd79a50e72273","ex_property") .
sh_minCount("bnode_31e6d6f256764fe1980ffabd79a50e72273","1") .
ex_property("ex_ValidInstance1","One") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_31e6d6f256764fe1980ffabd79a50e72274") .
rdf_first("bnode_31e6d6f256764fe1980ffabd79a50e72274","http://repairs.shacl.org/and-002") .
rdf_rest("bnode_31e6d6f256764fe1980ffabd79a50e72274","rdf_nil") .
sht_Validate("http://repairs.shacl.org/and-002") .
rdfs_label("http://repairs.shacl.org/and-002","Test of sh:and at node shape 002") .
xsd_string("Test of sh:and at node shape 002") .
mf_action("http://repairs.shacl.org/and-002","bnode_31e6d6f256764fe1980ffabd79a50e72275") .
sht_dataGraph("bnode_31e6d6f256764fe1980ffabd79a50e72275","http://repairs.shacl.org") .
sht_shapesGraph("bnode_31e6d6f256764fe1980ffabd79a50e72275","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/and-002","bnode_31e6d6f256764fe1980ffabd79a50e72276") .
sh_ValidationReport("bnode_31e6d6f256764fe1980ffabd79a50e72276") .
sh_conforms("bnode_31e6d6f256764fe1980ffabd79a50e72276","false") .
xsd_boolean("false") .
sh_result("bnode_31e6d6f256764fe1980ffabd79a50e72276","bnode_31e6d6f256764fe1980ffabd79a50e72277") .
sh_ValidationResult("bnode_31e6d6f256764fe1980ffabd79a50e72277") .
sh_focusNode("bnode_31e6d6f256764fe1980ffabd79a50e72277","ex_InvalidInstance1") .
sh_resultSeverity("bnode_31e6d6f256764fe1980ffabd79a50e72277","sh_Violation") .
sh_sourceConstraintComponent("bnode_31e6d6f256764fe1980ffabd79a50e72277","sh_AndConstraintComponent") .
sh_sourceShape("bnode_31e6d6f256764fe1980ffabd79a50e72277","ex_AndShape") .
sh_value("bnode_31e6d6f256764fe1980ffabd79a50e72277","ex_InvalidInstance1") .
sh_result("bnode_31e6d6f256764fe1980ffabd79a50e72276","bnode_31e6d6f256764fe1980ffabd79a50e72278") .
sh_ValidationResult("bnode_31e6d6f256764fe1980ffabd79a50e72278") .
sh_focusNode("bnode_31e6d6f256764fe1980ffabd79a50e72278","ex_InvalidInstance2") .
sh_resultSeverity("bnode_31e6d6f256764fe1980ffabd79a50e72278","sh_Violation") .
sh_sourceConstraintComponent("bnode_31e6d6f256764fe1980ffabd79a50e72278","sh_AndConstraintComponent") .
sh_sourceShape("bnode_31e6d6f256764fe1980ffabd79a50e72278","ex_AndShape") .
sh_value("bnode_31e6d6f256764fe1980ffabd79a50e72278","ex_InvalidInstance2") .
mf_status("http://repairs.shacl.org/and-002","sht_approved") .
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
bnode_31e6d6f256764fe1980ffabd79a50e72282_st_(X,Y,"t*"):-bnode_31e6d6f256764fe1980ffabd79a50e72282_(X,_),ex_property_(X,Y,"t*") .
bnode_31e6d6f256764fe1980ffabd79a50e72283_st_(X,Y,"t*"):-bnode_31e6d6f256764fe1980ffabd79a50e72283_(X,_),ex_property_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_AndShape_(X,"t*") .
bnode_31e6d6f256764fe1980ffabd79a50e72282_(X,"t*"):-s0_(X,"t*") .
bnode_31e6d6f256764fe1980ffabd79a50e72282_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for bnode_31e6d6f256764fe1980ffabd79a50e72282
s1_(X,"t*"):-bnode_31e6d6f256764fe1980ffabd79a50e72282_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s2_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_property_(X,Y,"t**")} 0:-s1_(X,"t*") .


% sh:maxCount 1 for bnode_31e6d6f256764fe1980ffabd79a50e72282
s3_(X,"t*"):-bnode_31e6d6f256764fe1980ffabd79a50e72282_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_property_(X,@new(s4,X,ex_property,1..1),"t"):-choose(s4,X,ex_property,1) .
ex_property_(X,@new(s4,X,ex_property,1..2),"t"):-choose(s4,X,ex_property,2) .
choose(s4,X,ex_property,2);choose(s4,X,ex_property,1);choose(s4,X,ex_property,0):-s4_(X,"t*") .
(C-1) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s5_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-1):-s4_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>1 .
2 {s5_(Y,"t*"):ex_property_(X,Y,"t**")} 2:-s4_(X,"t*") .


% universal for bnode_31e6d6f256764fe1980ffabd79a50e72282
s6_(X,"t*"):-bnode_31e6d6f256764fe1980ffabd79a50e72282_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
ex_property_(X,@new(s7,X,ex_property,1..1),"t"):-choose(s7,X,ex_property,1) .
choose(s7,X,ex_property,1);choose(s7,X,ex_property,0):-s7_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s8_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s8_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s3_(X,"f");s6_(X,"f"):-bnode_31e6d6f256764fe1980ffabd79a50e72282_(X,"f") .
s10_(X,"t*"):-ex_AndShape_(X,"t*") .
bnode_31e6d6f256764fe1980ffabd79a50e72283_(X,"t*"):-s10_(X,"t*") .
bnode_31e6d6f256764fe1980ffabd79a50e72283_(X,"f"):-s10_(X,"f") .

% sh:minCount 1 for bnode_31e6d6f256764fe1980ffabd79a50e72283
s11_(X,"t*"):-bnode_31e6d6f256764fe1980ffabd79a50e72283_(X,"t*") .
ex_property_(X,@new(s11,X,ex_property,1..1),"t"):-choose(s11,X,ex_property,1) .
choose(s11,X,ex_property,1);choose(s11,X,ex_property,0):-s11_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s12_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s11_(X,"t*") .


% universal for bnode_31e6d6f256764fe1980ffabd79a50e72283
s13_(X,"t*"):-bnode_31e6d6f256764fe1980ffabd79a50e72283_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_property_(X,@new(s14,X,ex_property,1..1),"t"):-choose(s14,X,ex_property,1) .
choose(s14,X,ex_property,1);choose(s14,X,ex_property,0):-s14_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s15_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-bnode_31e6d6f256764fe1980ffabd79a50e72283_(X,"f") .
s0_(X,"f");s10_(X,"f"):-ex_AndShape_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
bnode_31e6d6f256764fe1980ffabd79a50e72282_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),bnode_31e6d6f256764fe1980ffabd79a50e72282_st_(X,Y,"t*"),not bnode_31e6d6f256764fe1980ffabd79a50e72282_st_(X,Y,"f") .
bnode_31e6d6f256764fe1980ffabd79a50e72283_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),bnode_31e6d6f256764fe1980ffabd79a50e72283_st_(X,Y,"t*"),not bnode_31e6d6f256764fe1980ffabd79a50e72283_st_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s2_(X,"f") .
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
