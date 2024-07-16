
% Graph Data

_hasStudent("_bn1","_ben") .
_hasStudent("_bn2","_ben") .
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

_hasStudent_(X,Y,"t*"):-_hasStudent(X,Y) .
_hasStudent_(X,Y,"t*"):-_hasStudent_(X,Y,"t") .
_hasStudent_(Y,X,"t"):-_hasStudent_inv_(X,Y,"t") .
_hasStudent_inv_(X,Y,"t*"):-_hasStudent_(Y,X,"t*") .
_hasStudent_(Y,X,"f"):-_hasStudent_inv_(X,Y,"f") .
_hasStudent_inv_(X,Y,"f"):-_hasStudent_(Y,X,"f") .
bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd137_(X,_),_hasStudent_inv_(X,Y,"t*") .

% Repair Rules

bnode_a32d7a7262844001b8708be5540d65dd137_(X,"t*"):-_studentShape_(X,"t*") .
bnode_a32d7a7262844001b8708be5540d65dd137_(X,"f"):-_studentShape_(X,"f") .

% sh:minCount 0 for bnode_a32d7a7262844001b8708be5540d65dd137
s0_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd137_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*");s1_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*")}=C,C>0 .
_hasStudent_(Y,X,"f"):-_hasStudent_inv_(X,Y,"t*"),bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f") .
0 {s1_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t**")} 0:-s0_(X,"t*") .


% sh:maxCount 1 for bnode_a32d7a7262844001b8708be5540d65dd137
s2_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd137_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_hasStudent_inv_(X,@new(s3,X,_hasStudent_inv_,1..1),"t"):-choose(s3,X,_hasStudent,1) .
_hasStudent_inv_(X,@new(s3,X,_hasStudent_inv_,1..2),"t"):-choose(s3,X,_hasStudent,2) .
choose(s3,X,_hasStudent,2);choose(s3,X,_hasStudent,1);choose(s3,X,_hasStudent,0):-s3_(X,"t*") .
(C-1) {bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*");s4_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f")} (C-1):-s3_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*")}=C,C>1 .
2 {s4_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t**")} 2:-s3_(X,"t*") .


% universal for bnode_a32d7a7262844001b8708be5540d65dd137
s5_(X,"t*"):-bnode_a32d7a7262844001b8708be5540d65dd137_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
_hasStudent_inv_(X,@new(s6,X,_hasStudent_inv_,1..1),"t"):-choose(s6,X,_hasStudent,1) .
choose(s6,X,_hasStudent,1);choose(s6,X,_hasStudent,0):-s6_(X,"t*") .
(C-0) {bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*");s7_(Y,"f"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s2_(X,"f");s5_(X,"f"):-bnode_a32d7a7262844001b8708be5540d65dd137_(X,"f") .

% Interpretation Rules

_hasStudent_(X,Y,"t**"):-_hasStudent_(X,Y,"t*"),not _hasStudent_(X,Y,"f") .
_hasStudent_inv_(X,Y,"t**"):-_hasStudent_inv_(X,Y,"t*"),not _hasStudent_inv_(X,Y,"f") .
bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t**"):-_hasStudent_inv_(X,Y,"t**"),bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"t*"),not bnode_a32d7a7262844001b8708be5540d65dd137_st_(X,Y,"f") .

% Program Constraints

:-_hasStudent_(X,Y,"t"),_hasStudent_(X,Y,"f") .
:-_hasStudent_inv_(X,Y,"t"),_hasStudent_inv_(X,Y,"f") .
:-s1_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(_hasStudent(X,Y)):-_hasStudent_(X,Y,"t**"),not _hasStudent(X,Y) .
del(_hasStudent(X,Y)):-_hasStudent_(X,Y,"f"),_hasStudent(X,Y) .
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
