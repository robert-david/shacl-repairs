
% Graph Data

d_enrolledIn("d_ben","d_bn1") .
d_p1("d_bn1","d_bn2") .
d_hasId("d_bn2","Math 1") .
xsd_string("Math 1") .
d_p0("d_X","d_bn1") .
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

targetNode("d_X",d_CutShape) .
targetNode("d_ben",d_StudentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_CutShape_("d_X","t*"):-actualTarget("d_X",d_CutShape) .
d_StudentShape_("d_ben","t*"):-actualTarget("d_ben",d_StudentShape) .

% Annotation Rules

d_enrolledIn_(X,Y,"t*"):-d_enrolledIn(X,Y) .
d_enrolledIn_(X,Y,"t*"):-d_enrolledIn_(X,Y,"t") .
d_p1_(X,Y,"t*"):-d_p1(X,Y) .
d_p1_(X,Y,"t*"):-d_p1_(X,Y,"t") .
d_hasId_(X,Y,"t*"):-d_hasId(X,Y) .
d_hasId_(X,Y,"t*"):-d_hasId_(X,Y,"t") .
bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,X2,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca112_(X,_),d_enrolledIn_(X,X0,"t*"),d_p1_(X0,X1,"t*"),d_hasId_(X1,X2,"t*") .
d_p0_(X,Y,"t*"):-d_p0(X,Y) .
d_p0_(X,Y,"t*"):-d_p0_(X,Y,"t") .
bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,X1,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca116_(X,_),d_p0_(X,X0,"t*"),d_p1_(X0,X1,"t*") .

% Repair Rules

bnode_4e59e9881712447ba2228764412ec6ca112_(X,"t*"):-d_StudentShape_(X,"t*") .
bnode_4e59e9881712447ba2228764412ec6ca112_(X,"f"):-d_StudentShape_(X,"f") .



% sh:minCount 1 for bnode_4e59e9881712447ba2228764412ec6ca112
s0_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca112_(X,"t*") .
bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,@new(s0,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,1..1),"t"):-choose(s0,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,1) .
choose(s0,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,1);choose(s0,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,0):-s0_(X,"t*") .
choose(bnode_4e59e9881712447ba2228764412ec6ca112_st,X,d_enrolledIn,1);choose(bnode_4e59e9881712447ba2228764412ec6ca112_st,X,d_enrolledIn,0):-bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t") .
d_enrolledIn_(X,@new(bnode_4e59e9881712447ba2228764412ec6ca112_st,X,d_enrolledIn,1),"t"):-choose(bnode_4e59e9881712447ba2228764412ec6ca112_st,X,d_enrolledIn,1),bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t") .
choose(bnode_4e59e9881712447ba2228764412ec6ca112_st,X0,d_p1,1);choose(bnode_4e59e9881712447ba2228764412ec6ca112_st,X0,d_p1,0):-d_enrolledIn_(X,X0,"t**"),bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t") .
d_p1_(X0,@new(bnode_4e59e9881712447ba2228764412ec6ca112_st,X0,d_p1,1),"t"):-choose(bnode_4e59e9881712447ba2228764412ec6ca112_st,X0,d_p1,1),d_enrolledIn_(X,X0,"t**"),bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t") .
0 {d_hasId_(X1,Y,"t")} 1:-d_enrolledIn_(X,X0,"t**"),d_p1_(X0,X1,"t**"),bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t*");s1_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t*")}=C,C>0 .
d_enrolledIn_(X,X0,"f");d_p1_(X0,X1,"f");d_hasId_(X1,X2,"f"):-d_enrolledIn_(X,X0,"t*"),d_p1_(X0,X1,"t*"),d_hasId_(X1,X2,"t*"),bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,X2,"f") .
1 {s1_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for bnode_4e59e9881712447ba2228764412ec6ca112
s2_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca112_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,@new(s3,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,1..1),"t"):-choose(s3,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,1) .
choose(s3,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,1);choose(s3,X,bnode_4e59e9881712447ba2228764412ec6ca112_st,0):-s3_(X,"t*") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t*");s4_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-bnode_4e59e9881712447ba2228764412ec6ca112_(X,"f") .
bnode_4e59e9881712447ba2228764412ec6ca116_(X,"t*"):-d_CutShape_(X,"t*") .
bnode_4e59e9881712447ba2228764412ec6ca116_(X,"f"):-d_CutShape_(X,"f") .


