
% Graph Data

_firstName("_ann","Ann") .
xsd_string("Ann") .
_givenName("_ann","Ann") .
_firstName("_ann","ANN") .
xsd_string("ANN") .
_givenName("_ann","ANN") .
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

_firstName_(X,Y,"t*"):-_firstName(X,Y) .
_firstName_(X,Y,"t*"):-_firstName_(X,Y,"t") .
bnode_b242a503fea049a39d669f579c8f837f95_st_(X,Y,"t*"):-bnode_b242a503fea049a39d669f579c8f837f95_(X,_),_firstName_(X,Y,"t*") .
_givenName_(X,Y,"t*"):-_givenName(X,Y) .
_givenName_(X,Y,"t*"):-_givenName_(X,Y,"t") .

% Repair Rules

bnode_b242a503fea049a39d669f579c8f837f94_(X,"f"):-_personShape_(X,"t*") .
bnode_b242a503fea049a39d669f579c8f837f94_(X,"t*"):-_personShape_(X,"f") .
bnode_b242a503fea049a39d669f579c8f837f95_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f94_(X,"t*") .
bnode_b242a503fea049a39d669f579c8f837f95_(X,"f"):-bnode_b242a503fea049a39d669f579c8f837f94_(X,"f") .

s0_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f95_(X,"t*") .
_givenName_(X,Y,"t"):-s0_(X,"t*"),_firstName_(X,Y,"t**") .
_firstName_(X,Y,"t"):-s0_(X,"t*"),_givenName_(X,Y,"t**") .
1 {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*"),_givenName_(X,Y,"t*");_givenName_(X,Y,"f"):_firstName_(X,Y,"t*"),_givenName_(X,Y,"t*")} 1:-s0_(X,"f") .

% sh:minCount 2 for bnode_b242a503fea049a39d669f579c8f837f95
s1_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f95_(X,"t*") .
_firstName_(X,@new(s1,X,_firstName,1..1),"t"):-choose(s1,X,_firstName,1) .
_firstName_(X,@new(s1,X,_firstName,1..2),"t"):-choose(s1,X,_firstName,2) .
choose(s1,X,_firstName,2);choose(s1,X,_firstName,1);choose(s1,X,_firstName,0):-s1_(X,"t*") .
(C-1) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s2_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>1 .
_firstName_(X,Y,"f"):-_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
2 {s2_(Y,"t*"):_firstName_(X,Y,"t**")} 2:-s1_(X,"t*") .


% universal for bnode_b242a503fea049a39d669f579c8f837f95
s3_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f95_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_firstName_(X,@new(s4,X,_firstName,1..1),"t"):-choose(s4,X,_firstName,1) .
choose(s4,X,_firstName,1);choose(s4,X,_firstName,0):-s4_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s5_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s0_(X,"f");s1_(X,"f");s3_(X,"f"):-bnode_b242a503fea049a39d669f579c8f837f95_(X,"f") .

% Interpretation Rules

_firstName_(X,Y,"t**"):-_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f") .
bnode_b242a503fea049a39d669f579c8f837f95_st_(X,Y,"t**"):-_firstName_(X,Y,"t**"),bnode_b242a503fea049a39d669f579c8f837f95_st_(X,Y,"t*"),not bnode_b242a503fea049a39d669f579c8f837f95_st_(X,Y,"f") .
_givenName_(X,Y,"t**"):-_givenName_(X,Y,"t*"),not _givenName_(X,Y,"f") .

% Program Constraints

:-_firstName_(X,Y,"t"),_firstName_(X,Y,"f") .
:-s0_(X,"t*"),_givenName_(X,Y,"t**"),not bnode_b242a503fea049a39d669f579c8f837f95_st_(X,Y,"t**") .
:-s0_(X,"t*"),bnode_b242a503fea049a39d669f579c8f837f95_st_(X,Y,"t**"),not _givenName_(X,Y,"t**") .
:-_givenName_(X,Y,"t"),_givenName_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .

% Change Set Rules

add(_firstName(X,Y)):-_firstName_(X,Y,"t**"),not _firstName(X,Y) .
del(_firstName(X,Y)):-_firstName_(X,Y,"f"),_firstName(X,Y) .
add(_givenName(X,Y)):-_givenName_(X,Y,"t**"),not _givenName(X,Y) .
del(_givenName(X,Y)):-_givenName_(X,Y,"f"),_givenName(X,Y) .
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
