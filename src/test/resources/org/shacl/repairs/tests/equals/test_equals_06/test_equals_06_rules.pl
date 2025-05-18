
% Graph Data

d_enrolledIn("d_ben","d_n1") .
d_hasCourse("d_ben","d_n1") .
d_Course("d_n1") .
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
targetNode("d_ben",d_ScheduledCourseShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_StudentShape_("d_ben","t*"):-actualTarget("d_ben",d_StudentShape) .
d_ScheduledCourseShape_("d_ben","t*"):-actualTarget("d_ben",d_ScheduledCourseShape) .

% Annotation Rules

d_enrolledIn_(X,Y,"t*"):-d_enrolledIn(X,Y) .
d_enrolledIn_(X,Y,"t*"):-d_enrolledIn_(X,Y,"t") .
bnode_68844fcfc9fd4e0fb69b18139988a87b55_st_(X,Y,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b55_(X,_),d_enrolledIn_(X,Y,"t*") .
d_Course_(X,"t*"):-d_Course(X) .
d_Course_(X,"t*"):-d_Course_(X,"t") .
d_hasCourse_(X,Y,"t*"):-d_hasCourse(X,Y) .
d_hasCourse_(X,Y,"t*"):-d_hasCourse_(X,Y,"t") .
bnode_68844fcfc9fd4e0fb69b18139988a87b56_st_(X,Y,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b56_(X,_),d_hasCourse_(X,Y,"t*") .

% Repair Rules

bnode_68844fcfc9fd4e0fb69b18139988a87b54_(X,"f"):-d_StudentShape_(X,"t*") .
bnode_68844fcfc9fd4e0fb69b18139988a87b54_(X,"t*"):-d_StudentShape_(X,"f") .
bnode_68844fcfc9fd4e0fb69b18139988a87b55_(X,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b54_(X,"t*") .
bnode_68844fcfc9fd4e0fb69b18139988a87b55_(X,"f"):-bnode_68844fcfc9fd4e0fb69b18139988a87b54_(X,"f") .

% sh:minCount 1 for bnode_68844fcfc9fd4e0fb69b18139988a87b55
s0_(X,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b55_(X,"t*") .
d_enrolledIn_(X,@new(s0,X,d_enrolledIn,1..1),"t"):-choose(s0,X,d_enrolledIn,1) .
choose(s0,X,d_enrolledIn,1);choose(s0,X,d_enrolledIn,0):-s0_(X,"t*") .
(C-0) {d_enrolledIn_(X,Y,"f"):d_enrolledIn_(X,Y,"t*");s1_(Y,"f"):d_enrolledIn_(X,Y,"t*"),not d_enrolledIn_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:d_enrolledIn_(X,Y,"t*")}=C,C>0 .
d_enrolledIn_(X,Y,"f"):-d_enrolledIn_(X,Y,"t*"),d_enrolledIn_(X,Y,"f") .
1 {s1_(Y,"t*"):d_enrolledIn_(X,Y,"t**")} 1:-s0_(X,"t*") .

d_Course_(X,"t"):-s1_(X,"t*") .
d_Course_(X,"f"):-s1_(X,"f") .

s2_(X,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b55_(X,"t*") .
d_hasCourse_(X,Y,"t");d_enrolledIn_(X,Y,"f"):-s2_(X,"t*"),d_enrolledIn_(X,Y,"t*") .
d_enrolledIn_(X,Y,"t");d_hasCourse_(X,Y,"f"):-s2_(X,"t*"),d_hasCourse_(X,Y,"t*") .
notEquals(s2,X,d_enrolledIn,d_hasCourse):-s2_(X,"f"),d_enrolledIn_(X,Y,"t*"),not d_hasCourse_(X,Y,"t*") .
notEquals(s2,X,d_enrolledIn,d_hasCourse):-s2_(X,"f"),not d_enrolledIn_(X,Y,"t*"),d_hasCourse_(X,Y,"t*") .
1 {d_enrolledIn_(X,Y,"f"):d_hasCourse_(X,Y,"t*");d_hasCourse_(X,Y,"f"):d_enrolledIn_(X,Y,"t*");d_enrolledIn_(X,@new(s2,X,d_enrolledIn,1),"t*");d_hasCourse_(X,@new(s2,X,d_hasCourse,1),"t*")} 1:-s2_(X,"f"),not notEquals(s2,X,d_enrolledIn,d_hasCourse) .

% universal for bnode_68844fcfc9fd4e0fb69b18139988a87b55
s3_(X,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b55_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
d_enrolledIn_(X,@new(s4,X,d_enrolledIn,1..1),"t"):-choose(s4,X,d_enrolledIn,1) .
choose(s4,X,d_enrolledIn,1);choose(s4,X,d_enrolledIn,0):-s4_(X,"t*") .
(C-0) {d_enrolledIn_(X,Y,"f"):d_enrolledIn_(X,Y,"t*");s5_(Y,"f"):d_enrolledIn_(X,Y,"t*"),not d_enrolledIn_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:d_enrolledIn_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):d_enrolledIn_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

d_Course_(X,"t"):-s6_(X,"t*") .
d_Course_(X,"f"):-s6_(X,"f") .

s0_(X,"f");s2_(X,"f");s3_(X,"f"):-bnode_68844fcfc9fd4e0fb69b18139988a87b55_(X,"f") .
bnode_68844fcfc9fd4e0fb69b18139988a87b56_(X,"t*"):-d_ScheduledCourseShape_(X,"t*") .
bnode_68844fcfc9fd4e0fb69b18139988a87b56_(X,"f"):-d_ScheduledCourseShape_(X,"f") .

% sh:minCount 2 for bnode_68844fcfc9fd4e0fb69b18139988a87b56
s7_(X,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b56_(X,"t*") .
d_hasCourse_(X,@new(s7,X,d_hasCourse,1..1),"t"):-choose(s7,X,d_hasCourse,1) .
d_hasCourse_(X,@new(s7,X,d_hasCourse,1..2),"t"):-choose(s7,X,d_hasCourse,2) .
choose(s7,X,d_hasCourse,2);choose(s7,X,d_hasCourse,1);choose(s7,X,d_hasCourse,0):-s7_(X,"t*") .
(C-1) {d_hasCourse_(X,Y,"f"):d_hasCourse_(X,Y,"t*");s8_(Y,"f"):d_hasCourse_(X,Y,"t*"),not d_hasCourse_(X,Y,"f")} (C-1):-s7_(X,"f"),#count {Y:d_hasCourse_(X,Y,"t*")}=C,C>1 .
d_hasCourse_(X,Y,"f"):-d_hasCourse_(X,Y,"t*"),d_hasCourse_(X,Y,"f") .
2 {s8_(Y,"t*"):d_hasCourse_(X,Y,"t**")} 2:-s7_(X,"t*") .


% universal for bnode_68844fcfc9fd4e0fb69b18139988a87b56
s9_(X,"t*"):-bnode_68844fcfc9fd4e0fb69b18139988a87b56_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
d_hasCourse_(X,@new(s10,X,d_hasCourse,1..1),"t"):-choose(s10,X,d_hasCourse,1) .
choose(s10,X,d_hasCourse,1);choose(s10,X,d_hasCourse,0):-s10_(X,"t*") .
(C-0) {d_hasCourse_(X,Y,"f"):d_hasCourse_(X,Y,"t*");s11_(Y,"f"):d_hasCourse_(X,Y,"t*"),not d_hasCourse_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:d_hasCourse_(X,Y,"t*")}=C,C>0 .
1 {s11_(Y,"t*"):d_hasCourse_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s7_(X,"f");s9_(X,"f"):-bnode_68844fcfc9fd4e0fb69b18139988a87b56_(X,"f") .

% Interpretation Rules

d_enrolledIn_(X,Y,"t**"):-d_enrolledIn_(X,Y,"t*"),not d_enrolledIn_(X,Y,"f") .
bnode_68844fcfc9fd4e0fb69b18139988a87b55_st_(X,Y,"t**"):-d_enrolledIn_(X,Y,"t**"),bnode_68844fcfc9fd4e0fb69b18139988a87b55_st_(X,Y,"t*"),not bnode_68844fcfc9fd4e0fb69b18139988a87b55_st_(X,Y,"f") .
d_Course_(X,"t**"):-d_Course_(X,"t*"),not d_Course_(X,"f") .
d_hasCourse_(X,Y,"t**"):-d_hasCourse_(X,Y,"t*"),not d_hasCourse_(X,Y,"f") .
bnode_68844fcfc9fd4e0fb69b18139988a87b56_st_(X,Y,"t**"):-d_hasCourse_(X,Y,"t**"),bnode_68844fcfc9fd4e0fb69b18139988a87b56_st_(X,Y,"t*"),not bnode_68844fcfc9fd4e0fb69b18139988a87b56_st_(X,Y,"f") .

% Program Constraints

:-d_enrolledIn_(X,Y,"t"),d_enrolledIn_(X,Y,"f") .
:-d_Course_(X,"t"),d_Course_(X,"f") .
:-s2_(X,"t*"),d_hasCourse_(X,Y,"t**"),not d_enrolledIn_(X,Y,"t**") .
:-s2_(X,"t*"),d_enrolledIn_(X,Y,"t**"),not d_hasCourse_(X,Y,"t**") .
:-d_hasCourse_(X,Y,"t"),d_hasCourse_(X,Y,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .

% Change Set Rules

add(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"t**"),not d_enrolledIn(X,Y) .
del(d_enrolledIn(X,Y)):-d_enrolledIn_(X,Y,"f"),d_enrolledIn(X,Y) .
add(d_Course(X)):-d_Course_(X,"t**"),not d_Course(X) .
del(d_Course(X)):-d_Course_(X,"f"),d_Course(X) .
add(d_hasCourse(X,Y)):-d_hasCourse_(X,Y,"t**"),not d_hasCourse(X,Y) .
del(d_hasCourse(X,Y)):-d_hasCourse_(X,Y,"f"),d_hasCourse(X,Y) .
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
