
% Graph Data

d_hasStudent("d_bn1","d_ben") .
d_hasStudent("d_bn2","d_ben") .
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

targetNode("d_ben",d_StudentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_StudentShape_("d_ben","t*"):-actualTarget("d_ben",d_StudentShape) .

% Annotation Rules

d_hasStudent_(X,Y,"t*"):-d_hasStudent(X,Y) .
d_hasStudent_(X,Y,"t*"):-d_hasStudent_(X,Y,"t") .
d_hasStudent_(Y,X,"t"):-d_hasStudent_inv_(X,Y,"t") .
d_hasStudent_inv_(X,Y,"t*"):-d_hasStudent_(Y,X,"t*") .
d_hasStudent_(Y,X,"f"):-d_hasStudent_inv_(X,Y,"f") .
d_hasStudent_inv_(X,Y,"f"):-d_hasStudent_(Y,X,"f") .
bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca137_(X,_),d_hasStudent_inv_(X,Y,"t*") .

% Repair Rules

bnode_4e59e9881712447ba2228764412ec6ca137_(X,"t*"):-d_StudentShape_(X,"t*") .
bnode_4e59e9881712447ba2228764412ec6ca137_(X,"f"):-d_StudentShape_(X,"f") .

% sh:maxCount 1 for bnode_4e59e9881712447ba2228764412ec6ca137
s0_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca137_(X,"t*") .
s1_(X,"f"):-s0_(X,"t*") .
s1_(X,"t*"):-s0_(X,"f") .
d_hasStudent_inv_(X,@new(s1,X,d_hasStudent_inv_,1..1),"t"):-choose(s1,X,d_hasStudent,1) .
d_hasStudent_inv_(X,@new(s1,X,d_hasStudent_inv_,1..2),"t"):-choose(s1,X,d_hasStudent,2) .
choose(s1,X,d_hasStudent,2);choose(s1,X,d_hasStudent,1);choose(s1,X,d_hasStudent,0):-s1_(X,"t*") .
(C-1) {bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*");s2_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*")}=C,C>1 .
d_hasStudent_(Y,X,"f"):-d_hasStudent_inv_(X,Y,"t*"),bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f") .
2 {s2_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t**")} 2:-s1_(X,"t*") .


% sh:minCount 0 for bnode_4e59e9881712447ba2228764412ec6ca137
s3_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca137_(X,"t*") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*");s4_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*")}=C,C>0 .
0 {s4_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t**")} 0:-s3_(X,"t*") .


% universal for bnode_4e59e9881712447ba2228764412ec6ca137
s5_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca137_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
d_hasStudent_inv_(X,@new(s6,X,d_hasStudent_inv_,1..1),"t"):-choose(s6,X,d_hasStudent,1) .
choose(s6,X,d_hasStudent,1);choose(s6,X,d_hasStudent,0):-s6_(X,"t*") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*");s7_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s3_(X,"f");s5_(X,"f"):-bnode_4e59e9881712447ba2228764412ec6ca137_(X,"f") .

% Interpretation Rules

d_hasStudent_(X,Y,"t**"):-d_hasStudent_(X,Y,"t*"),not d_hasStudent_(X,Y,"f") .
d_hasStudent_inv_(X,Y,"t**"):-d_hasStudent_inv_(X,Y,"t*"),not d_hasStudent_inv_(X,Y,"f") .
bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t**"):-d_hasStudent_inv_(X,Y,"t**"),bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca137_st_(X,Y,"f") .

% Program Constraints

:-d_hasStudent_(X,Y,"t"),d_hasStudent_(X,Y,"f") .
:-d_hasStudent_inv_(X,Y,"t"),d_hasStudent_inv_(X,Y,"f") .
:-s2_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(d_hasStudent(X,Y)):-d_hasStudent_(X,Y,"t**"),not d_hasStudent(X,Y) .
del(d_hasStudent(X,Y)):-d_hasStudent_(X,Y,"f"),d_hasStudent(X,Y) .
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
