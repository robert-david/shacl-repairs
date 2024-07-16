
% Graph Data

_student("_ann") .
_teacher("_ann") .
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

_student_(X,"t*"):-_student(X) .
_student_(X,"t*"):-_student_(X,"t") .
_teacher_(X,"t*"):-_teacher(X) .
_teacher_(X,"t*"):-_teacher_(X,"t") .

% Repair Rules

s0_(X,"f"):-_personShape_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
_student_(X,"t"):-s1_(X,"t*") .
_student_(X,"f"):-s1_(X,"f") .
s2_(X,"t*"):-s0_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
s4_(X,"f"):-s3_(X,"f") .
_teacher_(X,"t"):-s4_(X,"t*") .
_teacher_(X,"f"):-s4_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
s1_(X,"f");s2_(X,"f"):-s0_(X,"f") .
s5_(X,"f"):-_personShape_(X,"f") .
s6_(X,"t*"):-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
s8_(X,"f"):-s7_(X,"f") .
_student_(X,"t"):-s8_(X,"t*") .
_student_(X,"f"):-s8_(X,"f") .
s8_(X,"t*"):-s7_(X,"t*") .
s9_(X,"t*"):-s5_(X,"t*") .
_teacher_(X,"t"):-s9_(X,"t*") .
_teacher_(X,"f"):-s9_(X,"f") .
s6_(X,"f");s9_(X,"f"):-s5_(X,"f") .
s0_(X,"t*");s5_(X,"t*"):-_personShape_(X,"t*") .

% Interpretation Rules

_student_(X,"t**"):-_student_(X,"t*"),not _student_(X,"f") .
_teacher_(X,"t**"):-_teacher_(X,"t*"),not _teacher_(X,"f") .

% Program Constraints

:-_student_(X,"t"),_student_(X,"f") .
:-_teacher_(X,"t"),_teacher_(X,"f") .

% Change Set Rules

add(_student(X)):-_student_(X,"t**"),not _student(X) .
del(_student(X)):-_student_(X,"f"),_student(X) .
add(_teacher(X)):-_teacher_(X,"t**"),not _teacher(X) .
del(_teacher(X)):-_teacher_(X,"f"),_teacher(X) .
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
