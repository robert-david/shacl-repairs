
% Graph Data

ex_property1("ex_InvalidResource1","A") .
xsd_string("A") .
ex_property2("ex_InvalidResource1","B") .
xsd_string("B") .
ex_property1("ex_InvalidResource2","A") .
ex_property2("ex_InvalidResource3","A") .
ex_property1("ex_InvalidResource4","A") .
ex_property1("ex_InvalidResource4","B") .
ex_property2("ex_InvalidResource4","A") .
sh_NodeShape("ex_TestShape") .
sh_property("ex_TestShape","ex_TestShape-property1") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_InvalidResource2") .
sh_targetNode("ex_TestShape","ex_InvalidResource3") .
sh_targetNode("ex_TestShape","ex_InvalidResource4") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource2") .
sh_path("ex_TestShape-property1","ex_property1") .
sh_equals("ex_TestShape-property1","ex_property2") .
ex_property1("ex_ValidResource1","A") .
ex_property2("ex_ValidResource1","A") .
ex_property1("ex_ValidResource2","A") .
ex_property1("ex_ValidResource2","B") .
ex_property2("ex_ValidResource2","A") .
ex_property2("ex_ValidResource2","B") .
rdf_Property("ex_property1") .
rdf_Property("ex_property2") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_4b26547d864640e7b98b7c73de0f2e30324") .
rdf_first("bnode_4b26547d864640e7b98b7c73de0f2e30324","http://repairs.shacl.org/equals-001") .
rdf_rest("bnode_4b26547d864640e7b98b7c73de0f2e30324","rdf_nil") .
sht_Validate("http://repairs.shacl.org/equals-001") .
rdfs_label("http://repairs.shacl.org/equals-001","Test of sh:equals at property shape 001") .
xsd_string("Test of sh:equals at property shape 001") .
mf_action("http://repairs.shacl.org/equals-001","bnode_4b26547d864640e7b98b7c73de0f2e30325") .
sht_dataGraph("bnode_4b26547d864640e7b98b7c73de0f2e30325","http://repairs.shacl.org") .
sht_shapesGraph("bnode_4b26547d864640e7b98b7c73de0f2e30325","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/equals-001","bnode_4b26547d864640e7b98b7c73de0f2e30326") .
sh_ValidationReport("bnode_4b26547d864640e7b98b7c73de0f2e30326") .
sh_conforms("bnode_4b26547d864640e7b98b7c73de0f2e30326","false") .
xsd_boolean("false") .
sh_result("bnode_4b26547d864640e7b98b7c73de0f2e30326","bnode_4b26547d864640e7b98b7c73de0f2e30327") .
sh_ValidationResult("bnode_4b26547d864640e7b98b7c73de0f2e30327") .
sh_focusNode("bnode_4b26547d864640e7b98b7c73de0f2e30327","ex_InvalidResource1") .
sh_resultPath("bnode_4b26547d864640e7b98b7c73de0f2e30327","ex_property1") .
sh_resultSeverity("bnode_4b26547d864640e7b98b7c73de0f2e30327","sh_Violation") .
sh_sourceConstraintComponent("bnode_4b26547d864640e7b98b7c73de0f2e30327","sh_EqualsConstraintComponent") .
sh_sourceShape("bnode_4b26547d864640e7b98b7c73de0f2e30327","ex_TestShape-property1") .
sh_value("bnode_4b26547d864640e7b98b7c73de0f2e30327","A") .
sh_result("bnode_4b26547d864640e7b98b7c73de0f2e30326","bnode_4b26547d864640e7b98b7c73de0f2e30328") .
sh_ValidationResult("bnode_4b26547d864640e7b98b7c73de0f2e30328") .
sh_focusNode("bnode_4b26547d864640e7b98b7c73de0f2e30328","ex_InvalidResource1") .
sh_resultPath("bnode_4b26547d864640e7b98b7c73de0f2e30328","ex_property1") .
sh_resultSeverity("bnode_4b26547d864640e7b98b7c73de0f2e30328","sh_Violation") .
sh_sourceConstraintComponent("bnode_4b26547d864640e7b98b7c73de0f2e30328","sh_EqualsConstraintComponent") .
sh_sourceShape("bnode_4b26547d864640e7b98b7c73de0f2e30328","ex_TestShape-property1") .
sh_value("bnode_4b26547d864640e7b98b7c73de0f2e30328","B") .
sh_result("bnode_4b26547d864640e7b98b7c73de0f2e30326","bnode_4b26547d864640e7b98b7c73de0f2e30329") .
sh_ValidationResult("bnode_4b26547d864640e7b98b7c73de0f2e30329") .
sh_focusNode("bnode_4b26547d864640e7b98b7c73de0f2e30329","ex_InvalidResource2") .
sh_resultPath("bnode_4b26547d864640e7b98b7c73de0f2e30329","ex_property1") .
sh_resultSeverity("bnode_4b26547d864640e7b98b7c73de0f2e30329","sh_Violation") .
sh_sourceConstraintComponent("bnode_4b26547d864640e7b98b7c73de0f2e30329","sh_EqualsConstraintComponent") .
sh_sourceShape("bnode_4b26547d864640e7b98b7c73de0f2e30329","ex_TestShape-property1") .
sh_value("bnode_4b26547d864640e7b98b7c73de0f2e30329","A") .
sh_result("bnode_4b26547d864640e7b98b7c73de0f2e30326","bnode_4b26547d864640e7b98b7c73de0f2e30330") .
sh_ValidationResult("bnode_4b26547d864640e7b98b7c73de0f2e30330") .
sh_focusNode("bnode_4b26547d864640e7b98b7c73de0f2e30330","ex_InvalidResource3") .
sh_resultPath("bnode_4b26547d864640e7b98b7c73de0f2e30330","ex_property1") .
sh_resultSeverity("bnode_4b26547d864640e7b98b7c73de0f2e30330","sh_Violation") .
sh_sourceConstraintComponent("bnode_4b26547d864640e7b98b7c73de0f2e30330","sh_EqualsConstraintComponent") .
sh_sourceShape("bnode_4b26547d864640e7b98b7c73de0f2e30330","ex_TestShape-property1") .
sh_value("bnode_4b26547d864640e7b98b7c73de0f2e30330","A") .
sh_result("bnode_4b26547d864640e7b98b7c73de0f2e30326","bnode_4b26547d864640e7b98b7c73de0f2e30331") .
sh_ValidationResult("bnode_4b26547d864640e7b98b7c73de0f2e30331") .
sh_focusNode("bnode_4b26547d864640e7b98b7c73de0f2e30331","ex_InvalidResource4") .
sh_resultPath("bnode_4b26547d864640e7b98b7c73de0f2e30331","ex_property1") .
sh_resultSeverity("bnode_4b26547d864640e7b98b7c73de0f2e30331","sh_Violation") .
sh_sourceConstraintComponent("bnode_4b26547d864640e7b98b7c73de0f2e30331","sh_EqualsConstraintComponent") .
sh_sourceShape("bnode_4b26547d864640e7b98b7c73de0f2e30331","ex_TestShape-property1") .
sh_value("bnode_4b26547d864640e7b98b7c73de0f2e30331","B") .
mf_status("http://repairs.shacl.org/equals-001","sht_approved") .
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

