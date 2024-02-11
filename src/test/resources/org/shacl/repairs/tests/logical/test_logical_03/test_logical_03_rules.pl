
% Graph Data

_name("_ann","Ann") .
xsd_string("Ann") .
_firstName("_ann","Ann") .
_lastName("_ann","Doe") .
xsd_string("Doe") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_lastName_(X,Y,"t*"):-_lastName(X,Y) .
_lastName_(X,Y,"t*"):-_lastName_(X,Y,"t") .
node1hmcio58sx48_st_(X,Y,"t*"):-node1hmcio58sx48_(X,_),_lastName_(X,Y,"t*") .
_firstName_(X,Y,"t*"):-_firstName(X,Y) .
_firstName_(X,Y,"t*"):-_firstName_(X,Y,"t") .
node1hmcio58sx47_st_(X,Y,"t*"):-node1hmcio58sx47_(X,_),_firstName_(X,Y,"t*") .
_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .
node1hmcio58sx44_st_(X,Y,"t*"):-node1hmcio58sx44_(X,_),_name_(X,Y,"t*") .

% Repair Rules

s0_(X,"f"):-_personShape_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
node1hmcio58sx48_(X,"t*"):-s1_(X,"t*") .

% sh:minCount 1 for node1hmcio58sx48
s2_(X,"t*"):-node1hmcio58sx48_(X,"t*") .
_lastName_(X,@new(s2,X,_lastName,1..1),"t"):-choose(s2,X,_lastName,1) .
choose(s2,X,_lastName,1);choose(s2,X,_lastName,0):-s2_(X,"t*") .
(C-0) {_lastName_(X,Y,"f"):_lastName_(X,Y,"t*");s3_(Y,"f"):_lastName_(X,Y,"t*"),not _lastName_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:_lastName_(X,Y,"t*")}=C,C>0 .
_lastName_(X,Y,"f"):-s2_(X,"f"),_lastName_(X,Y,"t*"),_lastName_(X,Y,"f") .
1 {s3_(Y,"t*"):_lastName_(X,Y,"t**")} 1:-s2_(X,"t*") .


