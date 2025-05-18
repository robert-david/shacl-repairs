
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
rdfs_Datatype("owl_rational") .
rdfs_Datatype("owl_real") .

% Shape Targets

targetNode("d_ann",d_PersonShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PersonShape_("d_ann","t*"):-actualTarget("d_ann",d_PersonShape) .

% Annotation Rules

d_Teacher_(X,"t*"):-d_Teacher(X) .
d_Teacher_(X,"t*"):-d_Teacher_(X,"t") .
d_Student_(X,"t*"):-d_Student(X) .
d_Student_(X,"t*"):-d_Student_(X,"t") .

% Repair Rules

s0_(X,"f"):-d_PersonShape_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
s3_(X,"f"):-s2_(X,"f") .
d_Teacher_(X,"t"):-s3_(X,"t*") .
d_Teacher_(X,"f"):-s3_(X,"f") .
s3_(X,"t*"):-s2_(X,"t*") .
s4_(X,"t*"):-s0_(X,"t*") .
d_Student_(X,"t"):-s4_(X,"t*") .
d_Student_(X,"f"):-s4_(X,"f") .
s1_(X,"f");s4_(X,"f"):-s0_(X,"f") .
s5_(X,"f"):-d_PersonShape_(X,"f") .
s6_(X,"t*"):-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
s8_(X,"f"):-s7_(X,"f") .
d_Student_(X,"t"):-s8_(X,"t*") .
d_Student_(X,"f"):-s8_(X,"f") .
s8_(X,"t*"):-s7_(X,"t*") .
s9_(X,"t*"):-s5_(X,"t*") .
d_Teacher_(X,"t"):-s9_(X,"t*") .
d_Teacher_(X,"f"):-s9_(X,"f") .
s6_(X,"f");s9_(X,"f"):-s5_(X,"f") .
s0_(X,"t*");s5_(X,"t*"):-d_PersonShape_(X,"t*") .

% Interpretation Rules

d_Teacher_(X,"t**"):-d_Teacher_(X,"t*"),not d_Teacher_(X,"f") .
d_Student_(X,"t**"):-d_Student_(X,"t*"),not d_Student_(X,"f") .

% Program Constraints

:-d_Teacher_(X,"t"),d_Teacher_(X,"f") .
:-d_Student_(X,"t"),d_Student_(X,"f") .

% Change Set Rules

add(d_Teacher(X)):-d_Teacher_(X,"t**"),not d_Teacher(X) .
del(d_Teacher(X)):-d_Teacher_(X,"f"),d_Teacher(X) .
add(d_Student(X)):-d_Student_(X,"t**"),not d_Student(X) .
del(d_Student(X)):-d_Student_(X,"f"),d_Student(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

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
return tostring('new_' .. result)
end
#end .


#script (lua)
function gt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>y then return "t" else return "f" end
end

function lt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<y then return "t" else return "f" end
end

function geq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>=y then return "t" else return "f" end
end

function leq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<=y then return "t" else return "f" end
end

function getNumbers(X,Y)
local x,_ = string.gsub(tostring(X),"\"","")
local y,_ = string.gsub(tostring(Y),"\"","")
local xn = tonumber(x)
local yn = tonumber(y)
return xn,yn
end

function isNew(X)
return string.match(tostring(X), '^"new')
end
#end .