targetNode("ex_InvalidResource2",ex_TestShape) .
targetNode("ex_InvalidResource3",ex_TestShape) .
targetNode("ex_InvalidResource1",ex_TestShape) .
targetNode("ex_InvalidResource4",ex_TestShape) .
targetNode("ex_ValidResource1",ex_TestShape) .
targetNode("ex_ValidResource2",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_InvalidResource2","t*"):-actualTarget("ex_InvalidResource2",ex_TestShape) .
ex_TestShape_("ex_InvalidResource3","t*"):-actualTarget("ex_InvalidResource3",ex_TestShape) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .
ex_TestShape_("ex_InvalidResource4","t*"):-actualTarget("ex_InvalidResource4",ex_TestShape) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .
ex_TestShape_("ex_ValidResource2","t*"):-actualTarget("ex_ValidResource2",ex_TestShape) .

% Annotation Rules

ex_property1_(X,Y,"t*"):-ex_property1(X,Y) .
ex_property1_(X,Y,"t*"):-ex_property1_(X,Y,"t") .
ex_TestShape__property1_st_(X,Y,"t*"):-ex_TestShape__property1_(X,_),ex_property1_(X,Y,"t*") .
ex_property2_(X,Y,"t*"):-ex_property2(X,Y) .
ex_property2_(X,Y,"t*"):-ex_property2_(X,Y,"t") .

% Repair Rules

ex_TestShape__property1_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape__property1_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for ex_TestShape__property1
s0_(X,"t*"):-ex_TestShape__property1_(X,"t*") .
(C-0) {ex_property1_(X,Y,"f"):ex_property1_(X,Y,"t*");s1_(Y,"f"):ex_property1_(X,Y,"t*"),not ex_property1_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property1_(X,Y,"t*")}=C,C>0 .
ex_property1_(X,Y,"f"):-ex_property1_(X,Y,"t*"),ex_property1_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_property1_(X,Y,"t**")} 0:-s0_(X,"t*") .


