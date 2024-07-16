
% Graph Data

_worksFor("_ann","_company1") .
_worksFor("_ann","_company2") .
_worksFor("_ann","_company3") .
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

targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_worksFor_(X,Y,"t*"):-_worksFor(X,Y) .
_worksFor_(X,Y,"t*"):-_worksFor_(X,Y,"t") .
bnode_b242a503fea049a39d669f579c8f837f59_st_(X,Y,"t*"):-bnode_b242a503fea049a39d669f579c8f837f59_(X,_),_worksFor_(X,Y,"t*") .
_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .

% Repair Rules

bnode_b242a503fea049a39d669f579c8f837f58_(X,"f"):-_personShape_(X,"t*") .
bnode_b242a503fea049a39d669f579c8f837f58_(X,"t*"):-_personShape_(X,"f") .
bnode_b242a503fea049a39d669f579c8f837f59_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f58_(X,"t*") .
bnode_b242a503fea049a39d669f579c8f837f59_(X,"f"):-bnode_b242a503fea049a39d669f579c8f837f58_(X,"f") .

% sh:minCount 2 for bnode_b242a503fea049a39d669f579c8f837f59
s0_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f59_(X,"t*") .
_worksFor_(X,@new(s0,X,_worksFor,1..1),"t"):-choose(s0,X,_worksFor,1) .
_worksFor_(X,@new(s0,X,_worksFor,1..2),"t"):-choose(s0,X,_worksFor,2) .
choose(s0,X,_worksFor,2);choose(s0,X,_worksFor,1);choose(s0,X,_worksFor,0):-s0_(X,"t*") .
(C-1) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s1_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-1):-s0_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>1 .
_worksFor_(X,Y,"f"):-_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
2 {s1_(Y,"t*"):_worksFor_(X,Y,"t**")} 2:-s0_(X,"t*") .

_organization_(X,"t"):-s1_(X,"t*") .
_organization_(X,"f"):-s1_(X,"f") .

% universal for bnode_b242a503fea049a39d669f579c8f837f59
s2_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f59_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_worksFor_(X,@new(s3,X,_worksFor,1..1),"t"):-choose(s3,X,_worksFor,1) .
choose(s3,X,_worksFor,1);choose(s3,X,_worksFor,0):-s3_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s4_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

_organization_(X,"t"):-s5_(X,"t*") .
_organization_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-bnode_b242a503fea049a39d669f579c8f837f59_(X,"f") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
bnode_b242a503fea049a39d669f579c8f837f59_st_(X,Y,"t**"):-_worksFor_(X,Y,"t**"),bnode_b242a503fea049a39d669f579c8f837f59_st_(X,Y,"t*"),not bnode_b242a503fea049a39d669f579c8f837f59_st_(X,Y,"f") .
_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-_organization_(X,"t"),_organization_(X,"f") .

% Change Set Rules

add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
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
