
% Graph Data

_enrolledIn("_ben","_c1") .

% Shape Targets

targetNode("_ben",_teacher) .
targetNode("_ben",_student) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_teacher_("_ben","t*"):-actualTarget("_ben",_teacher) .
_student_("_ben","t*"):-actualTarget("_ben",_student) .

% Annotation Rules

_teaches_(X,Y,"t*"):-_teaches(X,Y) .
_teaches_(X,Y,"t*"):-_teaches_(X,Y,"t") .
_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_course_(X,"t*"):-_course(X) .
_course_(X,"t*"):-_course_(X,"t") .

% Repair Rules

node1gt1v7m6fx5_(X,"t*"):-_teacher_(X,"t*") .

% sh:minCount 1 for node1gt1v7m6fx5
s0_(X,"t*"):-node1gt1v7m6fx5_(X,"t*") .
_teaches_(X,@new(s0,X,_teaches,1..1),"t"):-choose(s0,X,_teaches,1) .
choose(s0,X,_teaches,1);choose(s0,X,_teaches,0):-s0_(X,"t*") .
(C-0) {_teaches_(X,Y,"f"):_teaches(X,Y);s1_(Y,"f"):_teaches_(X,Y,"t*"),not _teaches_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_teaches_(X,Y,"t*")}=C,C>0 .
1 {s1_(Y,"t*"):_teaches_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1gt1v7m6fx5
s2_(X,"t*"):-node1gt1v7m6fx5_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_teaches_(X,@new(s3,X,_teaches,1..1),"t"):-choose(s3,X,_teaches,1) .
choose(s3,X,_teaches,1);choose(s3,X,_teaches,0):-s3_(X,"t*") .
(C-0) {_teaches_(X,Y,"f"):_teaches(X,Y);s4_(Y,"f"):_teaches_(X,Y,"t*"),not _teaches_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_teaches_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):_teaches_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1gt1v7m6fx5_(X,"f") .
s6_(X,"t*"):-_teacher_(X,"t*") .
node1gt1v7m6fx6_(X,"f"):-s6_(X,"t*") .
node1gt1v7m6fx6_(X,"t*"):-s6_(X,"f") .
node1gt1v7m6fx4_(X,"t*"):-node1gt1v7m6fx6_(X,"t*") .
node1gt1v7m6fx4_(X,"f"):-node1gt1v7m6fx6_(X,"f") .

% sh:minCount 1 for node1gt1v7m6fx4
s7_(X,"t*"):-node1gt1v7m6fx4_(X,"t*") .
_enrolledIn_(X,@new(s7,X,_enrolledIn,1..1),"t"):-choose(s7,X,_enrolledIn,1) .
choose(s7,X,_enrolledIn,1);choose(s7,X,_enrolledIn,0):-s7_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn(X,Y);s8_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
1 {s8_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s7_(X,"t*") .

_course_(X,"t"):-s8_(X,"t*") .
_course_(X,"f"):-s8_(X,"f") .

% universal for node1gt1v7m6fx4
s9_(X,"t*"):-node1gt1v7m6fx4_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
_enrolledIn_(X,@new(s10,X,_enrolledIn,1..1),"t"):-choose(s10,X,_enrolledIn,1) .
choose(s10,X,_enrolledIn,1);choose(s10,X,_enrolledIn,0):-s10_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn(X,Y);s11_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
1 {s11_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .

_course_(X,"t"):-s12_(X,"t*") .
_course_(X,"f"):-s12_(X,"f") .

s7_(X,"f");s9_(X,"f"):-node1gt1v7m6fx4_(X,"f") .
node1gt1v7m6fx5_(X,"f");s6_(X,"f"):-_teacher_(X,"f") .
node1gt1v7m6fx4_(X,"t*"):-_student_(X,"t*") .

s13_(X,"t*"):-node1gt1v7m6fx4_(X,"t*") .
_enrolledIn_(X,@new(s13,X,_enrolledIn,1..1),"t"):-choose(s13,X,_enrolledIn,1) .
choose(s13,X,_enrolledIn,1);choose(s13,X,_enrolledIn,0):-s13_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn(X,Y);s14_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s13_(X,"t*") .

_course_(X,"t"):-s14_(X,"t*") .
_course_(X,"f"):-s14_(X,"f") .

s15_(X,"t*"):-node1gt1v7m6fx4_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
_enrolledIn_(X,@new(s16,X,_enrolledIn,1..1),"t"):-choose(s16,X,_enrolledIn,1) .
choose(s16,X,_enrolledIn,1);choose(s16,X,_enrolledIn,0):-s16_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn(X,Y);s17_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s16_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
1 {s17_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s16_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .

_course_(X,"t"):-s18_(X,"t*") .
_course_(X,"f"):-s18_(X,"f") .

s13_(X,"f");s15_(X,"f"):-node1gt1v7m6fx4_(X,"f") .
node1gt1v7m6fx4_(X,"f"):-_student_(X,"f") .

% Interpretation Rules

_teaches_(X,Y,"t**"):-_teaches_(X,Y,"t*"),not _teaches_(X,Y,"f") .
_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_course_(X,"t**"):-_course_(X,"t*"),not _course_(X,"f") .

% Program Constraints

:-_teaches_(X,Y,"t"),_teaches_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_course_(X,"t"),_course_(X,"f") .

% Change Set Rules

add(_teaches(X,Y)):-_teaches_(X,Y,"t**"),not _teaches(X,Y) .
del(_teaches(X,Y)):-_teaches_(X,Y,"f"),_teaches(X,Y) .
add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_course(X)):-_course_(X,"t**"),not _course(X) .
del(_course(X)):-_course_(X,"f"),_course(X) .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
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
