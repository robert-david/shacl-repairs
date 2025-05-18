
% Graph Data

d_name("d_ann","ANN") .
xsd_string("ANN") .
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

const("ANN") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PersonShape_("d_ann","t*"):-actualTarget("d_ann",d_PersonShape) .

% Annotation Rules

d_name_(X,Y,"t*"):-d_name(X,Y) .
d_name_(X,Y,"t*"):-d_name_(X,Y,"t") .
bnode_3436295670d5441a8691a5d61f971bee160_st_(X,Y,"t*"):-bnode_3436295670d5441a8691a5d61f971bee160_(X,_),d_name_(X,Y,"t*") .
d_Person_(X,"t*"):-d_Person(X) .
d_Person_(X,"t*"):-d_Person_(X,"t") .

% Repair Rules

s0_(X,"t*"):-d_PersonShape_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee160_(X,"t*"):-s0_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee160_(X,"f"):-s0_(X,"f") .

% sh:minCount 2 for bnode_3436295670d5441a8691a5d61f971bee160
s1_(X,"t*"):-bnode_3436295670d5441a8691a5d61f971bee160_(X,"t*") .
d_name_(X,@new(s1,X,d_name,1..1),"t"):-choose(s1,X,d_name,1) .
d_name_(X,@new(s1,X,d_name,1..2),"t"):-choose(s1,X,d_name,2) .
choose(s1,X,d_name,2);choose(s1,X,d_name,1);choose(s1,X,d_name,0):-s1_(X,"t*") .
0 {d_name_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
(C-1) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s2_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>1 .
d_name_(X,Y,"f"):-d_name_(X,Y,"t*"),d_name_(X,Y,"f") .
2 {s2_(Y,"t*"):d_name_(X,Y,"t**")} 2:-s1_(X,"t*") .


% universal for bnode_3436295670d5441a8691a5d61f971bee160
s3_(X,"t*"):-bnode_3436295670d5441a8691a5d61f971bee160_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
d_name_(X,@new(s4,X,d_name,1..1),"t"):-choose(s4,X,d_name,1) .
choose(s4,X,d_name,1);choose(s4,X,d_name,0):-s4_(X,"t*") .
0 {d_name_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
(C-0) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s5_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):d_name_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_3436295670d5441a8691a5d61f971bee160_(X,"f") .
s7_(X,"t*"):-d_PersonShape_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee160_(X,"t*"):-s7_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee160_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for bnode_3436295670d5441a8691a5d61f971bee160
s8_(X,"t*"):-bnode_3436295670d5441a8691a5d61f971bee160_(X,"t*") .
0 {d_name_(X,Y,"t"):const(Y)} 1:-s8_(X,"t*") .
(C-0) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s9_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>0 .
0 {s9_(Y,"t*"):d_name_(X,Y,"t**")} 1:-s8_(X,"t*") .

s10_(X,"f"):-s9_(X,"f") .
bnode_3436295670d5441a8691a5d61f971bee166_(X,"f"):-s10_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee166_(X,"t*"):-s10_(X,"f") .
d_Person_(X,"t"):-bnode_3436295670d5441a8691a5d61f971bee166_(X,"t*") .
d_Person_(X,"f"):-bnode_3436295670d5441a8691a5d61f971bee166_(X,"f") .
s11_(X,"f"):-s9_(X,"f") .
bnode_3436295670d5441a8691a5d61f971bee163_(X,"f"):-s11_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee163_(X,"t*"):-s11_(X,"f") .
s10_(X,"t*");s11_(X,"t*"):-s9_(X,"t*") .

s12_(X,"t*"):-bnode_3436295670d5441a8691a5d61f971bee160_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
d_name_(X,@new(s13,X,d_name,1..1),"t"):-choose(s13,X,d_name,1) .
choose(s13,X,d_name,1);choose(s13,X,d_name,0):-s13_(X,"t*") .
0 {d_name_(X,Y,"t"):const(Y)} 1:-s13_(X,"t*") .
(C-0) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s14_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):d_name_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .

s16_(X,"f"):-s15_(X,"f") .
bnode_3436295670d5441a8691a5d61f971bee166_(X,"f"):-s16_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee166_(X,"t*"):-s16_(X,"f") .
s17_(X,"f"):-s15_(X,"f") .
bnode_3436295670d5441a8691a5d61f971bee163_(X,"f"):-s17_(X,"t*") .
bnode_3436295670d5441a8691a5d61f971bee163_(X,"t*"):-s17_(X,"f") .
s16_(X,"t*");s17_(X,"t*"):-s15_(X,"t*") .

s8_(X,"f");s12_(X,"f"):-bnode_3436295670d5441a8691a5d61f971bee160_(X,"f") .
s0_(X,"f");s7_(X,"f"):-d_PersonShape_(X,"f") .

% Interpretation Rules

d_name_(X,Y,"t**"):-d_name_(X,Y,"t*"),not d_name_(X,Y,"f") .
bnode_3436295670d5441a8691a5d61f971bee160_st_(X,Y,"t**"):-d_name_(X,Y,"t**"),bnode_3436295670d5441a8691a5d61f971bee160_st_(X,Y,"t*"),not bnode_3436295670d5441a8691a5d61f971bee160_st_(X,Y,"f") .
d_Person_(X,"t**"):-d_Person_(X,"t*"),not d_Person_(X,"f") .

% Program Constraints

:-d_name_(X,Y,"t"),d_name_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-d_Person_(X,"t"),d_Person_(X,"f") .
:-bnode_3436295670d5441a8691a5d61f971bee163_(X,"t*"),X!="ANN" .
:-bnode_3436295670d5441a8691a5d61f971bee163_(X,"f"),X="ANN" .

% Change Set Rules

add(d_name(X,Y)):-d_name_(X,Y,"t**"),not d_name(X,Y) .
del(d_name(X,Y)):-d_name_(X,Y,"f"),d_name(X,Y) .
#minimize { 1@1,X,Y: d_name_(X,Y,"t"), const(Y) } .
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
