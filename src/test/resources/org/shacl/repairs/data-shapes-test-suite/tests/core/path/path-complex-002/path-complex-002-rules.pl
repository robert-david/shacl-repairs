
% Graph Data

ex_p("ex_j","ex_i") .
ex_p("ex_k","ex_j") .
ex_p("ex_l","ex_j") .

% Shape Targets

targetNode("ex_i",ex_s1) .
targetNode("ex_i",ex_s2) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_s1_("ex_i","t*"):-actualTarget("ex_i",ex_s1) .
ex_s2_("ex_i","t*"):-actualTarget("ex_i",ex_s2) .

% Annotation Rules

ex_p_(X,Y,"t*"):-ex_p(X,Y) .
ex_p_(X,Y,"t*"):-ex_p_(X,Y,"t") .
ex_p_(Y,X,"t"):-ex_p_inv_(X,Y,"t") .
ex_p_inv_(X,Y,"t*"):-ex_p_(Y,X,"t*") .
ex_p_(Y,X,"f"):-ex_p_inv_(X,Y,"f") .
ex_p_inv_(X,Y,"f"):-ex_p_(Y,X,"f") .
ex_s1_st_(X,X1,"t*"):-ex_s1_(X,_),ex_p_inv_(X,X0,"t*"),ex_p_inv_(X0,X1,"t*") .
ex_C_(X,"t*"):-ex_C(X) .
ex_C_(X,"t*"):-ex_C_(X,"t") .
ex_s2_st_(X,X1,"t*"):-ex_s2_(X,_),ex_p_inv_(X,X0,"t*"),ex_p_inv_(X0,X1,"t*") .

% Repair Rules

ex_s1_(X,"t*"):-ex_s1_(X,"t*") .
ex_s1_(X,"f"):-ex_s1_(X,"f") .


% sh:minCount 0 for ex_s1
s0_(X,"t*"):-ex_s1_(X,"t*") .
choose(s0,X,ex_s1_st,0):-s0_(X,"t*") .
choose(ex_s1_st,X,ex_p_inv_,1);choose(ex_s1_st,X,ex_p_inv_,0):-ex_s1_st_(X,Y,"t") .
ex_p_inv_(X,@new(ex_s1_st,X,ex_p_inv_,1),"t"):-choose(ex_s1_st,X,ex_p_inv_,1),ex_s1_st_(X,Y,"t") .
(C-0) {ex_s1_st_(X,Y,"f"):ex_s1_st_(X,Y,"t*");s1_(Y,"f"):ex_s1_st_(X,Y,"t*"),not ex_s1_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_s1_st_(X,Y,"t*")}=C,C>0 .
ex_p_inv_(X,X0,"f");ex_p_inv_(X0,X1,"f"):-s0_(X,"f"),ex_p_inv_(X,X0,"t*"),ex_p_inv_(X0,X1,"t*"),ex_s1_st_(X,X1,"f") .
0 {s1_(Y,"t*"):ex_s1_st_(X,Y,"t**")} 0:-s0_(X,"t*") .

ex_C_(X,"t"):-s1_(X,"t*") .
ex_C_(X,"f"):-s1_(X,"f") .

