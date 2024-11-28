
% Graph Data

d_enrolledIn("d_Ann","d_Course1") .
d_enrolledIn("d_Ben","d_Course1") .
d_enrolledIn("d_Bob","d_Course1") .
d_hasStudentID("d_Ann","2119110") .
xsd_string("2119110") .
d_hasStudentID("d_Ben","1716110") .
xsd_string("1716110") .
d_hasStudentID("d_Bob","9427084") .
xsd_string("9427084") .
d_participantID("d_Course1","2119110") .
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

targetNode("d_Course1",d_CourseLimitShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_CourseLimitShape_("d_Course1","t*"):-actualTarget("d_Course1",d_CourseLimitShape) .

% Annotation Rules

d_enrolledIn_(X,Y,"t*"):-d_enrolledIn(X,Y) .
d_enrolledIn_(X,Y,"t*"):-d_enrolledIn_(X,Y,"t") .
d_enrolledIn_(Y,X,"t"):-d_enrolledIn_inv_(X,Y,"t") .
d_enrolledIn_inv_(X,Y,"t*"):-d_enrolledIn_(Y,X,"t*") .
d_enrolledIn_(Y,X,"f"):-d_enrolledIn_inv_(X,Y,"f") .
d_enrolledIn_inv_(X,Y,"f"):-d_enrolledIn_(Y,X,"f") .
d_hasStudentID_(X,Y,"t*"):-d_hasStudentID(X,Y) .
d_hasStudentID_(X,Y,"t*"):-d_hasStudentID_(X,Y,"t") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,X1,"t*"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,_),d_enrolledIn_inv_(X,X0,"t*"),d_hasStudentID_(X0,X1,"t*") .
d_participantID_(X,Y,"t*"):-d_participantID(X,Y) .
d_participantID_(X,Y,"t*"):-d_participantID_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-d_CourseLimitShape_(X,"t*") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*"):-s0_(X,"t*") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"f"):-s0_(X,"f") .