% sh:maxCount 0 for bnode_4e59e9881712447ba2228764412ec6ca116
s6_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca116_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,@new(s7,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,1..1),"t"):-choose(s7,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,1) .
choose(s7,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,1);choose(s7,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,0):-s7_(X,"t*") .
choose(bnode_4e59e9881712447ba2228764412ec6ca116_st,X,d_p0,1);choose(bnode_4e59e9881712447ba2228764412ec6ca116_st,X,d_p0,0):-bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t") .
d_p0_(X,@new(bnode_4e59e9881712447ba2228764412ec6ca116_st,X,d_p0,1),"t"):-choose(bnode_4e59e9881712447ba2228764412ec6ca116_st,X,d_p0,1),bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t") .
0 {d_p1_(X0,Y,"t")} 1:-d_p0_(X,X0,"t**"),bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*");s8_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*")}=C,C>0 .
d_p0_(X,X0,"f");d_p1_(X0,X1,"f"):-d_p0_(X,X0,"t*"),d_p1_(X0,X1,"t*"),bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,X1,"f") .
1 {s8_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t**")} 1:-s7_(X,"t*") .


% sh:minCount 0 for bnode_4e59e9881712447ba2228764412ec6ca116
s9_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca116_(X,"t*") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*");s10_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*")}=C,C>0 .
0 {s10_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t**")} 0:-s9_(X,"t*") .


% universal for bnode_4e59e9881712447ba2228764412ec6ca116
s11_(X,"t*"):-bnode_4e59e9881712447ba2228764412ec6ca116_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .
bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,@new(s12,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,1..1),"t"):-choose(s12,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,1) .
choose(s12,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,1);choose(s12,X,bnode_4e59e9881712447ba2228764412ec6ca116_st,0):-s12_(X,"t*") .
(C-0) {bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*");s13_(Y,"f"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t*")}=C,C>0 .
1 {s13_(Y,"t*"):bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t**")} 1:-s12_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .


s6_(X,"f");s9_(X,"f");s11_(X,"f"):-bnode_4e59e9881712447ba2228764412ec6ca116_(X,"f") .

% Interpretation Rules

d_enrolledIn_(X,Y,"t**"):-d_enrolledIn_(X,Y,"t*"),not d_enrolledIn_(X,Y,"f") .
d_p1_(X,Y,"t**"):-d_p1_(X,Y,"t*"),not d_p1_(X,Y,"f") .
d_hasId_(X,Y,"t**"):-d_hasId_(X,Y,"t*"),not d_hasId_(X,Y,"f") .
bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,X2,"t**"):-bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,X2,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,X2,"f"),d_enrolledIn_(X,X0,"t**"),d_p1_(X0,X1,"t**"),d_hasId_(X1,X2,"t**") .
d_p0_(X,Y,"t**"):-d_p0_(X,Y,"t*"),not d_p0_(X,Y,"f") .
bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,X1,"t**"):-bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,X1,"t*"),not bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,X1,"f"),d_p0_(X,X0,"t**"),d_p1_(X0,X1,"t**") .

% Program Constraints

:-d_enrolledIn_(X,Y,"t"),d_enrolledIn_(X,Y,"f") .
:-d_p1_(X,Y,"t"),d_p1_(X,Y,"f") .
:-d_hasId_(X,Y,"t"),d_hasId_(X,Y,"f") .
:-bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"t"),bnode_4e59e9881712447ba2228764412ec6ca112_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-d_p0_(X,Y,"t"),d_p0_(X,Y,"f") .
:-bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"t"),bnode_4e59e9881712447ba2228764412ec6ca116_st_(X,Y,"f") .
:-s8_(X,"f") .
:-s10_(X,"f") .
:-s14_(X,"f") .

% Change Set Rules

add(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"t**"),not d_enrolledIn(X,Y) .
del(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"f"),d_enrolledIn(X,Y) .
add(d_p1(X,Y)):-d_p1_(X,Y,"t**"),not d_p1(X,Y) .
del(d_p1(X,Y)):-d_p1_(X,Y,"f"),d_p1(X,Y) .
add(d_hasId(X,Y)):-d_hasId_(X,Y,"t**"),not d_hasId(X,Y) .
del(d_hasId(X,Y)):-d_hasId_(X,Y,"f"),d_hasId(X,Y) .
add(d_p0(X,Y)):-d_p0_(X,Y,"t**"),not d_p0(X,Y) .
del(d_p0(X,Y)):-d_p0_(X,Y,"f"),d_p0(X,Y) .
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
