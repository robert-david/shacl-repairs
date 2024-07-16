
% Graph Data

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

targetNode("_ben",_studentShape) .

% Constants

const("ID") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,X1,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd219_(X,_),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*") .

% Repair Rules

bnode_a32d7a7262844001b8708be5540d65dd219_(X,"t*"):-_studentShape_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd219_(X,"f"):-_studentShape_(X,"f") .


s0_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd219_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,@new(s0,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,1..1),"t"):-choose(s0,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,1) .
choose(s0,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,1);choose(s0,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,0):-s0_(X,"t*") .
0 {bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t"):const(Y)} 1:-s0_(X,"t*") .
choose(bnode_a32d7a7262844001b8708be5540d65dd219_st,X,_enrolledIn,1);choose(bnode_a32d7a7262844001b8708be5540d65dd219_st,X,_enrolledIn,0):-bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t") .
_enrolledIn_(X,@new(bnode_a32d7a7262844001b8708be5540d65dd219_st,X,_enrolledIn,1),"t"):-choose(bnode_a32d7a7262844001b8708be5540d65dd219_st,X,_enrolledIn,1),bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t") .
0 {_hasId_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*");s1_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,X1,"f") .
1 {s1_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% sh:minCount 0 for bnode_a32d7a7262844001b8708be5540d65dd219
s2_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd219_(X,"t*") .
0 {bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t"):const(Y)} 1:-s2_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*");s3_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*")}=C,C>0 .
0 {s3_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t**")} 1:-s2_(X,"t*") .


% universal for bnode_a32d7a7262844001b8708be5540d65dd219
s4_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd219_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,@new(s5,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,1..1),"t"):-choose(s5,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,1) .
choose(s5,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,1);choose(s5,X,bnode_a32d7a7262844001b8708be5540d65dd219_st,0):-s5_(X,"t*") .
0 {bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t"):const(Y)} 1:-s5_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*");s6_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s0_(X,"f");s2_(X,"f");s4_(X,"f"):-bnode_a32d7a7262844001b8708be5540d65dd219_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,X1,"t**"):-bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,X1,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasId_(X0,X1,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t"),bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"f") .
:-s1_(X,"t*"),X!="ID" .
:-s1_(X,"f"),X="ID" .
:-s3_(X,"f") .
:-s7_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
#minimize { 1@1,X,Y: bnode_a32d7a7262844001b8708be5540d65dd219_st_(X,Y,"t"), const(Y) } .
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
