
% Graph Data

_enrolledIn("_ben","_n1") .
_hasCourse("_ben","_n1") .
_course("_n1") .
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
targetNode("_ben",_scheduledCourseShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .
_scheduledCourseShape_("_ben","t*"):-actualTarget("_ben",_scheduledCourseShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
bnode_169a36fbc2404db285bbeb40e7a6c7c755_st_(X,Y,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c755_(X,_),_enrolledIn_(X,Y,"t*") .
_hasCourse_(X,Y,"t*"):-_hasCourse(X,Y) .
_hasCourse_(X,Y,"t*"):-_hasCourse_(X,Y,"t") .
_course_(X,"t*"):-_course(X) .
_course_(X,"t*"):-_course_(X,"t") .
bnode_169a36fbc2404db285bbeb40e7a6c7c756_st_(X,Y,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c756_(X,_),_hasCourse_(X,Y,"t*") .

% Repair Rules

bnode_169a36fbc2404db285bbeb40e7a6c7c754_(X,"f"):-_studentShape_(X,"t*") .
bnode_169a36fbc2404db285bbeb40e7a6c7c754_(X,"t*"):-_studentShape_(X,"f") .
bnode_169a36fbc2404db285bbeb40e7a6c7c755_(X,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c754_(X,"t*") .
bnode_169a36fbc2404db285bbeb40e7a6c7c755_(X,"f"):-bnode_169a36fbc2404db285bbeb40e7a6c7c754_(X,"f") .

s0_(X,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c755_(X,"t*") .
_hasCourse_(X,Y,"t");_enrolledIn_(X,Y,"f"):-s0_(X,"t*"),_enrolledIn_(X,Y,"t*") .
_enrolledIn_(X,Y,"t");_hasCourse_(X,Y,"f"):-s0_(X,"t*"),_hasCourse_(X,Y,"t*") .
notEquals(s0,X,_enrolledIn,_hasCourse):-s0_(X,"f"),_enrolledIn_(X,Y,"t*"),not _hasCourse_(X,Y,"t*") .
notEquals(s0,X,_enrolledIn,_hasCourse):-s0_(X,"f"),not _enrolledIn_(X,Y,"t*"),_hasCourse_(X,Y,"t*") .
1 {_enrolledIn_(X,Y,"f"):_hasCourse_(X,Y,"t*");_hasCourse_(X,Y,"f"):_enrolledIn_(X,Y,"t*");_enrolledIn_(X,@new(s0,X,_enrolledIn,1),"t*");_hasCourse_(X,@new(s0,X,_hasCourse,1),"t*")} 1:-s0_(X,"f"),not notEquals(s0,X,_enrolledIn,_hasCourse) .

% sh:minCount 1 for bnode_169a36fbc2404db285bbeb40e7a6c7c755
s1_(X,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c755_(X,"t*") .
_enrolledIn_(X,@new(s1,X,_enrolledIn,1..1),"t"):-choose(s1,X,_enrolledIn,1) .
choose(s1,X,_enrolledIn,1);choose(s1,X,_enrolledIn,0):-s1_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s2_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s2_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s1_(X,"t*") .

_course_(X,"t"):-s2_(X,"t*") .
_course_(X,"f"):-s2_(X,"f") .

% universal for bnode_169a36fbc2404db285bbeb40e7a6c7c755
s3_(X,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c755_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_enrolledIn_(X,@new(s4,X,_enrolledIn,1..1),"t"):-choose(s4,X,_enrolledIn,1) .
choose(s4,X,_enrolledIn,1);choose(s4,X,_enrolledIn,0):-s4_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s5_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

_course_(X,"t"):-s6_(X,"t*") .
_course_(X,"f"):-s6_(X,"f") .

s0_(X,"f");s1_(X,"f");s3_(X,"f"):-bnode_169a36fbc2404db285bbeb40e7a6c7c755_(X,"f") .
bnode_169a36fbc2404db285bbeb40e7a6c7c756_(X,"t*"):-_scheduledCourseShape_(X,"t*") .
bnode_169a36fbc2404db285bbeb40e7a6c7c756_(X,"f"):-_scheduledCourseShape_(X,"f") .

% sh:minCount 2 for bnode_169a36fbc2404db285bbeb40e7a6c7c756
s7_(X,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c756_(X,"t*") .
_hasCourse_(X,@new(s7,X,_hasCourse,1..1),"t"):-choose(s7,X,_hasCourse,1) .
_hasCourse_(X,@new(s7,X,_hasCourse,1..2),"t"):-choose(s7,X,_hasCourse,2) .
choose(s7,X,_hasCourse,2);choose(s7,X,_hasCourse,1);choose(s7,X,_hasCourse,0):-s7_(X,"t*") .
(C-1) {_hasCourse_(X,Y,"f"):_hasCourse_(X,Y,"t*");s8_(Y,"f"):_hasCourse_(X,Y,"t*"),not _hasCourse_(X,Y,"f")} (C-1):-s7_(X,"f"),#count {Y:_hasCourse_(X,Y,"t*")}=C,C>1 .
_hasCourse_(X,Y,"f"):-_hasCourse_(X,Y,"t*"),_hasCourse_(X,Y,"f") .
2 {s8_(Y,"t*"):_hasCourse_(X,Y,"t**")} 2:-s7_(X,"t*") .


% universal for bnode_169a36fbc2404db285bbeb40e7a6c7c756
s9_(X,"t*"):-bnode_169a36fbc2404db285bbeb40e7a6c7c756_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
_hasCourse_(X,@new(s10,X,_hasCourse,1..1),"t"):-choose(s10,X,_hasCourse,1) .
choose(s10,X,_hasCourse,1);choose(s10,X,_hasCourse,0):-s10_(X,"t*") .
(C-0) {_hasCourse_(X,Y,"f"):_hasCourse_(X,Y,"t*");s11_(Y,"f"):_hasCourse_(X,Y,"t*"),not _hasCourse_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:_hasCourse_(X,Y,"t*")}=C,C>0 .
1 {s11_(Y,"t*"):_hasCourse_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s7_(X,"f");s9_(X,"f"):-bnode_169a36fbc2404db285bbeb40e7a6c7c756_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
bnode_169a36fbc2404db285bbeb40e7a6c7c755_st_(X,Y,"t**"):-_enrolledIn_(X,Y,"t**"),bnode_169a36fbc2404db285bbeb40e7a6c7c755_st_(X,Y,"t*"),not bnode_169a36fbc2404db285bbeb40e7a6c7c755_st_(X,Y,"f") .
_hasCourse_(X,Y,"t**"):-_hasCourse_(X,Y,"t*"),not _hasCourse_(X,Y,"f") .
_course_(X,"t**"):-_course_(X,"t*"),not _course_(X,"f") .
bnode_169a36fbc2404db285bbeb40e7a6c7c756_st_(X,Y,"t**"):-_hasCourse_(X,Y,"t**"),bnode_169a36fbc2404db285bbeb40e7a6c7c756_st_(X,Y,"t*"),not bnode_169a36fbc2404db285bbeb40e7a6c7c756_st_(X,Y,"f") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-s0_(X,"t*"),_hasCourse_(X,Y,"t**"),not _enrolledIn_(X,Y,"t**") .
:-s0_(X,"t*"),_enrolledIn_(X,Y,"t**"),not _hasCourse_(X,Y,"t**") .
:-_hasCourse_(X,Y,"t"),_hasCourse_(X,Y,"f") .
:-_course_(X,"t"),_course_(X,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasCourse(X,Y)):-_hasCourse_(X,Y,"t**"),not _hasCourse(X,Y) .
del(_hasCourse(X,Y)):-_hasCourse_(X,Y,"f"),_hasCourse(X,Y) .
add(_course(X)):-_course_(X,"t**"),not _course(X) .
del(_course(X)):-_course_(X,"f"),_course(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

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
