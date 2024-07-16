
% Graph Data

_worksFor("_ann","_company1") .
_organization("_company1") .
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
bnode_b242a503fea049a39d669f579c8f837f44_st_(X,Y,"t*"):-bnode_b242a503fea049a39d669f579c8f837f44_(X,_),_worksFor_(X,Y,"t*") .
bnode_b242a503fea049a39d669f579c8f837f40_st_(X,Y,"t*"):-bnode_b242a503fea049a39d669f579c8f837f40_(X,_),_worksFor_(X,Y,"t*") .

% Repair Rules

s0_(X,"f"):-_personShape_(X,"f") .
bnode_b242a503fea049a39d669f579c8f837f43_(X,"f"):-s0_(X,"t*") .
bnode_b242a503fea049a39d669f579c8f837f43_(X,"t*"):-s0_(X,"f") .
bnode_b242a503fea049a39d669f579c8f837f44_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f43_(X,"t*") .
bnode_b242a503fea049a39d669f579c8f837f44_(X,"f"):-bnode_b242a503fea049a39d669f579c8f837f43_(X,"f") .

% sh:minCount 1 for bnode_b242a503fea049a39d669f579c8f837f44
s1_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f44_(X,"t*") .
_worksFor_(X,@new(s1,X,_worksFor,1..1),"t"):-choose(s1,X,_worksFor,1) .
choose(s1,X,_worksFor,1);choose(s1,X,_worksFor,0):-s1_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s2_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
1 {s2_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for bnode_b242a503fea049a39d669f579c8f837f44
s3_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f44_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_worksFor_(X,@new(s4,X,_worksFor,1..1),"t"):-choose(s4,X,_worksFor,1) .
choose(s4,X,_worksFor,1);choose(s4,X,_worksFor,0):-s4_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s5_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_b242a503fea049a39d669f579c8f837f44_(X,"f") .
s7_(X,"f"):-_personShape_(X,"f") .
bnode_b242a503fea049a39d669f579c8f837f40_(X,"t*"):-s7_(X,"t*") .
bnode_b242a503fea049a39d669f579c8f837f40_(X,"f"):-s7_(X,"f") .

% sh:minCount 1 for bnode_b242a503fea049a39d669f579c8f837f40
s8_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f40_(X,"t*") .
_worksFor_(X,@new(s8,X,_worksFor,1..1),"t"):-choose(s8,X,_worksFor,1) .
choose(s8,X,_worksFor,1);choose(s8,X,_worksFor,0):-s8_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s9_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s8_(X,"t*") .


% universal for bnode_b242a503fea049a39d669f579c8f837f40
s10_(X,"t*"):-bnode_b242a503fea049a39d669f579c8f837f40_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_worksFor_(X,@new(s11,X,_worksFor,1..1),"t"):-choose(s11,X,_worksFor,1) .
choose(s11,X,_worksFor,1);choose(s11,X,_worksFor,0):-s11_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s12_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-bnode_b242a503fea049a39d669f579c8f837f40_(X,"f") .
s0_(X,"t*");s7_(X,"t*"):-_personShape_(X,"t*") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
bnode_b242a503fea049a39d669f579c8f837f44_st_(X,Y,"t**"):-_worksFor_(X,Y,"t**"),bnode_b242a503fea049a39d669f579c8f837f44_st_(X,Y,"t*"),not bnode_b242a503fea049a39d669f579c8f837f44_st_(X,Y,"f") .
bnode_b242a503fea049a39d669f579c8f837f40_st_(X,Y,"t**"):-_worksFor_(X,Y,"t**"),bnode_b242a503fea049a39d669f579c8f837f40_st_(X,Y,"t*"),not bnode_b242a503fea049a39d669f579c8f837f40_st_(X,Y,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

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