s2_(X,"t*"):-ex_TestShape__property1_(X,"t*") .
ex_property2_(X,Y,"t");ex_property1_(X,Y,"f"):-s2_(X,"t*"),ex_property1_(X,Y,"t*") .
ex_property1_(X,Y,"t");ex_property2_(X,Y,"f"):-s2_(X,"t*"),ex_property2_(X,Y,"t*") .
notEquals(s2,X,ex_property1,ex_property2):-s2_(X,"f"),ex_property1_(X,Y,"t*"),not ex_property2_(X,Y,"t*") .
notEquals(s2,X,ex_property1,ex_property2):-s2_(X,"f"),not ex_property1_(X,Y,"t*"),ex_property2_(X,Y,"t*") .
1 {ex_property1_(X,Y,"f"):ex_property2_(X,Y,"t*");ex_property2_(X,Y,"f"):ex_property1_(X,Y,"t*");ex_property1_(X,@new(s2,X,ex_property1,1),"t*");ex_property2_(X,@new(s2,X,ex_property2,1),"t*")} 1:-s2_(X,"f"),not notEquals(s2,X,ex_property1,ex_property2) .

% universal for ex_TestShape__property1
s3_(X,"t*"):-ex_TestShape__property1_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_property1_(X,@new(s4,X,ex_property1,1..1),"t"):-choose(s4,X,ex_property1,1) .
choose(s4,X,ex_property1,1);choose(s4,X,ex_property1,0):-s4_(X,"t*") .
(C-0) {ex_property1_(X,Y,"f"):ex_property1_(X,Y,"t*");s5_(Y,"f"):ex_property1_(X,Y,"t*"),not ex_property1_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_property1_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_property1_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s0_(X,"f");s2_(X,"f");s3_(X,"f"):-ex_TestShape__property1_(X,"f") .

% Interpretation Rules

ex_property1_(X,Y,"t**"):-ex_property1_(X,Y,"t*"),not ex_property1_(X,Y,"f") .
ex_TestShape__property1_st_(X,Y,"t**"):-ex_property1_(X,Y,"t**"),ex_TestShape__property1_st_(X,Y,"t*"),not ex_TestShape__property1_st_(X,Y,"f") .
ex_property2_(X,Y,"t**"):-ex_property2_(X,Y,"t*"),not ex_property2_(X,Y,"f") .

% Program Constraints

:-ex_property1_(X,Y,"t"),ex_property1_(X,Y,"f") .
:-s1_(X,"f") .
:-s2_(X,"t*"),ex_property2_(X,Y,"t**"),not ex_property1_(X,Y,"t**") .
:-s2_(X,"t*"),ex_property1_(X,Y,"t**"),not ex_property2_(X,Y,"t**") .
:-ex_property2_(X,Y,"t"),ex_property2_(X,Y,"f") .
:-s6_(X,"f") .

% Change Set Rules

add(ex_property1(X,Y)):-ex_property1_(X,Y,"t**"),not ex_property1(X,Y) .
del(ex_property1(X,Y)):-ex_property1_(X,Y,"f"),ex_property1(X,Y) .
add(ex_property2(X,Y)):-ex_property2_(X,Y,"t**"),not ex_property2(X,Y) .
del(ex_property2(X,Y)):-ex_property2_(X,Y,"f"),ex_property2(X,Y) .
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
