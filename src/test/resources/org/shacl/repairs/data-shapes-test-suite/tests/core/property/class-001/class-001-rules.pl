
% Graph Data

rdfs_Resource("ex_InvalidResource1") .
ex_testProperty("ex_InvalidResource1","ex_InvalidResource1") .
ex_testProperty("ex_InvalidResource1","A string") .
xsd_string("A string") .
rdfs_Class("ex_SubClass") .
rdfs_subClassOf("ex_SubClass","ex_SuperClass") .
ex_SubClass("ex_SubClassInstance") .
rdfs_Class("ex_SuperClass") .
ex_SuperClass("ex_SuperClassInstance") .
sh_NodeShape("ex_TestShape") .
sh_property("ex_TestShape","ex_TestShape-testProperty") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource2") .
sh_path("ex_TestShape-testProperty","ex_testProperty") .
rdfs_label("ex_TestShape-testProperty","test property") .
xsd_string("test property") .
sh_class("ex_TestShape-testProperty","ex_SuperClass") .
rdfs_Resource("ex_ValidResource1") .
ex_testProperty("ex_ValidResource1","ex_SubClassInstance") .
ex_testProperty("ex_ValidResource1","ex_SuperClassInstance") .
rdfs_Resource("ex_ValidResource2") .
ex_testProperty("ex_ValidResource2","bnode_0465bff3129e4f3db89e6d0321ce7388192") .
ex_SubClass("bnode_0465bff3129e4f3db89e6d0321ce7388192") .
ex_testProperty("ex_ValidResource2","bnode_0465bff3129e4f3db89e6d0321ce7388193") .
ex_SuperClass("bnode_0465bff3129e4f3db89e6d0321ce7388193") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388194") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388194","http://repairs.shacl.org/class-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388194","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class-001") .
rdfs_label("http://repairs.shacl.org/class-001","Test of sh:class at property shape 001") .
xsd_string("Test of sh:class at property shape 001") .
mf_action("http://repairs.shacl.org/class-001","bnode_0465bff3129e4f3db89e6d0321ce7388195") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388195","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388195","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class-001","bnode_0465bff3129e4f3db89e6d0321ce7388196") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388196") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388196","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388196","bnode_0465bff3129e4f3db89e6d0321ce7388197") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388197") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388197","ex_InvalidResource1") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388197","ex_testProperty") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388197","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388197","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388197","ex_TestShape-testProperty") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388197","ex_InvalidResource1") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388196","bnode_0465bff3129e4f3db89e6d0321ce7388198") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388198") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388198","ex_InvalidResource1") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388198","ex_testProperty") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388198","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388198","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388198","ex_TestShape-testProperty") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388198","A string") .
mf_status("http://repairs.shacl.org/class-001","sht_approved") .
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

targetNode("ex_ValidResource2",ex_TestShape) .
targetNode("ex_InvalidResource1",ex_TestShape) .
targetNode("ex_ValidResource1",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource2","t*"):-actualTarget("ex_ValidResource2",ex_TestShape) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .

% Annotation Rules

ex_testProperty_(X,Y,"t*"):-ex_testProperty(X,Y) .
ex_testProperty_(X,Y,"t*"):-ex_testProperty_(X,Y,"t") .
ex_TestShape__testProperty_st_(X,Y,"t*"):-ex_TestShape__testProperty_(X,_),ex_testProperty_(X,Y,"t*") .
ex_SuperClass_(X,"t*"):-ex_SuperClass(X) .
ex_SuperClass_(X,"t*"):-ex_SuperClass_(X,"t") .

% Repair Rules

ex_TestShape__testProperty_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape__testProperty_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for ex_TestShape__testProperty
s0_(X,"t*"):-ex_TestShape__testProperty_(X,"t*") .
(C-0) {ex_testProperty_(X,Y,"f"):ex_testProperty_(X,Y,"t*");s1_(Y,"f"):ex_testProperty_(X,Y,"t*"),not ex_testProperty_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_testProperty_(X,Y,"t*")}=C,C>0 .
ex_testProperty_(X,Y,"f"):-ex_testProperty_(X,Y,"t*"),ex_testProperty_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_testProperty_(X,Y,"t**")} 0:-s0_(X,"t*") .

ex_SuperClass_(X,"t"):-s1_(X,"t*") .
ex_SuperClass_(X,"f"):-s1_(X,"f") .

% universal for ex_TestShape__testProperty
s2_(X,"t*"):-ex_TestShape__testProperty_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_testProperty_(X,@new(s3,X,ex_testProperty,1..1),"t"):-choose(s3,X,ex_testProperty,1) .
choose(s3,X,ex_testProperty,1);choose(s3,X,ex_testProperty,0):-s3_(X,"t*") .
(C-0) {ex_testProperty_(X,Y,"f"):ex_testProperty_(X,Y,"t*");s4_(Y,"f"):ex_testProperty_(X,Y,"t*"),not ex_testProperty_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_testProperty_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_testProperty_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

ex_SuperClass_(X,"t"):-s5_(X,"t*") .
ex_SuperClass_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-ex_TestShape__testProperty_(X,"f") .

% Interpretation Rules

ex_testProperty_(X,Y,"t**"):-ex_testProperty_(X,Y,"t*"),not ex_testProperty_(X,Y,"f") .
ex_TestShape__testProperty_st_(X,Y,"t**"):-ex_testProperty_(X,Y,"t**"),ex_TestShape__testProperty_st_(X,Y,"t*"),not ex_TestShape__testProperty_st_(X,Y,"f") .
ex_SuperClass_(X,"t**"):-ex_SuperClass_(X,"t*"),not ex_SuperClass_(X,"f") .

% Program Constraints

:-ex_testProperty_(X,Y,"t"),ex_testProperty_(X,Y,"f") .
:-ex_SuperClass_(X,"t"),ex_SuperClass_(X,"f") .

% Change Set Rules

add(ex_testProperty(X,Y)):-ex_testProperty_(X,Y,"t**"),not ex_testProperty(X,Y) .
del(ex_testProperty(X,Y)):-ex_testProperty_(X,Y,"f"),ex_testProperty(X,Y) .
add(ex_SuperClass(X)):-ex_SuperClass_(X,"t**"),not ex_SuperClass(X) .
del(ex_SuperClass(X)):-ex_SuperClass_(X,"f"),ex_SuperClass(X) .
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
