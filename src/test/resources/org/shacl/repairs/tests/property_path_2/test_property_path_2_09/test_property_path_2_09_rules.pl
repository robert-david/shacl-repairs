
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

const("Math 1") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_StudentShape_("d_ben","t*"):-actualTarget("d_ben",d_StudentShape) .

% Annotation Rules

d_enrolledIn_(X,Y,"t*"):-d_enrolledIn(X,Y) .
d_enrolledIn_(X,Y,"t*"):-d_enrolledIn_(X,Y,"t") .
d_hasLecture_(X,Y,"t*"):-d_hasLecture(X,Y) .
d_hasLecture_(X,Y,"t*"):-d_hasLecture_(X,Y,"t") .
d_hasId_(X,Y,"t*"):-d_hasId(X,Y) .
d_hasId_(X,Y,"t*"):-d_hasId_(X,Y,"t") .
bnode_b45a1581ee3949048208391692d75602137_st_(X,X2,"t*"):-bnode_b45a1581ee3949048208391692d75602137_(X,_),d_enrolledIn_(X,X0,"t*"),d_hasLecture_(X0,X1,"t*"),d_hasId_(X1,X2,"t*") .

% Repair Rules

s0_(X,"t*"):-d_StudentShape_(X,"t*") .
bnode_b45a1581ee3949048208391692d75602137_(X,"t*"):-s0_(X,"t*") .
bnode_b45a1581ee3949048208391692d75602137_(X,"f"):-s0_(X,"f") .



