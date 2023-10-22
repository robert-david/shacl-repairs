
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

s0_(X,"t*"):-_teacher_(X,"t*") .
node1hdcdgs0ox206_(X,"t*"):-s0_(X,"t*") .
node1hdcdgs0ox206_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for node1hdcdgs0ox206
s1_(X,"t*"):-node1hdcdgs0ox206_(X,"t*") .
_teaches_(X,@new(s1,X,_teaches,1..1),"t"):-choose(s1,X,_teaches,1) .
choose(s1,X,_teaches,1);choose(s1,X,_teaches,0):-s1_(X,"t*") .
(C-0) {_teaches_(X,Y,"f"):_teaches_(X,Y,"t*");s2_(Y,"f"):_teaches_(X,Y,"t*"),not _teaches_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_teaches_(X,Y,"t*")}=C,C>0 .
_teaches_(X,Y,"f"):-s1_(X,"f"),_teaches_(X,Y,"t*"),_teaches_(X,Y,"f") .
1 {s2_(Y,"t*"):_teaches_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for node1hdcdgs0ox206
s3_(X,"t*"):-node1hdcdgs0ox206_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_teaches_(X,@new(s4,X,_teaches,1..1),"t"):-choose(s4,X,_teaches,1) .
choose(s4,X,_teaches,1);choose(s4,X,_teaches,0):-s4_(X,"t*") .
(C-0) {_teaches_(X,Y,"f"):_teaches_(X,Y,"t*");s5_(Y,"f"):_teaches_(X,Y,"t*"),not _teaches_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_teaches_(X,Y,"t*")}=C,C>0 .
_teaches_(X,Y,"f"):-s4_(X,"f"),_teaches_(X,Y,"t*"),_teaches_(X,Y,"f") .
1 {s5_(Y,"t*"):_teaches_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hdcdgs0ox206_(X,"f") .
s7_(X,"t*"):-_teacher_(X,"t*") .
node1hdcdgs0ox207_(X,"f"):-s7_(X,"t*") .
node1hdcdgs0ox207_(X,"t*"):-s7_(X,"f") .
node1hdcdgs0ox205_(X,"t*"):-node1hdcdgs0ox207_(X,"t*") .
node1hdcdgs0ox205_(X,"f"):-node1hdcdgs0ox207_(X,"f") .

% sh:minCount 1 for node1hdcdgs0ox205
s8_(X,"t*"):-node1hdcdgs0ox205_(X,"t*") .
_enrolledIn_(X,@new(s8,X,_enrolledIn,1..1),"t"):-choose(s8,X,_enrolledIn,1) .
choose(s8,X,_enrolledIn,1);choose(s8,X,_enrolledIn,0):-s8_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s9_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s8_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s9_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s8_(X,"t*") .

_course_(X,"t"):-s9_(X,"t*") .
_course_(X,"f"):-s9_(X,"f") .

% universal for node1hdcdgs0ox205
s10_(X,"t*"):-node1hdcdgs0ox205_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_enrolledIn_(X,@new(s11,X,_enrolledIn,1..1),"t"):-choose(s11,X,_enrolledIn,1) .
choose(s11,X,_enrolledIn,1);choose(s11,X,_enrolledIn,0):-s11_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s12_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s11_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s12_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

_course_(X,"t"):-s13_(X,"t*") .
_course_(X,"f"):-s13_(X,"f") .

s8_(X,"f");s10_(X,"f"):-node1hdcdgs0ox205_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_teacher_(X,"f") .
s14_(X,"t*"):-_student_(X,"t*") .
node1hdcdgs0ox205_(X,"t*"):-s14_(X,"t*") .
node1hdcdgs0ox205_(X,"f"):-s14_(X,"f") .

s15_(X,"t*"):-node1hdcdgs0ox205_(X,"t*") .
_enrolledIn_(X,@new(s15,X,_enrolledIn,1..1),"t"):-choose(s15,X,_enrolledIn,1) .
choose(s15,X,_enrolledIn,1);choose(s15,X,_enrolledIn,0):-s15_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s16_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s15_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s16_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s15_(X,"t*") .


s17_(X,"t*"):-node1hdcdgs0ox205_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
_enrolledIn_(X,@new(s18,X,_enrolledIn,1..1),"t"):-choose(s18,X,_enrolledIn,1) .
choose(s18,X,_enrolledIn,1);choose(s18,X,_enrolledIn,0):-s18_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s19_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s18_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s19_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s18_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .


s15_(X,"f");s17_(X,"f"):-node1hdcdgs0ox205_(X,"f") .
s21_(X,"t*"):-_student_(X,"t*") .
node1hdcdgs0ox205_(X,"t*"):-s21_(X,"t*") .
node1hdcdgs0ox205_(X,"f"):-s21_(X,"f") .

% sh:minCount 0 for node1hdcdgs0ox205
s22_(X,"t*"):-node1hdcdgs0ox205_(X,"t*") .
choose(s22,X,_enrolledIn,0):-s22_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s23_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s22_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
0 {s23_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 0:-s22_(X,"t*") .

_course_(X,"t"):-s23_(X,"t*") .
_course_(X,"f"):-s23_(X,"f") .

s24_(X,"t*"):-node1hdcdgs0ox205_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
_enrolledIn_(X,@new(s25,X,_enrolledIn,1..1),"t"):-choose(s25,X,_enrolledIn,1) .
choose(s25,X,_enrolledIn,1);choose(s25,X,_enrolledIn,0):-s25_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s26_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s25_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s26_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s25_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .

_course_(X,"t"):-s27_(X,"t*") .
_course_(X,"f"):-s27_(X,"f") .

s22_(X,"f");s24_(X,"f"):-node1hdcdgs0ox205_(X,"f") .
s14_(X,"f");s21_(X,"f"):-_student_(X,"f") .

% Interpretation Rules

_teaches_(X,Y,"t**"):-_teaches_(X,Y,"t*"),not _teaches_(X,Y,"f") .
_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_course_(X,"t**"):-_course_(X,"t*"),not _course_(X,"f") .

% Program Constraints

:-_teaches_(X,Y,"t"),_teaches_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_course_(X,"t"),_course_(X,"f") .
:-s16_(X,"f") .
:-s20_(X,"f") .

% Change Set Rules

add(_teaches(X,Y)):-_teaches_(X,Y,"t**"),not _teaches(X,Y) .
del(_teaches(X,Y)):-_teaches_(X,Y,"f"),_teaches(X,Y) .
add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_course(X)):-_course_(X,"t**"),not _course(X) .
del(_course(X)):-_course_(X,"f"),_course(X) .
% Get all optimal models: --opt-mode=optN -n 100 --quiet=1
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