% sh:maxCount 2 for bnode_8a5f4d0cdea843b7b6e55153e758314d5
s1_(X,"t*"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,@new(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1..1),"t"):-choose(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1) .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,@new(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1..2),"t"):-choose(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,2) .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,@new(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1..3),"t"):-choose(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,3) .
choose(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,3);choose(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,2);choose(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1);choose(s2,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,0):-s2_(X,"t*") .
choose(bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,X,d_enrolledIn_inv_,1);choose(bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,X,d_enrolledIn_inv_,0):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t") .
d_enrolledIn_inv_(X,@new(bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,X,d_enrolledIn_inv_,1),"t"):-choose(bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,X,d_enrolledIn_inv_,1),bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t") .
0 {d_hasStudentID_(X0,Y,"t")} 1:-d_enrolledIn_inv_(X,X0,"t**"),bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t") .
(C-2) {bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*");s3_(Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*"),not bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f")} (C-2):-s2_(X,"f"),#count {Y:bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*")}=C,C>2 .
d_enrolledIn_inv_(X,X0,"f");d_hasStudentID_(X0,X1,"f"):-d_enrolledIn_inv_(X,X0,"t*"),d_hasStudentID_(X0,X1,"t*"),bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,X1,"f") .
3 {s3_(Y,"t*"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t**")} 3:-s2_(X,"t*") .


% sh:minCount 0 for bnode_8a5f4d0cdea843b7b6e55153e758314d5
s4_(X,"t*"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*") .
(C-0) {bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*");s5_(Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*"),not bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*")}=C,C>0 .
0 {s5_(Y,"t*"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t**")} 0:-s4_(X,"t*") .


% universal for bnode_8a5f4d0cdea843b7b6e55153e758314d5
s6_(X,"t*"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,@new(s7,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1..1),"t"):-choose(s7,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1) .
choose(s7,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1);choose(s7,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,0):-s7_(X,"t*") .
(C-0) {bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*");s8_(Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*"),not bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*")}=C,C>0 .
1 {s8_(Y,"t*"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s4_(X,"f");s6_(X,"f"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"f") .
s10_(X,"t*"):-d_CourseLimitShape_(X,"t*") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*"):-s10_(X,"t*") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"f"):-s10_(X,"f") .


s11_(X,"t*"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*") .
(C-0) {bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*");s12_(Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*"),not bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*")}=C,C>0 .
0 {s12_(Y,"t*"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t**")} 0:-s11_(X,"t*") .


s13_(X,"t*"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*") .
d_participantID_(X,Y,"t");bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f"):-s13_(X,"t*"),bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t");d_participantID_(X,Y,"f"):-s13_(X,"t*"),d_participantID_(X,Y,"t*") .
1 {bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*"),d_participantID_(X,Y,"t*");d_participantID_(X,Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*"),d_participantID_(X,Y,"t*")} 1:-s13_(X,"f") .

s14_(X,"t*"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,@new(s15,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1..1),"t"):-choose(s15,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1) .
choose(s15,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,1);choose(s15,X,bnode_8a5f4d0cdea843b7b6e55153e758314d5_st,0):-s15_(X,"t*") .
(C-0) {bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*");s16_(Y,"f"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*"),not bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t*")}=C,C>0 .
1 {s16_(Y,"t*"):bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t**")} 1:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .


s11_(X,"f");s13_(X,"f");s14_(X,"f"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_(X,"f") .
s0_(X,"f");s10_(X,"f"):-d_CourseLimitShape_(X,"f") .

% Interpretation Rules

d_enrolledIn_(X,Y,"t**"):-d_enrolledIn_(X,Y,"t*"),not d_enrolledIn_(X,Y,"f") .
d_enrolledIn_inv_(X,Y,"t**"):-d_enrolledIn_inv_(X,Y,"t*"),not d_enrolledIn_inv_(X,Y,"f") .
d_hasStudentID_(X,Y,"t**"):-d_hasStudentID_(X,Y,"t*"),not d_hasStudentID_(X,Y,"f") .
bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,X1,"t**"):-bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,X1,"t*"),not bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,X1,"f"),d_enrolledIn_inv_(X,X0,"t**"),d_hasStudentID_(X0,X1,"t**") .
d_participantID_(X,Y,"t**"):-d_participantID_(X,Y,"t*"),not d_participantID_(X,Y,"f") .

% Program Constraints

:-d_enrolledIn_(X,Y,"t"),d_enrolledIn_(X,Y,"f") .
:-d_enrolledIn_inv_(X,Y,"t"),d_enrolledIn_inv_(X,Y,"f") .
:-d_hasStudentID_(X,Y,"t"),d_hasStudentID_(X,Y,"f") .
:-bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t"),bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"f") .
:-s3_(X,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s13_(X,"t*"),d_participantID_(X,Y,"t**"),not bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t**") .
:-s13_(X,"t*"),bnode_8a5f4d0cdea843b7b6e55153e758314d5_st_(X,Y,"t**"),not d_participantID_(X,Y,"t**") .
:-d_participantID_(X,Y,"t"),d_participantID_(X,Y,"f") .
:-s17_(X,"f") .

% Change Set Rules

add(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"t**"),not d_enrolledIn(X,Y) .
del(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"f"),d_enrolledIn(X,Y) .
add(d_hasStudentID(X,Y)):-d_hasStudentID_(X,Y,"t**"),not d_hasStudentID(X,Y) .
del(d_hasStudentID(X,Y)):-d_hasStudentID_(X,Y,"f"),d_hasStudentID(X,Y) .
add(d_participantID(X,Y)):-d_participantID_(X,Y,"t**"),not d_participantID(X,Y) .
del(d_participantID(X,Y)):-d_participantID_(X,Y,"f"),d_participantID(X,Y) .
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
