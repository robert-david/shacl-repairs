
% Graph Data

fibo_fnd_agr_ctr_Contract("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29") .
_contractType("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_written") .
_forPurpose("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","data sharing between Tim and Alice") .
xsd_string("data sharing between Tim and Alice") .
_hasContractCategory("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_categoryBusinessToBusiness") .
_hasContractStatus("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_statusExpired") .
_hasEndDate("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
xsd_dateTime("2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasEffectiveDate("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasExecutionDate("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
_obligation("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .
_contractorID("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",":c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
xsd_string(":c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
_fulfillmentDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .
xsd_dateTime("2022_09_07") .
_hasEndDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2023_09_07") .
xsd_dateTime("2023_09_07") .
_hasStates("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_stateUnknown") .
dct_description("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .

% Shape Targets

targetNode("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_mutuallyExclusive) .

% Constants

const("_statePending") .
const("_stateViolated") .
const("_stateFulfilled") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_mutuallyExclusive_("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","t*"):-actualTarget("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_mutuallyExclusive) .

% Annotation Rules

_hasStates_(X,Y,"t*"):-_hasStates(X,Y) .
_hasStates_(X,Y,"t*"):-_hasStates_(X,Y,"t") .
node1h0oc2cvkx199_st_(X,Y,"t*"):-node1h0oc2cvkx199_(X,_),_hasStates_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-_mutuallyExclusive_(X,"t*") .
node1h0oc2cvkx199_(X,"t*"):-s0_(X,"t*") .
node1h0oc2cvkx199_(X,"f"):-s0_(X,"f") .

% sh:maxCount 1 for node1h0oc2cvkx199
s1_(X,"t*"):-node1h0oc2cvkx199_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
_hasStates_(X,@new(s2,X,_hasStates,1..1),"t"):-choose(s2,X,_hasStates,1) .
_hasStates_(X,@new(s2,X,_hasStates,1..2),"t"):-choose(s2,X,_hasStates,2) .
choose(s2,X,_hasStates,2);choose(s2,X,_hasStates,1);choose(s2,X,_hasStates,0):-s2_(X,"t*") .
0 {_hasStates_(X,Y,"t"):const(Y)} 3:-s2_(X,"t*") .
(C-1) {node1h0oc2cvkx199_st_(X,Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*");s3_(Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f")} (C-1):-s2_(X,"f"),#count {Y:node1h0oc2cvkx199_st_(X,Y,"t*")}=C,C>1 .
_hasStates_(X,Y,"f"):-s2_(X,"f"),_hasStates_(X,Y,"t*"),node1h0oc2cvkx199_st_(X,Y,"f") .
2 {s3_(Y,"t*"):node1h0oc2cvkx199_st_(X,Y,"t**")} 3:-s2_(X,"t*") .


% sh:minCount 0 for node1h0oc2cvkx199
s4_(X,"t*"):-node1h0oc2cvkx199_(X,"t*") .
choose(s4,X,_hasStates,0):-s4_(X,"t*") .
0 {_hasStates_(X,Y,"t"):const(Y)} 3:-s4_(X,"t*") .
(C-0) {node1h0oc2cvkx199_st_(X,Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*");s5_(Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:node1h0oc2cvkx199_st_(X,Y,"t*")}=C,C>0 .
_hasStates_(X,Y,"f"):-s4_(X,"f"),_hasStates_(X,Y,"t*"),node1h0oc2cvkx199_st_(X,Y,"f") .
0 {s5_(Y,"t*"):node1h0oc2cvkx199_st_(X,Y,"t**")} 3:-s4_(X,"t*") .


% universal for node1h0oc2cvkx199
s6_(X,"t*"):-node1h0oc2cvkx199_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
_hasStates_(X,@new(s7,X,_hasStates,1..1),"t"):-choose(s7,X,_hasStates,1) .
choose(s7,X,_hasStates,1);choose(s7,X,_hasStates,0):-s7_(X,"t*") .
0 {_hasStates_(X,Y,"t"):const(Y)} 3:-s7_(X,"t*") .
(C-0) {node1h0oc2cvkx199_st_(X,Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*");s8_(Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:node1h0oc2cvkx199_st_(X,Y,"t*")}=C,C>0 .
_hasStates_(X,Y,"f"):-s7_(X,"f"),_hasStates_(X,Y,"t*"),node1h0oc2cvkx199_st_(X,Y,"f") .
1 {s8_(Y,"t*"):node1h0oc2cvkx199_st_(X,Y,"t**")} 3:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s4_(X,"f");s6_(X,"f"):-node1h0oc2cvkx199_(X,"f") .
s10_(X,"t*"):-_mutuallyExclusive_(X,"t*") .
node1h0oc2cvkx199_(X,"t*"):-s10_(X,"t*") .
node1h0oc2cvkx199_(X,"f"):-s10_(X,"f") .

% sh:minCount 1 for node1h0oc2cvkx199
s11_(X,"t*"):-node1h0oc2cvkx199_(X,"t*") .
_hasStates_(X,@new(s11,X,_hasStates,1..1),"t"):-choose(s11,X,_hasStates,1) .
choose(s11,X,_hasStates,1);choose(s11,X,_hasStates,0):-s11_(X,"t*") .
0 {_hasStates_(X,Y,"t"):const(Y)} 3:-s11_(X,"t*") .
(C-0) {node1h0oc2cvkx199_st_(X,Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*");s12_(Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:node1h0oc2cvkx199_st_(X,Y,"t*")}=C,C>0 .
_hasStates_(X,Y,"f"):-s11_(X,"f"),_hasStates_(X,Y,"t*"),node1h0oc2cvkx199_st_(X,Y,"f") .
1 {s12_(Y,"t*"):node1h0oc2cvkx199_st_(X,Y,"t**")} 3:-s11_(X,"t*") .


s13_(X,"t*"):-node1h0oc2cvkx199_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
_hasStates_(X,@new(s14,X,_hasStates,1..1),"t"):-choose(s14,X,_hasStates,1) .
choose(s14,X,_hasStates,1);choose(s14,X,_hasStates,0):-s14_(X,"t*") .
0 {_hasStates_(X,Y,"t"):const(Y)} 3:-s14_(X,"t*") .
(C-0) {node1h0oc2cvkx199_st_(X,Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*");s15_(Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:node1h0oc2cvkx199_st_(X,Y,"t*")}=C,C>0 .
_hasStates_(X,Y,"f"):-s14_(X,"f"),_hasStates_(X,Y,"t*"),node1h0oc2cvkx199_st_(X,Y,"f") .
1 {s15_(Y,"t*"):node1h0oc2cvkx199_st_(X,Y,"t**")} 3:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-node1h0oc2cvkx199_(X,"f") .
s17_(X,"t*"):-_mutuallyExclusive_(X,"t*") .
node1h0oc2cvkx199_(X,"t*"):-s17_(X,"t*") .
node1h0oc2cvkx199_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-node1h0oc2cvkx199_(X,"t*") .
choose(s18,X,_hasStates,0):-s18_(X,"t*") .
0 {_hasStates_(X,Y,"t"):const(Y)} 3:-s18_(X,"t*") .
(C-0) {node1h0oc2cvkx199_st_(X,Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*");s19_(Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:node1h0oc2cvkx199_st_(X,Y,"t*")}=C,C>0 .
_hasStates_(X,Y,"f"):-s18_(X,"f"),_hasStates_(X,Y,"t*"),node1h0oc2cvkx199_st_(X,Y,"f") .
0 {s19_(Y,"t*"):node1h0oc2cvkx199_st_(X,Y,"t**")} 3:-s18_(X,"t*") .

s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
s21_(X,"t*"):-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .
s23_(X,"t*"):-s20_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .
s25_(X,"t*"):-s20_(X,"t*") .
s26_(X,"f"):-s25_(X,"t*") .
s26_(X,"t*"):-s25_(X,"f") .
s21_(X,"f");s23_(X,"f");s25_(X,"f"):-s20_(X,"f") .

s27_(X,"t*"):-node1h0oc2cvkx199_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
_hasStates_(X,@new(s28,X,_hasStates,1..1),"t"):-choose(s28,X,_hasStates,1) .
choose(s28,X,_hasStates,1);choose(s28,X,_hasStates,0):-s28_(X,"t*") .
0 {_hasStates_(X,Y,"t"):const(Y)} 3:-s28_(X,"t*") .
(C-0) {node1h0oc2cvkx199_st_(X,Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*");s29_(Y,"f"):node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:node1h0oc2cvkx199_st_(X,Y,"t*")}=C,C>0 .
_hasStates_(X,Y,"f"):-s28_(X,"f"),_hasStates_(X,Y,"t*"),node1h0oc2cvkx199_st_(X,Y,"f") .
1 {s29_(Y,"t*"):node1h0oc2cvkx199_st_(X,Y,"t**")} 3:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .

s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
s32_(X,"t*"):-s31_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .
s34_(X,"t*"):-s31_(X,"t*") .
s35_(X,"f"):-s34_(X,"t*") .
s35_(X,"t*"):-s34_(X,"f") .
s36_(X,"t*"):-s31_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .
s32_(X,"f");s34_(X,"f");s36_(X,"f"):-s31_(X,"f") .

s18_(X,"f");s27_(X,"f"):-node1h0oc2cvkx199_(X,"f") .
s0_(X,"f");s10_(X,"f");s17_(X,"f"):-_mutuallyExclusive_(X,"f") .

% Interpretation Rules

_hasStates_(X,Y,"t**"):-_hasStates_(X,Y,"t*"),not _hasStates_(X,Y,"f") .
node1h0oc2cvkx199_st_(X,Y,"t**"):-_hasStates_(X,Y,"t**"),node1h0oc2cvkx199_st_(X,Y,"t*"),not node1h0oc2cvkx199_st_(X,Y,"f") .

% Program Constraints

:-_hasStates_(X,Y,"t"),_hasStates_(X,Y,"f") .
:-s3_(X,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s22_(X,"t*"),X!="_stateViolated" .
:-s22_(X,"f"),X="_stateViolated" .
:-s24_(X,"t*"),X!="_statePending" .
:-s24_(X,"f"),X="_statePending" .
:-s26_(X,"t*"),X!="_stateFulfilled" .
:-s26_(X,"f"),X="_stateFulfilled" .
:-s33_(X,"t*"),X!="_stateViolated" .
:-s33_(X,"f"),X="_stateViolated" .
:-s35_(X,"t*"),X!="_statePending" .
:-s35_(X,"f"),X="_statePending" .
:-s37_(X,"t*"),X!="_stateFulfilled" .
:-s37_(X,"f"),X="_stateFulfilled" .

% Change Set Rules

add(_hasStates(X,Y)):-_hasStates_(X,Y,"t**"),not _hasStates(X,Y) .
del(_hasStates(X,Y)):-_hasStates_(X,Y,"f"),_hasStates(X,Y) .
#minimize { 1@1,X,Y: _hasStates_(X,Y,"t"), const(Y) } .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

#minimize { 1@0,X: del(_hasStates(X,"_statePending")) } .
#minimize { 2@0,X: del(_hasStates(X,"_stateFulfilled")) } .
#minimize { 3@0,X: del(_hasStates(X,"_stateViolated")) } .
:-add(_hasStates(X,Y)),not add(_hasStates(X,"_statePending")) .

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
