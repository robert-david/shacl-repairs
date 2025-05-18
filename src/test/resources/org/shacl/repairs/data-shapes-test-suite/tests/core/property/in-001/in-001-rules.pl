
% Graph Data

ex_ShapeClass("ex_InvalidInstance1") .
ex_property("ex_InvalidInstance1","D") .
xsd_string("D") .
rdfs_label("ex_InvalidInstance1","Invalid instance1") .
xsd_string("Invalid instance1") .
rdfs_Class("ex_ShapeClass") .
sh_NodeShape("ex_ShapeClass") .
sh_property("ex_ShapeClass","ex_ShapeClass-property") .
sh_path("ex_ShapeClass-property","ex_property") .
sh_datatype("ex_ShapeClass-property","xsd_string") .
sh_in("ex_ShapeClass-property","bnode_4b26547d864640e7b98b7c73de0f2e3032") .
rdf_first("bnode_4b26547d864640e7b98b7c73de0f2e3032","A") .
xsd_string("A") .
rdf_rest("bnode_4b26547d864640e7b98b7c73de0f2e3032","bnode_4b26547d864640e7b98b7c73de0f2e3033") .
rdf_first("bnode_4b26547d864640e7b98b7c73de0f2e3033","B") .
xsd_string("B") .
rdf_rest("bnode_4b26547d864640e7b98b7c73de0f2e3033","bnode_4b26547d864640e7b98b7c73de0f2e3034") .
rdf_first("bnode_4b26547d864640e7b98b7c73de0f2e3034","C") .
xsd_string("C") .
rdf_rest("bnode_4b26547d864640e7b98b7c73de0f2e3034","rdf_nil") .
ex_ShapeClass("ex_ValidInstance1") .
ex_property("ex_ValidInstance1","A") .
rdfs_label("ex_ValidInstance1","Valid instance1") .
xsd_string("Valid instance1") .
ex_ShapeClass("ex_ValidInstance2") .
ex_property("ex_ValidInstance2","A") .
ex_property("ex_ValidInstance2","B") .
ex_property("ex_ValidInstance2","C") .
rdfs_label("ex_ValidInstance2","Valid instance2") .
xsd_string("Valid instance2") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_4b26547d864640e7b98b7c73de0f2e3035") .
rdf_first("bnode_4b26547d864640e7b98b7c73de0f2e3035","http://repairs.shacl.org/in-001") .
rdf_rest("bnode_4b26547d864640e7b98b7c73de0f2e3035","rdf_nil") .
sht_Validate("http://repairs.shacl.org/in-001") .
rdfs_label("http://repairs.shacl.org/in-001","Test of sh:in at property shape 001") .
xsd_string("Test of sh:in at property shape 001") .
mf_action("http://repairs.shacl.org/in-001","bnode_4b26547d864640e7b98b7c73de0f2e3036") .
sht_dataGraph("bnode_4b26547d864640e7b98b7c73de0f2e3036","http://repairs.shacl.org") .
sht_shapesGraph("bnode_4b26547d864640e7b98b7c73de0f2e3036","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/in-001","bnode_4b26547d864640e7b98b7c73de0f2e3037") .
sh_ValidationReport("bnode_4b26547d864640e7b98b7c73de0f2e3037") .
sh_conforms("bnode_4b26547d864640e7b98b7c73de0f2e3037","false") .
xsd_boolean("false") .
sh_result("bnode_4b26547d864640e7b98b7c73de0f2e3037","bnode_4b26547d864640e7b98b7c73de0f2e3038") .
sh_ValidationResult("bnode_4b26547d864640e7b98b7c73de0f2e3038") .
sh_focusNode("bnode_4b26547d864640e7b98b7c73de0f2e3038","ex_InvalidInstance1") .
sh_resultPath("bnode_4b26547d864640e7b98b7c73de0f2e3038","ex_property") .
sh_resultSeverity("bnode_4b26547d864640e7b98b7c73de0f2e3038","sh_Violation") .
sh_sourceConstraintComponent("bnode_4b26547d864640e7b98b7c73de0f2e3038","sh_InConstraintComponent") .
sh_sourceShape("bnode_4b26547d864640e7b98b7c73de0f2e3038","ex_ShapeClass-property") .
sh_value("bnode_4b26547d864640e7b98b7c73de0f2e3038","D") .
mf_status("http://repairs.shacl.org/in-001","sht_approved") .
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

