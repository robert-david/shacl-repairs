
% Graph Data

d_hasValue("d_observation","1.5") .
xsd_float("1.5") .
d_hasValue("d_observation","2") .
xsd_float("2") .
d_hasValue("d_observation","2.51") .
xsd_float("2.51") .
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

targetNode("d_observation",d_OutlierShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_OutlierShape_("d_observation","t*"):-actualTarget("d_observation",d_OutlierShape) .

% Annotation Rules

d_hasValue_(X,Y,"t*"):-d_hasValue(X,Y) .
d_hasValue_(X,Y,"t*"):-d_hasValue_(X,Y,"t") .
bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_st_(X,Y,"t*"):-bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_(X,_),d_hasValue_(X,Y,"t*") .

% Repair Rules

bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_(X,"t*"):-d_OutlierShape_(X,"t*") .
bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_(X,"f"):-d_OutlierShape_(X,"f") .

% sh:minCount 0 for bnode_7f9d9b63cd6e4fd98d80676ce404d35f13
s0_(X,"t*"):-bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_(X,"t*") .
(C-0) {d_hasValue_(X,Y,"f"):d_hasValue_(X,Y,"t*");s1_(Y,"f"):d_hasValue_(X,Y,"t*"),not d_hasValue_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:d_hasValue_(X,Y,"t*")}=C,C>0 .
d_hasValue_(X,Y,"f"):-d_hasValue_(X,Y,"t*"),d_hasValue_(X,Y,"f") .
0 {s1_(Y,"t*"):d_hasValue_(X,Y,"t**")} 0:-s0_(X,"t*") .


s2_(X,"t*"):-bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_(X,"t*") .
d_hasValue_(X,Y,"f"):-s2_(X,"t*"),d_hasValue_(X,Y,"t*"),@leq(Y,"2")="f" .
d_hasValue_(X,Y,"f"):-s2_(X,"f"),d_hasValue_(X,Y,"t*"),@leq(Y,"2")="t" .

% universal for bnode_7f9d9b63cd6e4fd98d80676ce404d35f13
s3_(X,"t*"):-bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
d_hasValue_(X,@new(s4,X,d_hasValue,1..1),"t"):-choose(s4,X,d_hasValue,1) .
choose(s4,X,d_hasValue,1);choose(s4,X,d_hasValue,0):-s4_(X,"t*") .
(C-0) {d_hasValue_(X,Y,"f"):d_hasValue_(X,Y,"t*");s5_(Y,"f"):d_hasValue_(X,Y,"t*"),not d_hasValue_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:d_hasValue_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):d_hasValue_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s0_(X,"f");s2_(X,"f");s3_(X,"f"):-bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_(X,"f") .

% Interpretation Rules

d_hasValue_(X,Y,"t**"):-d_hasValue_(X,Y,"t*"),not d_hasValue_(X,Y,"f") .
bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_st_(X,Y,"t**"):-d_hasValue_(X,Y,"t**"),bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_st_(X,Y,"t*"),not bnode_7f9d9b63cd6e4fd98d80676ce404d35f13_st_(X,Y,"f") .

% Program Constraints

:-d_hasValue_(X,Y,"t"),d_hasValue_(X,Y,"f") .
:-s1_(X,"f") .
:-s6_(X,"f") .

% Change Set Rules

add(d_hasValue(X,Y)):-d_hasValue_(X,Y,"t**"),not d_hasValue(X,Y) .
del(d_hasValue(X,Y)):-d_hasValue_(X,Y,"f"),d_hasValue(X,Y) .
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


#script (lua)
function gt(X,Y)
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "nil" end
if x>y then return "t" else return "f" end
end

function lt(X,Y)
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "nil" end
if x<y then return "t" else return "f" end
end

function geq(X,Y)
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "nil" end
if x>=y then return "t" else return "f" end
end

function leq(X,Y)
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "nil" end
if x<=y then return "t" else return "f" end
end

function getNumbers(X,Y)
local x,_ = string.gsub(tostring(X),"\"","")
local y,_ = string.gsub(tostring(Y),"\"","")
local xn = tonumber(x)
local yn = tonumber(y)
return xn,yn
end
#end .
