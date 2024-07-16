
% Graph Data

_name("_ann","ANN") .
xsd_string("ANN") .
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

const("Ann") .
const("ANN") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .
bnode_17d24c96dfa5444b94c3b0f71b93129169_st_(X,Y,"t*"):-bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,_),_name_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-_personShape_(X,"t*") .
bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"t*"):-s0_(X,"t*") .
bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for bnode_17d24c96dfa5444b94c3b0f71b93129169
s1_(X,"t*"):-bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s1_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s2_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-_name_(X,Y,"t*"),_name_(X,Y,"f") .
0 {s2_(Y,"t*"):_name_(X,Y,"t**")} 2:-s1_(X,"t*") .

s3_(X,"f"):-s2_(X,"f") .
s4_(X,"f"):-s2_(X,"f") .
s3_(X,"t*");s4_(X,"t*"):-s2_(X,"t*") .

% universal for bnode_17d24c96dfa5444b94c3b0f71b93129169
s5_(X,"t*"):-bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
_name_(X,@new(s6,X,_name,1..1),"t"):-choose(s6,X,_name,1) .
choose(s6,X,_name,1);choose(s6,X,_name,0):-s6_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s6_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s7_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):_name_(X,Y,"t**")} 2:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .

s9_(X,"f"):-s8_(X,"f") .
s10_(X,"f"):-s8_(X,"f") .
s9_(X,"t*");s10_(X,"t*"):-s8_(X,"t*") .

s1_(X,"f");s5_(X,"f"):-bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"f") .
s11_(X,"t*"):-_personShape_(X,"t*") .
bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"t*"):-s11_(X,"t*") .
bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"f"):-s11_(X,"f") .

% sh:minCount 1 for bnode_17d24c96dfa5444b94c3b0f71b93129169
s12_(X,"t*"):-bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"t*") .
_name_(X,@new(s12,X,_name,1..1),"t"):-choose(s12,X,_name,1) .
choose(s12,X,_name,1);choose(s12,X,_name,0):-s12_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s12_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s13_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
1 {s13_(Y,"t*"):_name_(X,Y,"t**")} 2:-s12_(X,"t*") .


s14_(X,"t*"):-bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
_name_(X,@new(s15,X,_name,1..1),"t"):-choose(s15,X,_name,1) .
choose(s15,X,_name,1);choose(s15,X,_name,0):-s15_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s15_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s16_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
1 {s16_(Y,"t*"):_name_(X,Y,"t**")} 2:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .


s12_(X,"f");s14_(X,"f"):-bnode_17d24c96dfa5444b94c3b0f71b93129169_(X,"f") .
s0_(X,"f");s11_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .
bnode_17d24c96dfa5444b94c3b0f71b93129169_st_(X,Y,"t**"):-_name_(X,Y,"t**"),bnode_17d24c96dfa5444b94c3b0f71b93129169_st_(X,Y,"t*"),not bnode_17d24c96dfa5444b94c3b0f71b93129169_st_(X,Y,"f") .

% Program Constraints

:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s3_(X,"t*"),X!="Ann" .
:-s3_(X,"f"),X="Ann" .
:-s4_(X,"t*"),X!="ANN" .
:-s4_(X,"f"),X="ANN" .
:-s9_(X,"t*"),X!="Ann" .
:-s9_(X,"f"),X="Ann" .
:-s10_(X,"t*"),X!="ANN" .
:-s10_(X,"f"),X="ANN" .
:-s13_(X,"f") .
:-s17_(X,"f") .

% Change Set Rules

add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
#minimize { 1@1,X,Y: _name_(X,Y,"t"), const(Y) } .
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