targetNode("ex_ValidInstance2",ex_ShapeClass) .
targetNode("ex_ValidInstance1",ex_ShapeClass) .
targetNode("ex_InvalidInstance1",ex_ShapeClass) .

% Constants

const("A") .
const("B") .
const("C") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_ShapeClass_("ex_ValidInstance2","t*"):-actualTarget("ex_ValidInstance2",ex_ShapeClass) .
ex_ShapeClass_("ex_ValidInstance1","t*"):-actualTarget("ex_ValidInstance1",ex_ShapeClass) .
ex_ShapeClass_("ex_InvalidInstance1","t*"):-actualTarget("ex_InvalidInstance1",ex_ShapeClass) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .
ex_ShapeClass__property_st_(X,Y,"t*"):-ex_ShapeClass__property_(X,_),ex_property_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_ShapeClass_(X,"t*") .
ex_ShapeClass__property_(X,"t*"):-s0_(X,"t*") .
ex_ShapeClass__property_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for ex_ShapeClass__property
s1_(X,"t*"):-ex_ShapeClass__property_(X,"t*") .
0 {ex_property_(X,Y,"t"):const(Y)} 3:-s1_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s2_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_property_(X,Y,"t**")} 3:-s1_(X,"t*") .

s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
s6_(X,"t*"):-s3_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
s8_(X,"t*"):-s3_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
s4_(X,"f");s6_(X,"f");s8_(X,"f"):-s3_(X,"f") .

% universal for ex_ShapeClass__property
s10_(X,"t*"):-ex_ShapeClass__property_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_property_(X,@new(s11,X,ex_property,1..1),"t"):-choose(s11,X,ex_property,1) .
choose(s11,X,ex_property,1);choose(s11,X,ex_property,0):-s11_(X,"t*") .
0 {ex_property_(X,Y,"t"):const(Y)} 3:-s11_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s12_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):ex_property_(X,Y,"t**")} 3:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
s15_(X,"t*"):-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
s17_(X,"t*"):-s14_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
s19_(X,"t*"):-s14_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
s15_(X,"f");s17_(X,"f");s19_(X,"f"):-s14_(X,"f") .

s1_(X,"f");s10_(X,"f"):-ex_ShapeClass__property_(X,"f") .
s21_(X,"t*"):-ex_ShapeClass_(X,"t*") .
ex_ShapeClass__property_(X,"t*"):-s21_(X,"t*") .
ex_ShapeClass__property_(X,"f"):-s21_(X,"f") .

s22_(X,"t*"):-ex_ShapeClass__property_(X,"t*") .
0 {ex_property_(X,Y,"t"):const(Y)} 3:-s22_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s23_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
0 {s23_(Y,"t*"):ex_property_(X,Y,"t**")} 3:-s22_(X,"t*") .

xsd_string_(X,"t"):-s23_(X,"t*") .
xsd_string_(X,"f"):-s23_(X,"f") .

s24_(X,"t*"):-ex_ShapeClass__property_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
ex_property_(X,@new(s25,X,ex_property,1..1),"t"):-choose(s25,X,ex_property,1) .
choose(s25,X,ex_property,1);choose(s25,X,ex_property,0):-s25_(X,"t*") .
0 {ex_property_(X,Y,"t"):const(Y)} 3:-s25_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s26_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s26_(Y,"t*"):ex_property_(X,Y,"t**")} 3:-s25_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .

xsd_string_(X,"t"):-s27_(X,"t*") .
xsd_string_(X,"f"):-s27_(X,"f") .

s22_(X,"f");s24_(X,"f"):-ex_ShapeClass__property_(X,"f") .
s0_(X,"f");s21_(X,"f"):-ex_ShapeClass_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
ex_ShapeClass__property_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),ex_ShapeClass__property_st_(X,Y,"t*"),not ex_ShapeClass__property_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s5_(X,"t*"),X!="A" .
:-s5_(X,"f"),X="A" .
:-s7_(X,"t*"),X!="B" .
:-s7_(X,"f"),X="B" .
:-s9_(X,"t*"),X!="C" .
:-s9_(X,"f"),X="C" .
:-s16_(X,"t*"),X!="A" .
:-s16_(X,"f"),X="A" .
:-s18_(X,"t*"),X!="B" .
:-s18_(X,"f"),X="B" .
:-s20_(X,"t*"),X!="C" .
:-s20_(X,"f"),X="C" .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
#minimize { 1@1,X,Y: ex_property_(X,Y,"t"), const(Y) } .
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