% sh:minCount 2 for bnode_b45a1581ee3949048208391692d75602137
s1_(X,"t*"):-bnode_b45a1581ee3949048208391692d75602137_(X,"t*") .
bnode_b45a1581ee3949048208391692d75602137_st_(X,@new(s1,X,bnode_b45a1581ee3949048208391692d75602137_st,1..1),"t"):-choose(s1,X,bnode_b45a1581ee3949048208391692d75602137_st,1) .
bnode_b45a1581ee3949048208391692d75602137_st_(X,@new(s1,X,bnode_b45a1581ee3949048208391692d75602137_st,1..2),"t"):-choose(s1,X,bnode_b45a1581ee3949048208391692d75602137_st,2) .
choose(s1,X,bnode_b45a1581ee3949048208391692d75602137_st,2);choose(s1,X,bnode_b45a1581ee3949048208391692d75602137_st,1);choose(s1,X,bnode_b45a1581ee3949048208391692d75602137_st,0):-s1_(X,"t*") .
0 {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
choose(bnode_b45a1581ee3949048208391692d75602137_st,X,d_enrolledIn,1);choose(bnode_b45a1581ee3949048208391692d75602137_st,X,d_enrolledIn,0):-bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t") .
d_enrolledIn_(X,@new(bnode_b45a1581ee3949048208391692d75602137_st,X,d_enrolledIn,1),"t"):-choose(bnode_b45a1581ee3949048208391692d75602137_st,X,d_enrolledIn,1),bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t") .
choose(bnode_b45a1581ee3949048208391692d75602137_st,X0,d_hasLecture,1);choose(bnode_b45a1581ee3949048208391692d75602137_st,X0,d_hasLecture,0):-d_enrolledIn_(X,X0,"t**"),bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t") .
d_hasLecture_(X0,@new(bnode_b45a1581ee3949048208391692d75602137_st,X0,d_hasLecture,1),"t"):-choose(bnode_b45a1581ee3949048208391692d75602137_st,X0,d_hasLecture,1),d_enrolledIn_(X,X0,"t**"),bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t") .
0 {d_hasId_(X1,Y,"t")} 1:-d_enrolledIn_(X,X0,"t**"),d_hasLecture_(X0,X1,"t**"),bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t") .
(C-1) {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*");s2_(Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*"),not bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*")}=C,C>1 .
d_enrolledIn_(X,X0,"f");d_hasLecture_(X0,X1,"f");d_hasId_(X1,X2,"f"):-d_enrolledIn_(X,X0,"t*"),d_hasLecture_(X0,X1,"t*"),d_hasId_(X1,X2,"t*"),bnode_b45a1581ee3949048208391692d75602137_st_(X,X2,"f") .
2 {s2_(Y,"t*"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t**")} 2:-s1_(X,"t*") .


% universal for bnode_b45a1581ee3949048208391692d75602137
s3_(X,"t*"):-bnode_b45a1581ee3949048208391692d75602137_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
bnode_b45a1581ee3949048208391692d75602137_st_(X,@new(s4,X,bnode_b45a1581ee3949048208391692d75602137_st,1..1),"t"):-choose(s4,X,bnode_b45a1581ee3949048208391692d75602137_st,1) .
choose(s4,X,bnode_b45a1581ee3949048208391692d75602137_st,1);choose(s4,X,bnode_b45a1581ee3949048208391692d75602137_st,0):-s4_(X,"t*") .
0 {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
(C-0) {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*");s5_(Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*"),not bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_b45a1581ee3949048208391692d75602137_(X,"f") .
s7_(X,"t*"):-d_StudentShape_(X,"t*") .
bnode_b45a1581ee3949048208391692d75602137_(X,"t*"):-s7_(X,"t*") .
bnode_b45a1581ee3949048208391692d75602137_(X,"f"):-s7_(X,"f") .



s8_(X,"t*"):-bnode_b45a1581ee3949048208391692d75602137_(X,"t*") .
bnode_b45a1581ee3949048208391692d75602137_st_(X,@new(s8,X,bnode_b45a1581ee3949048208391692d75602137_st,1..1),"t"):-choose(s8,X,bnode_b45a1581ee3949048208391692d75602137_st,1) .
choose(s8,X,bnode_b45a1581ee3949048208391692d75602137_st,1);choose(s8,X,bnode_b45a1581ee3949048208391692d75602137_st,0):-s8_(X,"t*") .
0 {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t"):const(Y)} 1:-s8_(X,"t*") .
(C-0) {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*");s9_(Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*"),not bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t**")} 1:-s8_(X,"t*") .


% sh:minCount 0 for bnode_b45a1581ee3949048208391692d75602137
s10_(X,"t*"):-bnode_b45a1581ee3949048208391692d75602137_(X,"t*") .
0 {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t"):const(Y)} 1:-s10_(X,"t*") .
(C-0) {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*");s11_(Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*"),not bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*")}=C,C>0 .
0 {s11_(Y,"t*"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t**")} 1:-s10_(X,"t*") .


s12_(X,"t*"):-bnode_b45a1581ee3949048208391692d75602137_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
bnode_b45a1581ee3949048208391692d75602137_st_(X,@new(s13,X,bnode_b45a1581ee3949048208391692d75602137_st,1..1),"t"):-choose(s13,X,bnode_b45a1581ee3949048208391692d75602137_st,1) .
choose(s13,X,bnode_b45a1581ee3949048208391692d75602137_st,1);choose(s13,X,bnode_b45a1581ee3949048208391692d75602137_st,0):-s13_(X,"t*") .
0 {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t"):const(Y)} 1:-s13_(X,"t*") .
(C-0) {bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*");s14_(Y,"f"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*"),not bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s8_(X,"f");s10_(X,"f");s12_(X,"f"):-bnode_b45a1581ee3949048208391692d75602137_(X,"f") .
s0_(X,"f");s7_(X,"f"):-d_StudentShape_(X,"f") .

% Interpretation Rules

d_enrolledIn_(X,Y,"t**"):-d_enrolledIn_(X,Y,"t*"),not d_enrolledIn_(X,Y,"f") .
d_hasLecture_(X,Y,"t**"):-d_hasLecture_(X,Y,"t*"),not d_hasLecture_(X,Y,"f") .
d_hasId_(X,Y,"t**"):-d_hasId_(X,Y,"t*"),not d_hasId_(X,Y,"f") .
bnode_b45a1581ee3949048208391692d75602137_st_(X,X2,"t**"):-bnode_b45a1581ee3949048208391692d75602137_st_(X,X2,"t*"),not bnode_b45a1581ee3949048208391692d75602137_st_(X,X2,"f"),d_enrolledIn_(X,X0,"t**"),d_hasLecture_(X0,X1,"t**"),d_hasId_(X1,X2,"t**") .

% Program Constraints

:-d_enrolledIn_(X,Y,"t"),d_enrolledIn_(X,Y,"f") .
:-d_hasLecture_(X,Y,"t"),d_hasLecture_(X,Y,"f") .
:-d_hasId_(X,Y,"t"),d_hasId_(X,Y,"f") .
:-bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t"),bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"t*"),X!="Math 1" .
:-s9_(X,"f"),X="Math 1" .
:-s11_(X,"f") .
:-s15_(X,"f") .

% Change Set Rules

add(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"t**"),not d_enrolledIn(X,Y) .
del(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"f"),d_enrolledIn(X,Y) .
add(d_hasLecture(X,Y)):-d_hasLecture_(X,Y,"t**"),not d_hasLecture(X,Y) .
del(d_hasLecture(X,Y)):-d_hasLecture_(X,Y,"f"),d_hasLecture(X,Y) .
add(d_hasId(X,Y)):-d_hasId_(X,Y,"t**"),not d_hasId(X,Y) .
del(d_hasId(X,Y)):-d_hasId_(X,Y,"f"),d_hasId(X,Y) .
#minimize { 1@1,X,Y: bnode_b45a1581ee3949048208391692d75602137_st_(X,Y,"t"), const(Y) } .
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
