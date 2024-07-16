
% Graph Data

_worksFor("_ann","_company1") .
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
rdfs_Datatype("http://www.w3.org/2002/07/owl#rational") .
rdfs_Datatype("http://www.w3.org/2002/07/owl#real") .

% Shape Targets

targetNode("_company1",_organizationShape) .
targetNode("_ann",_unemployedShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_organizationShape_("_company1","t*"):-actualTarget("_company1",_organizationShape) .
_unemployedShape_("_ann","t*"):-actualTarget("_ann",_unemployedShape) .

% Annotation Rules

_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .
_worksFor_(X,Y,"t*"):-_worksFor(X,Y) .
_worksFor_(X,Y,"t*"):-_worksFor_(X,Y,"t") .
bnode_739032e6a88c4a928a47e6812206fa6262_st_(X,Y,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6262_(X,_),_worksFor_(X,Y,"t*") .

% Repair Rules

_organization_(X,"t"):-_organizationShape_(X,"t*") .
_organization_(X,"f"):-_organizationShape_(X,"f") .
bnode_739032e6a88c4a928a47e6812206fa6262_(X,"t*"):-_unemployedShape_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6262_(X,"f"):-_unemployedShape_(X,"f") .

% sh:minCount 0 for bnode_739032e6a88c4a928a47e6812206fa6262
s0_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6262_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s1_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
0 {s1_(Y,"t*"):_worksFor_(X,Y,"t**")} 0:-s0_(X,"t*") .

bnode_739032e6a88c4a928a47e6812206fa6263_(X,"f"):-s1_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6263_(X,"t*"):-s1_(X,"f") .
_organization_(X,"t"):-bnode_739032e6a88c4a928a47e6812206fa6263_(X,"t*") .
_organization_(X,"f"):-bnode_739032e6a88c4a928a47e6812206fa6263_(X,"f") .

% universal for bnode_739032e6a88c4a928a47e6812206fa6262
s2_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6262_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_worksFor_(X,@new(s3,X,_worksFor,1..1),"t"):-choose(s3,X,_worksFor,1) .
choose(s3,X,_worksFor,1);choose(s3,X,_worksFor,0):-s3_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s4_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

bnode_739032e6a88c4a928a47e6812206fa6263_(X,"f"):-s5_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6263_(X,"t*"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-bnode_739032e6a88c4a928a47e6812206fa6262_(X,"f") .

% Interpretation Rules

_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .
_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
bnode_739032e6a88c4a928a47e6812206fa6262_st_(X,Y,"t**"):-_worksFor_(X,Y,"t**"),bnode_739032e6a88c4a928a47e6812206fa6262_st_(X,Y,"t*"),not bnode_739032e6a88c4a928a47e6812206fa6262_st_(X,Y,"f") .

% Program Constraints

:-_organization_(X,"t"),_organization_(X,"f") .
:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .

% Change Set Rules

add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
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
