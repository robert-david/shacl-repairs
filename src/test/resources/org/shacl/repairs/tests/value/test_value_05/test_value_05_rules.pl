
% Graph Data

_name("_ann","ANN") .
xsd_string("ANN") .

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

% Repair Rules

s0_(X,"t*"):-_personShape_(X,"t*") .
node1hgobfebhx2034_(X,"t*"):-s0_(X,"t*") .
node1hgobfebhx2034_(X,"f"):-s0_(X,"f") .

s1_(X,"t*"):-node1hgobfebhx2034_(X,"t*") .
_name_(X,@new(s1,X,_name,1..1),"t"):-choose(s1,X,_name,1) .
choose(s1,X,_name,1);choose(s1,X,_name,0):-s1_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s1_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s2_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s1_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s2_(Y,"t*"):_name_(X,Y,"t**")} 2:-s1_(X,"t*") .


% sh:minCount 0 for node1hgobfebhx2034
s3_(X,"t*"):-node1hgobfebhx2034_(X,"t*") .
choose(s3,X,_name,0):-s3_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s3_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s4_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s3_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
0 {s4_(Y,"t*"):_name_(X,Y,"t**")} 2:-s3_(X,"t*") .


% universal for node1hgobfebhx2034
s5_(X,"t*"):-node1hgobfebhx2034_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
_name_(X,@new(s6,X,_name,1..1),"t"):-choose(s6,X,_name,1) .
choose(s6,X,_name,1);choose(s6,X,_name,0):-s6_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s6_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s7_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s6_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s7_(Y,"t*"):_name_(X,Y,"t**")} 2:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s1_(X,"f");s3_(X,"f");s5_(X,"f"):-node1hgobfebhx2034_(X,"f") .
s9_(X,"t*"):-_personShape_(X,"t*") .
node1hgobfebhx2034_(X,"t*"):-s9_(X,"t*") .
node1hgobfebhx2034_(X,"f"):-s9_(X,"f") .

s10_(X,"t*"):-node1hgobfebhx2034_(X,"t*") .
choose(s10,X,_name,0):-s10_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s10_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s11_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s10_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
0 {s11_(Y,"t*"):_name_(X,Y,"t**")} 2:-s10_(X,"t*") .

node1hgobfebhx2035_(X,"f"):-s11_(X,"t*") .
node1hgobfebhx2035_(X,"t*"):-s11_(X,"f") .

s12_(X,"t*"):-node1hgobfebhx2034_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
_name_(X,@new(s13,X,_name,1..1),"t"):-choose(s13,X,_name,1) .
choose(s13,X,_name,1);choose(s13,X,_name,0):-s13_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s13_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s14_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s13_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s14_(Y,"t*"):_name_(X,Y,"t**")} 2:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .

node1hgobfebhx2035_(X,"f"):-s15_(X,"t*") .
node1hgobfebhx2035_(X,"t*"):-s15_(X,"f") .

s10_(X,"f");s12_(X,"f"):-node1hgobfebhx2034_(X,"f") .
s16_(X,"t*"):-_personShape_(X,"t*") .
node1hgobfebhx2034_(X,"t*"):-s16_(X,"t*") .
node1hgobfebhx2034_(X,"f"):-s16_(X,"f") .

% sh:minCount 2 for node1hgobfebhx2034
s17_(X,"t*"):-node1hgobfebhx2034_(X,"t*") .
_name_(X,@new(s17,X,_name,1..1),"t"):-choose(s17,X,_name,1) .
_name_(X,@new(s17,X,_name,1..2),"t"):-choose(s17,X,_name,2) .
choose(s17,X,_name,2);choose(s17,X,_name,1);choose(s17,X,_name,0):-s17_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s17_(X,"t*") .
(C-1) {_name_(X,Y,"f"):_name_(X,Y,"t*");s18_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-1):-s17_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>1 .
_name_(X,Y,"f"):-s17_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
2 {s18_(Y,"t*"):_name_(X,Y,"t**")} 2:-s17_(X,"t*") .


s19_(X,"t*"):-node1hgobfebhx2034_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
_name_(X,@new(s20,X,_name,1..1),"t"):-choose(s20,X,_name,1) .
choose(s20,X,_name,1);choose(s20,X,_name,0):-s20_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s20_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s21_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s20_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s21_(Y,"t*"):_name_(X,Y,"t**")} 2:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .


s17_(X,"f");s19_(X,"f"):-node1hgobfebhx2034_(X,"f") .
s0_(X,"f");s9_(X,"f");s16_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .

% Program Constraints

:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s2_(X,"t*"),X!="Ann" .
:-s2_(X,"f"),X="Ann" .
:-s4_(X,"f") .
:-s8_(X,"f") .
:-node1hgobfebhx2035_(X,"t*"),X!="ANN" .
:-node1hgobfebhx2035_(X,"f"),X="ANN" .
:-s18_(X,"f") .
:-s22_(X,"f") .

% Change Set Rules

add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
#minimize { 1@1,X,Y: _name_(X,Y,"t"), const(Y) } .
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