% universal for node1hmcio58sx48
s4_(X,"t*"):-node1hmcio58sx48_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
_lastName_(X,@new(s5,X,_lastName,1..1),"t"):-choose(s5,X,_lastName,1) .
choose(s5,X,_lastName,1);choose(s5,X,_lastName,0):-s5_(X,"t*") .
(C-0) {_lastName_(X,Y,"f"):_lastName_(X,Y,"t*");s6_(Y,"f"):_lastName_(X,Y,"t*"),not _lastName_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:_lastName_(X,Y,"t*")}=C,C>0 .
_lastName_(X,Y,"f"):-s5_(X,"f"),_lastName_(X,Y,"t*"),_lastName_(X,Y,"f") .
1 {s6_(Y,"t*"):_lastName_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s2_(X,"f");s4_(X,"f"):-node1hmcio58sx48_(X,"f") .
node1hmcio58sx47_(X,"t*"):-s1_(X,"t*") .

% sh:minCount 1 for node1hmcio58sx47
s8_(X,"t*"):-node1hmcio58sx47_(X,"t*") .
_firstName_(X,@new(s8,X,_firstName,1..1),"t"):-choose(s8,X,_firstName,1) .
choose(s8,X,_firstName,1);choose(s8,X,_firstName,0):-s8_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s9_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
_firstName_(X,Y,"f"):-s8_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
1 {s9_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s8_(X,"t*") .


% universal for node1hmcio58sx47
s10_(X,"t*"):-node1hmcio58sx47_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_firstName_(X,@new(s11,X,_firstName,1..1),"t"):-choose(s11,X,_firstName,1) .
choose(s11,X,_firstName,1);choose(s11,X,_firstName,0):-s11_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s12_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
_firstName_(X,Y,"f"):-s11_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
1 {s12_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-node1hmcio58sx47_(X,"f") .
node1hmcio58sx48_(X,"f");node1hmcio58sx47_(X,"f"):-s1_(X,"f") .
s14_(X,"t*"):-s0_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
s16_(X,"f"):-s15_(X,"f") .
node1hmcio58sx44_(X,"t*"):-s16_(X,"t*") .
node1hmcio58sx44_(X,"f"):-s16_(X,"f") .

% sh:minCount 1 for node1hmcio58sx44
s17_(X,"t*"):-node1hmcio58sx44_(X,"t*") .
_name_(X,@new(s17,X,_name,1..1),"t"):-choose(s17,X,_name,1) .
choose(s17,X,_name,1);choose(s17,X,_name,0):-s17_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s18_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s17_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s18_(Y,"t*"):_name_(X,Y,"t**")} 1:-s17_(X,"t*") .


% universal for node1hmcio58sx44
s19_(X,"t*"):-node1hmcio58sx44_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
_name_(X,@new(s20,X,_name,1..1),"t"):-choose(s20,X,_name,1) .
choose(s20,X,_name,1);choose(s20,X,_name,0):-s20_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s21_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s20_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s21_(Y,"t*"):_name_(X,Y,"t**")} 1:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .


s17_(X,"f");s19_(X,"f"):-node1hmcio58sx44_(X,"f") .
s16_(X,"t*"):-s15_(X,"t*") .
s1_(X,"f");s14_(X,"f"):-s0_(X,"f") .
s23_(X,"f"):-_personShape_(X,"f") .
s24_(X,"t*"):-s23_(X,"t*") .
node1hmcio58sx44_(X,"t*"):-s24_(X,"t*") .
node1hmcio58sx44_(X,"f"):-s24_(X,"f") .

s25_(X,"t*"):-node1hmcio58sx44_(X,"t*") .
_name_(X,@new(s25,X,_name,1..1),"t"):-choose(s25,X,_name,1) .
choose(s25,X,_name,1);choose(s25,X,_name,0):-s25_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s26_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s25_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s26_(Y,"t*"):_name_(X,Y,"t**")} 1:-s25_(X,"t*") .


s27_(X,"t*"):-node1hmcio58sx44_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
_name_(X,@new(s28,X,_name,1..1),"t"):-choose(s28,X,_name,1) .
choose(s28,X,_name,1);choose(s28,X,_name,0):-s28_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s29_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s28_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s29_(Y,"t*"):_name_(X,Y,"t**")} 1:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .


s25_(X,"f");s27_(X,"f"):-node1hmcio58sx44_(X,"f") .
s31_(X,"t*"):-s23_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .
s33_(X,"f"):-s32_(X,"f") .
node1hmcio58sx48_(X,"t*"):-s33_(X,"t*") .

s34_(X,"t*"):-node1hmcio58sx48_(X,"t*") .
_lastName_(X,@new(s34,X,_lastName,1..1),"t"):-choose(s34,X,_lastName,1) .
choose(s34,X,_lastName,1);choose(s34,X,_lastName,0):-s34_(X,"t*") .
(C-0) {_lastName_(X,Y,"f"):_lastName_(X,Y,"t*");s35_(Y,"f"):_lastName_(X,Y,"t*"),not _lastName_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:_lastName_(X,Y,"t*")}=C,C>0 .
_lastName_(X,Y,"f"):-s34_(X,"f"),_lastName_(X,Y,"t*"),_lastName_(X,Y,"f") .
1 {s35_(Y,"t*"):_lastName_(X,Y,"t**")} 1:-s34_(X,"t*") .


s36_(X,"t*"):-node1hmcio58sx48_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .
_lastName_(X,@new(s37,X,_lastName,1..1),"t"):-choose(s37,X,_lastName,1) .
choose(s37,X,_lastName,1);choose(s37,X,_lastName,0):-s37_(X,"t*") .
(C-0) {_lastName_(X,Y,"f"):_lastName_(X,Y,"t*");s38_(Y,"f"):_lastName_(X,Y,"t*"),not _lastName_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:_lastName_(X,Y,"t*")}=C,C>0 .
_lastName_(X,Y,"f"):-s37_(X,"f"),_lastName_(X,Y,"t*"),_lastName_(X,Y,"f") .
1 {s38_(Y,"t*"):_lastName_(X,Y,"t**")} 1:-s37_(X,"t*") .
s39_(X,"f"):-s38_(X,"t*") .
s39_(X,"t*"):-s38_(X,"f") .


