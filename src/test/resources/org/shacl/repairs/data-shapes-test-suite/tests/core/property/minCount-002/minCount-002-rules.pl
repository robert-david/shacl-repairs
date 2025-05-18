
% Graph Data

sh_NodeShape("ex_TestShape") .
sh_property("ex_TestShape","bnode_0465bff3129e4f3db89e6d0321ce7388367") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388367","ex_property") .
sh_minCount("bnode_0465bff3129e4f3db89e6d0321ce7388367","0") .
xsd_integer("0") .
sh_name("bnode_0465bff3129e4f3db89e6d0321ce7388367","property") .
xsd_string("property") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
rdfs_Resource("ex_ValidResource1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388368") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388368","http://repairs.shacl.org/minCount-002") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388368","rdf_nil") .
sht_Validate("http://repairs.shacl.org/minCount-002") .
rdfs_label("http://repairs.shacl.org/minCount-002","Test of sh:minCount at property shape 001") .
xsd_string("Test of sh:minCount at property shape 001") .
mf_action("http://repairs.shacl.org/minCount-002","bnode_0465bff3129e4f3db89e6d0321ce7388369") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388369","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388369","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/minCount-002","bnode_0465bff3129e4f3db89e6d0321ce7388370") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388370") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388370","true") .
xsd_boolean("true") .
mf_status("http://repairs.shacl.org/minCount-002","sht_approved") .
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

targetNode("ex_ValidResource1",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .
bnode_0465bff3129e4f3db89e6d0321ce7388371_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388371_(X,_),ex_property_(X,Y,"t*") .

% Repair Rules

bnode_0465bff3129e4f3db89e6d0321ce7388371_(X,"t*"):-ex_TestShape_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388371_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for bnode_0465bff3129e4f3db89e6d0321ce7388371
s0_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388371_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s1_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_property_(X,Y,"t**")} 0:-s0_(X,"t*") .


% universal for bnode_0465bff3129e4f3db89e6d0321ce7388371
s2_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388371_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property_(X,@new(s3,X,ex_property,1..1),"t"):-choose(s3,X,ex_property,1) .
choose(s3,X,ex_property,1);choose(s3,X,ex_property,0):-s3_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s4_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388371_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388371_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce7388371_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce7388371_st_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

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
