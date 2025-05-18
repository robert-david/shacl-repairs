
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

targetNode("d_ann",d_NotPersonShape) .
targetNode("d_ann",d_PersonShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_NotPersonShape_("d_ann","t*"):-actualTarget("d_ann",d_NotPersonShape) .
d_PersonShape_("d_ann","t*"):-actualTarget("d_ann",d_PersonShape) .

% Annotation Rules

d_Organization_(X,"t*"):-d_Organization(X) .
d_Organization_(X,"t*"):-d_Organization_(X,"t") .
d_Person_(X,"t*"):-d_Person(X) .
d_Person_(X,"t*"):-d_Person_(X,"t") .

% Repair Rules

bnode_a662fb303d9b442282b5343d5a95798969_(X,"f"):-d_NotPersonShape_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798969_(X,"t*"):-d_NotPersonShape_(X,"f") .
s0_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798969_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798968_(X,"f"):-s0_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798968_(X,"t*"):-s0_(X,"f") .
d_Organization_(X,"t"):-bnode_a662fb303d9b442282b5343d5a95798968_(X,"t*") .
d_Organization_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798968_(X,"f") .
s1_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798969_(X,"t*") .
d_Person_(X,"t"):-s1_(X,"t*") .
d_Person_(X,"f"):-s1_(X,"f") .
s0_(X,"f");s1_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798969_(X,"f") .
s2_(X,"t*"):-d_PersonShape_(X,"t*") .
d_Person_(X,"t"):-s2_(X,"t*") .
d_Person_(X,"f"):-s2_(X,"f") .
s3_(X,"t*"):-d_PersonShape_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798968_(X,"f"):-s3_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798968_(X,"t*"):-s3_(X,"f") .
s2_(X,"f");s3_(X,"f"):-d_PersonShape_(X,"f") .

% Interpretation Rules

d_Organization_(X,"t**"):-d_Organization_(X,"t*"),not d_Organization_(X,"f") .
d_Person_(X,"t**"):-d_Person_(X,"t*"),not d_Person_(X,"f") .

% Program Constraints

:-d_Organization_(X,"t"),d_Organization_(X,"f") .
:-d_Person_(X,"t"),d_Person_(X,"f") .

% Change Set Rules

add(d_Organization(X)):-d_Organization_(X,"t**"),not d_Organization(X) .
del(d_Organization(X)):-d_Organization_(X,"f"),d_Organization(X) .
add(d_Person(X)):-d_Person_(X,"t**"),not d_Person(X) .
del(d_Person(X)):-d_Person_(X,"f"),d_Person(X) .
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
