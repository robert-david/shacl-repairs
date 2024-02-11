
% Graph Data

_name("_ann","Ben") .
xsd_string("Ben") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants

const("Ann") .
const("ANN") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .
node1hmcj2vjcx226_st_(X,Y,"t*"):-node1hmcj2vjcx226_(X,_),_name_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-_personShape_(X,"t*") .
node1hmcj2vjcx226_(X,"t*"):-s0_(X,"t*") .
node1hmcj2vjcx226_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for node1hmcj2vjcx226
s1_(X,"t*"):-node1hmcj2vjcx226_(X,"t*") .
choose(s1,X,_name,0):-s1_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s1_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s2_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s1_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
0 {s2_(Y,"t*"):_name_(X,Y,"t**")} 2:-s1_(X,"t*") .

s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
s6_(X,"t*"):-s3_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
s4_(X,"f");s6_(X,"f"):-s3_(X,"f") .

% universal for node1hmcj2vjcx226
s8_(X,"t*"):-node1hmcj2vjcx226_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
_name_(X,@new(s9,X,_name,1..1),"t"):-choose(s9,X,_name,1) .
choose(s9,X,_name,1);choose(s9,X,_name,0):-s9_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s9_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s10_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s9_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s10_(Y,"t*"):_name_(X,Y,"t**")} 2:-s9_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .

s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .
s13_(X,"t*"):-s12_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
s15_(X,"t*"):-s12_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
s13_(X,"f");s15_(X,"f"):-s12_(X,"f") .

s1_(X,"f");s8_(X,"f"):-node1hmcj2vjcx226_(X,"f") .
s17_(X,"t*"):-_personShape_(X,"t*") .
node1hmcj2vjcx226_(X,"t*"):-s17_(X,"t*") .
node1hmcj2vjcx226_(X,"f"):-s17_(X,"f") .

% sh:minCount 1 for node1hmcj2vjcx226
s18_(X,"t*"):-node1hmcj2vjcx226_(X,"t*") .
_name_(X,@new(s18,X,_name,1..1),"t"):-choose(s18,X,_name,1) .
choose(s18,X,_name,1);choose(s18,X,_name,0):-s18_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s18_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s19_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s18_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s19_(Y,"t*"):_name_(X,Y,"t**")} 2:-s18_(X,"t*") .


s20_(X,"t*"):-node1hmcj2vjcx226_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
_name_(X,@new(s21,X,_name,1..1),"t"):-choose(s21,X,_name,1) .
choose(s21,X,_name,1);choose(s21,X,_name,0):-s21_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s21_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s22_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s21_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s22_(Y,"t*"):_name_(X,Y,"t**")} 2:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .


s18_(X,"f");s20_(X,"f"):-node1hmcj2vjcx226_(X,"f") .
s0_(X,"f");s17_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .
node1hmcj2vjcx226_st_(X,Y,"t**"):-_name_(X,Y,"t**"),node1hmcj2vjcx226_st_(X,Y,"t*"),not node1hmcj2vjcx226_st_(X,Y,"f") .

% Program Constraints

:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s5_(X,"t*"),X!="ANN" .
:-s5_(X,"f"),X="ANN" .
:-s7_(X,"t*"),X!="Ann" .
:-s7_(X,"f"),X="Ann" .
:-s14_(X,"t*"),X!="ANN" .
:-s14_(X,"f"),X="ANN" .
:-s16_(X,"t*"),X!="Ann" .
:-s16_(X,"f"),X="Ann" .
:-s19_(X,"f") .
:-s23_(X,"f") .

% Change Set Rules

add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
#minimize { 1@1,X,Y: _name_(X,Y,"t"), const(Y) } .
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
