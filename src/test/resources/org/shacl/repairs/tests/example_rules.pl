
% Graph Data

_enrolledIn("_ann","_course1") .
_enrolledIn("_ben","_course1") .
_enrolledIn("_bob","_course1") .
_hasStudentID("_ann","2119110") .
xsd_string("2119110") .
_hasStudentID("_ben","1716110") .
xsd_string("1716110") .
_hasStudentID("_bob","9427084") .
xsd_string("9427084") .
_participantID("_course1","2119110") .
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

targetNode("_course1",_courseLimitShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_courseLimitShape_("_course1","t*"):-actualTarget("_course1",_courseLimitShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_enrolledIn_(Y,X,"t"):-_enrolledIn_inv_(X,Y,"t") .
_enrolledIn_inv_(X,Y,"t*"):-_enrolledIn_(Y,X,"t*") .
_enrolledIn_(Y,X,"f"):-_enrolledIn_inv_(X,Y,"f") .
_enrolledIn_inv_(X,Y,"f"):-_enrolledIn_(Y,X,"f") .
_hasStudentID_(X,Y,"t*"):-_hasStudentID(X,Y) .
_hasStudentID_(X,Y,"t*"):-_hasStudentID_(X,Y,"t") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,X1,"t*"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,_),_enrolledIn_inv_(X,X0,"t*"),_hasStudentID_(X0,X1,"t*") .
_participantID_(X,Y,"t*"):-_participantID(X,Y) .
_participantID_(X,Y,"t*"):-_participantID_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-_courseLimitShape_(X,"t*") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*"):-s0_(X,"t*") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"f"):-s0_(X,"f") .


% sh:minCount 0 for bnode_b4c67301a2984683bdcf0b465eb4e86717
s1_(X,"t*"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*") .
choose(bnode_b4c67301a2984683bdcf0b465eb4e86717_st,X,_enrolledIn_inv_,1);choose(bnode_b4c67301a2984683bdcf0b465eb4e86717_st,X,_enrolledIn_inv_,0):-bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t") .
_enrolledIn_inv_(X,@new(bnode_b4c67301a2984683bdcf0b465eb4e86717_st,X,_enrolledIn_inv_,1),"t"):-choose(bnode_b4c67301a2984683bdcf0b465eb4e86717_st,X,_enrolledIn_inv_,1),bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t") .
0 {_hasStudentID_(X0,Y,"t")} 1:-_enrolledIn_inv_(X,X0,"t**"),bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t") .
(C-0) {bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*");s2_(Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*"),not bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_inv_(X,X0,"f");_hasStudentID_(X0,X1,"f"):-_enrolledIn_inv_(X,X0,"t*"),_hasStudentID_(X0,X1,"t*"),bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,X1,"f") .
0 {s2_(Y,"t*"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t**")} 0:-s1_(X,"t*") .


s3_(X,"t*"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*") .
_participantID_(X,Y,"t");bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f"):-s3_(X,"t*"),bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t");_participantID_(X,Y,"f"):-s3_(X,"t*"),_participantID_(X,Y,"t*") .
1 {bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*"),_participantID_(X,Y,"t*");_participantID_(X,Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*"),_participantID_(X,Y,"t*")} 1:-s3_(X,"f") .

% universal for bnode_b4c67301a2984683bdcf0b465eb4e86717
s4_(X,"t*"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,@new(s5,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1..1),"t"):-choose(s5,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1) .
choose(s5,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1);choose(s5,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,0):-s5_(X,"t*") .
(C-0) {bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*");s6_(Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*"),not bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s1_(X,"f");s3_(X,"f");s4_(X,"f"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"f") .
s8_(X,"t*"):-_courseLimitShape_(X,"t*") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*"):-s8_(X,"t*") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"f"):-s8_(X,"f") .


% sh:maxCount 2 for bnode_b4c67301a2984683bdcf0b465eb4e86717
s9_(X,"t*"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,@new(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1..1),"t"):-choose(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1) .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,@new(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1..2),"t"):-choose(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,2) .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,@new(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1..3),"t"):-choose(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,3) .
choose(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,3);choose(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,2);choose(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1);choose(s10,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,0):-s10_(X,"t*") .
(C-2) {bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*");s11_(Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*"),not bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f")} (C-2):-s10_(X,"f"),#count {Y:bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*")}=C,C>2 .
3 {s11_(Y,"t*"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t**")} 3:-s10_(X,"t*") .


s12_(X,"t*"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*") .
(C-0) {bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*");s13_(Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*"),not bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*")}=C,C>0 .
0 {s13_(Y,"t*"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t**")} 0:-s12_(X,"t*") .


s14_(X,"t*"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,@new(s15,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1..1),"t"):-choose(s15,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1) .
choose(s15,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,1);choose(s15,X,bnode_b4c67301a2984683bdcf0b465eb4e86717_st,0):-s15_(X,"t*") .
(C-0) {bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*");s16_(Y,"f"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*"),not bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t*")}=C,C>0 .
1 {s16_(Y,"t*"):bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t**")} 1:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .


s9_(X,"f");s12_(X,"f");s14_(X,"f"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_(X,"f") .
s0_(X,"f");s8_(X,"f"):-_courseLimitShape_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_enrolledIn_inv_(X,Y,"t**"):-_enrolledIn_inv_(X,Y,"t*"),not _enrolledIn_inv_(X,Y,"f") .
_hasStudentID_(X,Y,"t**"):-_hasStudentID_(X,Y,"t*"),not _hasStudentID_(X,Y,"f") .
bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,X1,"t**"):-bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,X1,"t*"),not bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,X1,"f"),_enrolledIn_inv_(X,X0,"t**"),_hasStudentID_(X0,X1,"t**") .
_participantID_(X,Y,"t**"):-_participantID_(X,Y,"t*"),not _participantID_(X,Y,"f") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_enrolledIn_inv_(X,Y,"t"),_enrolledIn_inv_(X,Y,"f") .
:-_hasStudentID_(X,Y,"t"),_hasStudentID_(X,Y,"f") .
:-bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t"),bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s3_(X,"t*"),_participantID_(X,Y,"t**"),not bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t**") .
:-s3_(X,"t*"),bnode_b4c67301a2984683bdcf0b465eb4e86717_st_(X,Y,"t**"),not _participantID_(X,Y,"t**") .
:-_participantID_(X,Y,"t"),_participantID_(X,Y,"f") .
:-s7_(X,"f") .
:-s11_(X,"f") .
:-s13_(X,"f") .
:-s17_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasStudentID(X,Y)):-_hasStudentID_(X,Y,"t**"),not _hasStudentID(X,Y) .
del(_hasStudentID(X,Y)):-_hasStudentID_(X,Y,"f"),_hasStudentID(X,Y) .
add(_participantID(X,Y)):-_participantID_(X,Y,"t**"),not _participantID(X,Y) .
del(_participantID(X,Y)):-_participantID_(X,Y,"f"),_participantID(X,Y) .
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
