
% Graph Data

_enrolledIn("_ben","_bn1") .
_hasPart("_bn1","_bn3") .
_hasPart("_bn1","_bn4") .
_hasId("_bn3","Math 1") .
xsd_string("Math 1") .
_hasId("_bn4","Math 2") .
xsd_string("Math 2") .
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

targetNode("_ben",_notStudentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_notStudentShape_("_ben","t*"):-actualTarget("_ben",_notStudentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasPart_(X,Y,"t*"):-_hasPart(X,Y) .
_hasPart_(X,Y,"t*"):-_hasPart_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,X2,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd261_(X,_),_enrolledIn_(X,X0,"t*"),_hasPart_(X0,X1,"t*"),_hasId_(X1,X2,"t*") .

% Repair Rules

bnode_a32d7a7262844001b8708be5540d65dd261_(X,"t*"):-_notStudentShape_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd261_(X,"f"):-_notStudentShape_(X,"f") .



% sh:maxCount 0 for bnode_a32d7a7262844001b8708be5540d65dd261
s0_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd261_(X,"t*") .
s1_(X,"f"):-s0_(X,"t*") .
s1_(X,"t*"):-s0_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,@new(s1,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,1..1),"t"):-choose(s1,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,1) .
choose(s1,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,1);choose(s1,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,0):-s1_(X,"t*") .
choose(bnode_a32d7a7262844001b8708be5540d65dd261_st,X,_enrolledIn,1);choose(bnode_a32d7a7262844001b8708be5540d65dd261_st,X,_enrolledIn,0):-bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t") .
_enrolledIn_(X,@new(bnode_a32d7a7262844001b8708be5540d65dd261_st,X,_enrolledIn,1),"t"):-choose(bnode_a32d7a7262844001b8708be5540d65dd261_st,X,_enrolledIn,1),bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t") .
choose(bnode_a32d7a7262844001b8708be5540d65dd261_st,X0,_hasPart,1);choose(bnode_a32d7a7262844001b8708be5540d65dd261_st,X0,_hasPart,0):-_enrolledIn_(X,X0,"t**"),bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t") .
_hasPart_(X0,@new(bnode_a32d7a7262844001b8708be5540d65dd261_st,X0,_hasPart,1),"t"):-choose(bnode_a32d7a7262844001b8708be5540d65dd261_st,X0,_hasPart,1),_enrolledIn_(X,X0,"t**"),bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),_hasPart_(X0,X1,"t**"),bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*");s2_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasPart_(X0,X1,"f");_hasId_(X1,X2,"f"):-_enrolledIn_(X,X0,"t*"),_hasPart_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,X2,"f") .
1 {s2_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t**")} 1:-s1_(X,"t*") .


% sh:minCount 0 for bnode_a32d7a7262844001b8708be5540d65dd261
s3_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd261_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*");s4_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*")}=C,C>0 .
0 {s4_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t**")} 0:-s3_(X,"t*") .


% universal for bnode_a32d7a7262844001b8708be5540d65dd261
s5_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd261_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,@new(s6,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,1..1),"t"):-choose(s6,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,1) .
choose(s6,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,1);choose(s6,X,bnode_a32d7a7262844001b8708be5540d65dd261_st,0):-s6_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*");s7_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s3_(X,"f");s5_(X,"f"):-bnode_a32d7a7262844001b8708be5540d65dd261_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasPart_(X,Y,"t**"):-_hasPart_(X,Y,"t*"),not _hasPart_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,X2,"t**"):-bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,X2,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,X2,"f"),_enrolledIn_(X,X0,"t**"),_hasPart_(X0,X1,"t**"),_hasId_(X1,X2,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasPart_(X,Y,"t"),_hasPart_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"t"),bnode_a32d7a7262844001b8708be5540d65dd261_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasPart(X,Y)):-_hasPart_(X,Y,"t**"),not _hasPart(X,Y) .
del(_hasPart(X,Y)):-_hasPart_(X,Y,"f"),_hasPart(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
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