s34_(X,"f");s36_(X,"f"):-node1hmcio58sx48_(X,"f") .
node1hmcio58sx47_(X,"t*"):-s33_(X,"t*") .

s40_(X,"t*"):-node1hmcio58sx47_(X,"t*") .
_firstName_(X,@new(s40,X,_firstName,1..1),"t"):-choose(s40,X,_firstName,1) .
choose(s40,X,_firstName,1);choose(s40,X,_firstName,0):-s40_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s41_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s40_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
_firstName_(X,Y,"f"):-s40_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
1 {s41_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s40_(X,"t*") .


s42_(X,"t*"):-node1hmcio58sx47_(X,"t*") .
s43_(X,"f"):-s42_(X,"t*") .
s43_(X,"t*"):-s42_(X,"f") .
_firstName_(X,@new(s43,X,_firstName,1..1),"t"):-choose(s43,X,_firstName,1) .
choose(s43,X,_firstName,1);choose(s43,X,_firstName,0):-s43_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s44_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
_firstName_(X,Y,"f"):-s43_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
1 {s44_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s43_(X,"t*") .
s45_(X,"f"):-s44_(X,"t*") .
s45_(X,"t*"):-s44_(X,"f") .


s40_(X,"f");s42_(X,"f"):-node1hmcio58sx47_(X,"f") .
node1hmcio58sx48_(X,"f");node1hmcio58sx47_(X,"f"):-s33_(X,"f") .
s33_(X,"t*"):-s32_(X,"t*") .
s24_(X,"f");s31_(X,"f"):-s23_(X,"f") .
s0_(X,"t*");s23_(X,"t*"):-_personShape_(X,"t*") .

% Interpretation Rules

_lastName_(X,Y,"t**"):-_lastName_(X,Y,"t*"),not _lastName_(X,Y,"f") .
node1hmcio58sx48_st_(X,Y,"t**"):-_lastName_(X,Y,"t**"),node1hmcio58sx48_st_(X,Y,"t*"),not node1hmcio58sx48_st_(X,Y,"f") .
_firstName_(X,Y,"t**"):-_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f") .
node1hmcio58sx47_st_(X,Y,"t**"):-_firstName_(X,Y,"t**"),node1hmcio58sx47_st_(X,Y,"t*"),not node1hmcio58sx47_st_(X,Y,"f") .
_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .
node1hmcio58sx44_st_(X,Y,"t**"):-_name_(X,Y,"t**"),node1hmcio58sx44_st_(X,Y,"t*"),not node1hmcio58sx44_st_(X,Y,"f") .

% Program Constraints

:-_lastName_(X,Y,"t"),_lastName_(X,Y,"f") .
:-s3_(X,"f") .
:-s7_(X,"f") .
:-_firstName_(X,Y,"t"),_firstName_(X,Y,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .
:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s18_(X,"f") .
:-s22_(X,"f") .
:-s26_(X,"f") .
:-s30_(X,"f") .
:-s35_(X,"f") .
:-s39_(X,"f") .
:-s41_(X,"f") .
:-s45_(X,"f") .

% Change Set Rules

add(_lastName(X,Y)):-_lastName_(X,Y,"t**"),not _lastName(X,Y) .
del(_lastName(X,Y)):-_lastName_(X,Y,"f"),_lastName(X,Y) .
add(_firstName(X,Y)):-_firstName_(X,Y,"t**"),not _firstName(X,Y) .
del(_firstName(X,Y)):-_firstName_(X,Y,"f"),_firstName(X,Y) .
add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
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
