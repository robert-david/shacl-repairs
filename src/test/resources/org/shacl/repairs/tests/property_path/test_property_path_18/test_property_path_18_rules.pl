
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

targetNode("d_ben",d_StudentShape) .

% Constants

const("ID") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_StudentShape_("d_ben","t*"):-actualTarget("d_ben",d_StudentShape) .

% Annotation Rules

d_enrolledIn_(X,Y,"t*"):-d_enrolledIn(X,Y) .
d_enrolledIn_(X,Y,"t*"):-d_enrolledIn_(X,Y,"t") .
d_hasId_(X,Y,"t*"):-d_hasId(X,Y) .
d_hasId_(X,Y,"t*"):-d_hasId_(X,Y,"t") .
bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,X1,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca219_(X,_),d_enrolledIn_(X,X0,"t*"),d_hasId_(X0,X1,"t*") .

% Repair Rules

bnode_4e59e9881712447ba2228764412ec6ca219_(X,"t*"):-d_StudentShape_(X,"t*") .
bnode_4e59e9881712447ba2228764412ec6ca219_(X,"f"):-d_StudentShape_(X,"f") .


s0_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca219_(X,"t*") .
bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,@new(s0,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,1..1),"t"):-choose(s0,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,1) .
choose(s0,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,1);choose(s0,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,0):-s0_(X,"t*") .
0 {bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t"):const(Y)} 1:-s0_(X,"t*") .
choose(bnode_4e59e9881712447ba2228764412ec6ca219_st,X,d_enrolledIn,1);choose(bnode_4e59e9881712447ba2228764412ec6ca219_st,X,d_enrolledIn,0):-bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t") .
d_enrolledIn_(X,@new(bnode_4e59e9881712447ba2228764412ec6ca219_st,X,d_enrolledIn,1),"t"):-choose(bnode_4e59e9881712447ba2228764412ec6ca219_st,X,d_enrolledIn,1),bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t") .
0 {d_hasId_(X0,Y,"t")} 1:-d_enrolledIn_(X,X0,"t**"),bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*");s1_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*")}=C,C>0 .
d_enrolledIn_(X,X0,"f");d_hasId_(X0,X1,"f"):-d_enrolledIn_(X,X0,"t*"),d_hasId_(X0,X1,"t*"),bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,X1,"f") .
1 {s1_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% sh:minCount 0 for bnode_4e59e9881712447ba2228764412ec6ca219
s2_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca219_(X,"t*") .
0 {bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t"):const(Y)} 1:-s2_(X,"t*") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*");s3_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*")}=C,C>0 .
0 {s3_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t**")} 1:-s2_(X,"t*") .


% universal for bnode_4e59e9881712447ba2228764412ec6ca219
s4_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca219_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,@new(s5,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,1..1),"t"):-choose(s5,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,1) .
choose(s5,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,1);choose(s5,X,bnode_4e59e9881712447ba2228764412ec6ca219_st,0):-s5_(X,"t*") .
0 {bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t"):const(Y)} 1:-s5_(X,"t*") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*");s6_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s0_(X,"f");s2_(X,"f");s4_(X,"f"):-bnode_4e59e9881712447ba2228764412ec6ca219_(X,"f") .

% Interpretation Rules

d_enrolledIn_(X,Y,"t**"):-d_enrolledIn_(X,Y,"t*"),not d_enrolledIn_(X,Y,"f") .
d_hasId_(X,Y,"t**"):-d_hasId_(X,Y,"t*"),not d_hasId_(X,Y,"f") .
bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,X1,"t**"):-bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,X1,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,X1,"f"),d_enrolledIn_(X,X0,"t**"),d_hasId_(X0,X1,"t**") .

% Program Constraints

:-d_enrolledIn_(X,Y,"t"),d_enrolledIn_(X,Y,"f") .
:-d_hasId_(X,Y,"t"),d_hasId_(X,Y,"f") .
:-bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t"),bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"f") .
:-s1_(X,"t*"),X!="ID" .
:-s1_(X,"f"),X="ID" .
:-s3_(X,"f") .
:-s7_(X,"f") .

% Change Set Rules

add(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"t**"),not d_enrolledIn(X,Y) .
del(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"f"),d_enrolledIn(X,Y) .
add(d_hasId(X,Y)):-d_hasId_(X,Y,"t**"),not d_hasId(X,Y) .
del(d_hasId(X,Y)):-d_hasId_(X,Y,"f"),d_hasId(X,Y) .
#minimize { 1@1,X,Y: bnode_4e59e9881712447ba2228764412ec6ca219_st_(X,Y,"t"), const(Y) } .
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
