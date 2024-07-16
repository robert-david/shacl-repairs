
% Graph Data

_enrolledIn("_ben","_bn1") .
_p1("_bn1","_bn2") .
_hasId("_bn2","Math 1") .
xsd_string("Math 1") .
_p0("_x","_bn1") .
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

targetNode("_x",_cutShape) .
targetNode("_ben",_studentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_cutShape_("_x","t*"):-actualTarget("_x",_cutShape) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_p1_(X,Y,"t*"):-_p1(X,Y) .
_p1_(X,Y,"t*"):-_p1_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,X2,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd112_(X,_),_enrolledIn_(X,X0,"t*"),_p1_(X0,X1,"t*"),_hasId_(X1,X2,"t*") .
_p0_(X,Y,"t*"):-_p0(X,Y) .
_p0_(X,Y,"t*"):-_p0_(X,Y,"t") .
bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,X1,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd116_(X,_),_p0_(X,X0,"t*"),_p1_(X0,X1,"t*") .

% Repair Rules

bnode_a32d7a7262844001b8708be5540d65dd112_(X,"t*"):-_studentShape_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd112_(X,"f"):-_studentShape_(X,"f") .



% sh:minCount 1 for bnode_a32d7a7262844001b8708be5540d65dd112
s0_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd112_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,@new(s0,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,1..1),"t"):-choose(s0,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,1) .
choose(s0,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,1);choose(s0,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,0):-s0_(X,"t*") .
choose(bnode_a32d7a7262844001b8708be5540d65dd112_st,X,_enrolledIn,1);choose(bnode_a32d7a7262844001b8708be5540d65dd112_st,X,_enrolledIn,0):-bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t") .
_enrolledIn_(X,@new(bnode_a32d7a7262844001b8708be5540d65dd112_st,X,_enrolledIn,1),"t"):-choose(bnode_a32d7a7262844001b8708be5540d65dd112_st,X,_enrolledIn,1),bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t") .
choose(bnode_a32d7a7262844001b8708be5540d65dd112_st,X0,_p1,1);choose(bnode_a32d7a7262844001b8708be5540d65dd112_st,X0,_p1,0):-_enrolledIn_(X,X0,"t**"),bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t") .
_p1_(X0,@new(bnode_a32d7a7262844001b8708be5540d65dd112_st,X0,_p1,1),"t"):-choose(bnode_a32d7a7262844001b8708be5540d65dd112_st,X0,_p1,1),_enrolledIn_(X,X0,"t**"),bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),_p1_(X0,X1,"t**"),bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t*");s1_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_p1_(X0,X1,"f");_hasId_(X1,X2,"f"):-_enrolledIn_(X,X0,"t*"),_p1_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,X2,"f") .
1 {s1_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for bnode_a32d7a7262844001b8708be5540d65dd112
s2_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd112_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,@new(s3,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,1..1),"t"):-choose(s3,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,1) .
choose(s3,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,1);choose(s3,X,bnode_a32d7a7262844001b8708be5540d65dd112_st,0):-s3_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t*");s4_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-bnode_a32d7a7262844001b8708be5540d65dd112_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd116_(X,"t*"):-_cutShape_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd116_(X,"f"):-_cutShape_(X,"f") .


% sh:maxCount 0 for bnode_a32d7a7262844001b8708be5540d65dd116
s6_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd116_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,@new(s7,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,1..1),"t"):-choose(s7,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,1) .
choose(s7,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,1);choose(s7,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,0):-s7_(X,"t*") .
choose(bnode_a32d7a7262844001b8708be5540d65dd116_st,X,_p0,1);choose(bnode_a32d7a7262844001b8708be5540d65dd116_st,X,_p0,0):-bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t") .
_p0_(X,@new(bnode_a32d7a7262844001b8708be5540d65dd116_st,X,_p0,1),"t"):-choose(bnode_a32d7a7262844001b8708be5540d65dd116_st,X,_p0,1),bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t") .
0 {_p1_(X0,Y,"t")} 1:-_p0_(X,X0,"t**"),bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*");s8_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*")}=C,C>0 .
_p0_(X,X0,"f");_p1_(X0,X1,"f"):-_p0_(X,X0,"t*"),_p1_(X0,X1,"t*"),bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,X1,"f") .
1 {s8_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t**")} 1:-s7_(X,"t*") .


% sh:minCount 0 for bnode_a32d7a7262844001b8708be5540d65dd116
s9_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd116_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*");s10_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*")}=C,C>0 .
0 {s10_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t**")} 0:-s9_(X,"t*") .


% universal for bnode_a32d7a7262844001b8708be5540d65dd116
s11_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd116_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,@new(s12,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,1..1),"t"):-choose(s12,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,1) .
choose(s12,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,1);choose(s12,X,bnode_a32d7a7262844001b8708be5540d65dd116_st,0):-s12_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*");s13_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t*")}=C,C>0 .
1 {s13_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t**")} 1:-s12_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .


s6_(X,"f");s9_(X,"f");s11_(X,"f"):-bnode_a32d7a7262844001b8708be5540d65dd116_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_p1_(X,Y,"t**"):-_p1_(X,Y,"t*"),not _p1_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,X2,"t**"):-bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,X2,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,X2,"f"),_enrolledIn_(X,X0,"t**"),_p1_(X0,X1,"t**"),_hasId_(X1,X2,"t**") .
_p0_(X,Y,"t**"):-_p0_(X,Y,"t*"),not _p0_(X,Y,"f") .
bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,X1,"t**"):-bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,X1,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,X1,"f"),_p0_(X,X0,"t**"),_p1_(X0,X1,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_p1_(X,Y,"t"),_p1_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"t"),bnode_a32d7a7262844001b8708be5540d65dd112_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-_p0_(X,Y,"t"),_p0_(X,Y,"f") .
:-bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"t"),bnode_a32d7a7262844001b8708be5540d65dd116_st_(X,Y,"f") .
:-s8_(X,"f") .
:-s10_(X,"f") .
:-s14_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_p1(X,Y)):-_p1_(X,Y,"t**"),not _p1(X,Y) .
del(_p1(X,Y)):-_p1_(X,Y,"f"),_p1(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
add(_p0(X,Y)):-_p0_(X,Y,"t**"),not _p0(X,Y) .
del(_p0(X,Y)):-_p0_(X,Y,"f"),_p0(X,Y) .
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