% universal for ex_s1
s2_(X,"t*"):-ex_s1_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_s1_st_(X,@new(s3,X,ex_s1_st,1..1),"t"):-choose(s3,X,ex_s1_st,1) .
choose(s3,X,ex_s1_st,1);choose(s3,X,ex_s1_st,0):-s3_(X,"t*") .
0 {ex_p_inv_(X0,Y,"t")} 1:-ex_p_inv_(X,X0,"t**"),ex_s1_st_(X,Y,"t") .
(C-0) {ex_s1_st_(X,Y,"f"):ex_s1_st_(X,Y,"t*");s4_(Y,"f"):ex_s1_st_(X,Y,"t*"),not ex_s1_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_s1_st_(X,Y,"t*")}=C,C>0 .
ex_p_inv_(X,X0,"f");ex_p_inv_(X0,X1,"f"):-s3_(X,"f"),ex_p_inv_(X,X0,"t*"),ex_p_inv_(X0,X1,"t*"),ex_s1_st_(X,X1,"f") .
1 {s4_(Y,"t*"):ex_s1_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

ex_C_(X,"t"):-s5_(X,"t*") .
ex_C_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-ex_s1_(X,"f") .
ex_s2_(X,"t*"):-ex_s2_(X,"t*") .
ex_s2_(X,"f"):-ex_s2_(X,"f") .


% sh:minCount 0 for ex_s2
s6_(X,"t*"):-ex_s2_(X,"t*") .
choose(s6,X,ex_s2_st,0):-s6_(X,"t*") .
choose(ex_s2_st,X,ex_p_inv_,1);choose(ex_s2_st,X,ex_p_inv_,0):-ex_s2_st_(X,Y,"t") .
ex_p_inv_(X,@new(ex_s2_st,X,ex_p_inv_,1),"t"):-choose(ex_s2_st,X,ex_p_inv_,1),ex_s2_st_(X,Y,"t") .
(C-0) {ex_s2_st_(X,Y,"f"):ex_s2_st_(X,Y,"t*");s7_(Y,"f"):ex_s2_st_(X,Y,"t*"),not ex_s2_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:ex_s2_st_(X,Y,"t*")}=C,C>0 .
ex_p_inv_(X,X0,"f");ex_p_inv_(X0,X1,"f"):-s6_(X,"f"),ex_p_inv_(X,X0,"t*"),ex_p_inv_(X0,X1,"t*"),ex_s2_st_(X,X1,"f") .
0 {s7_(Y,"t*"):ex_s2_st_(X,Y,"t**")} 0:-s6_(X,"t*") .

ex_C_(X,"t"):-s7_(X,"t*") .
ex_C_(X,"f"):-s7_(X,"f") .

% universal for ex_s2
s8_(X,"t*"):-ex_s2_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
ex_s2_st_(X,@new(s9,X,ex_s2_st,1..1),"t"):-choose(s9,X,ex_s2_st,1) .
choose(s9,X,ex_s2_st,1);choose(s9,X,ex_s2_st,0):-s9_(X,"t*") .
0 {ex_p_inv_(X0,Y,"t")} 1:-ex_p_inv_(X,X0,"t**"),ex_s2_st_(X,Y,"t") .
(C-0) {ex_s2_st_(X,Y,"f"):ex_s2_st_(X,Y,"t*");s10_(Y,"f"):ex_s2_st_(X,Y,"t*"),not ex_s2_st_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:ex_s2_st_(X,Y,"t*")}=C,C>0 .
ex_p_inv_(X,X0,"f");ex_p_inv_(X0,X1,"f"):-s9_(X,"f"),ex_p_inv_(X,X0,"t*"),ex_p_inv_(X0,X1,"t*"),ex_s2_st_(X,X1,"f") .
1 {s10_(Y,"t*"):ex_s2_st_(X,Y,"t**")} 1:-s9_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .

ex_C_(X,"t"):-s11_(X,"t*") .
ex_C_(X,"f"):-s11_(X,"f") .

s6_(X,"f");s8_(X,"f"):-ex_s2_(X,"f") .

% Interpretation Rules

ex_p_(X,Y,"t**"):-ex_p_(X,Y,"t*"),not ex_p_(X,Y,"f") .
ex_p_inv_(X,Y,"t**"):-ex_p_inv_(X,Y,"t*"),not ex_p_inv_(X,Y,"f") .
ex_s1_st_(X,X1,"t**"):-ex_s1_st_(X,X1,"t*"),not ex_s1_st_(X,X1,"f"),ex_p_inv_(X,X0,"t**"),ex_p_inv_(X0,X1,"t**") .
ex_C_(X,"t**"):-ex_C_(X,"t*"),not ex_C_(X,"f") .
ex_s2_st_(X,X1,"t**"):-ex_s2_st_(X,X1,"t*"),not ex_s2_st_(X,X1,"f"),ex_p_inv_(X,X0,"t**"),ex_p_inv_(X0,X1,"t**") .

% Program Constraints

:-ex_p_(X,Y,"t"),ex_p_(X,Y,"f") .
:-ex_p_inv_(X,Y,"t"),ex_p_inv_(X,Y,"f") .
:-ex_s1_st_(X,Y,"t"),ex_s1_st_(X,Y,"f") .
:-ex_C_(X,"t"),ex_C_(X,"f") .
:-ex_s2_st_(X,Y,"t"),ex_s2_st_(X,Y,"f") .

% Change Set Rules

add(ex_p(X,Y)):-ex_p_(X,Y,"t**"),not ex_p(X,Y) .
del(ex_p(X,Y)):-ex_p_(X,Y,"f"),ex_p(X,Y) .
add(ex_C(X)):-ex_C_(X,"t**"),not ex_C(X) .
del(ex_C(X)):-ex_C_(X,"f"),ex_C(X) .
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
