
% Graph Data

_enrolledIn("_ben","_bn1") .
_enrolledIn("_ben","_bn2") .
_hasId("_bn1","_math1") .
_hasId("_bn2","_math2") .
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


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,X1,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,_),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*") .
_course_(X,"t*"):-_course(X) .
_course_(X,"t*"):-_course_(X,"t") .

% Repair Rules

s0_(X,"t*"):-_studentShape_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd42_(X,"t*"):-s0_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd42_(X,"f"):-s0_(X,"f") .


% sh:minCount 0 for bnode_a32d7a7262844001b8708be5540d65dd42
s1_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,"t*") .
choose(bnode_a32d7a7262844001b8708be5540d65dd42_st,X,_enrolledIn,1);choose(bnode_a32d7a7262844001b8708be5540d65dd42_st,X,_enrolledIn,0):-bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t") .
_enrolledIn_(X,@new(bnode_a32d7a7262844001b8708be5540d65dd42_st,X,_enrolledIn,1),"t"):-choose(bnode_a32d7a7262844001b8708be5540d65dd42_st,X,_enrolledIn,1),bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t") .
0 {_hasId_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*");s2_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,X1,"f") .
0 {s2_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t**")} 0:-s1_(X,"t*") .

_course_(X,"t"):-s2_(X,"t*") .
_course_(X,"f"):-s2_(X,"f") .

% universal for bnode_a32d7a7262844001b8708be5540d65dd42
s3_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,@new(s4,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1..1),"t"):-choose(s4,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1) .
choose(s4,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1);choose(s4,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,0):-s4_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*");s5_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

_course_(X,"t"):-s6_(X,"t*") .
_course_(X,"f"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,"f") .
s7_(X,"t*"):-_studentShape_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd42_(X,"t*"):-s7_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd42_(X,"f"):-s7_(X,"f") .


s8_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*");s9_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*")}=C,C>0 .
0 {s9_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t**")} 0:-s8_(X,"t*") .


% sh:maxCount 1 for bnode_a32d7a7262844001b8708be5540d65dd42
s10_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,@new(s11,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1..1),"t"):-choose(s11,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1) .
bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,@new(s11,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1..2),"t"):-choose(s11,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,2) .
choose(s11,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,2);choose(s11,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1);choose(s11,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,0):-s11_(X,"t*") .
(C-1) {bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*");s12_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f")} (C-1):-s11_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*")}=C,C>1 .
2 {s12_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t**")} 2:-s11_(X,"t*") .


s13_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,@new(s14,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1..1),"t"):-choose(s14,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1) .
choose(s14,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,1);choose(s14,X,bnode_a32d7a7262844001b8708be5540d65dd42_st,0):-s14_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*");s15_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s10_(X,"f");s13_(X,"f"):-bnode_a32d7a7262844001b8708be5540d65dd42_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_studentShape_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,X1,"t**"):-bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,X1,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasId_(X0,X1,"t**") .
_course_(X,"t**"):-_course_(X,"t*"),not _course_(X,"f") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"t"),bnode_a32d7a7262844001b8708be5540d65dd42_st_(X,Y,"f") .
:-_course_(X,"t"),_course_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
add(_course(X)):-_course_(X,"t**"),not _course(X) .
del(_course(X)):-_course_(X,"f"),_course(X) .
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
