
% Graph Data

fibo_fnd_agr_ctr_Contract("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29") .
_contractType("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_written") .
_forPurpose("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","data sharing between Tim and Alice") .
xsd_string("data sharing between Tim and Alice") .
_hasContractCategory("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_categoryBusinessToBusiness") .
_hasContractStatus("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_statusPending") .
_hasEndDate("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
xsd_dateTime("2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasEffectiveDate("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasExecutionDate("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
_hasObligations("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .
_obligation("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .
_contractorID("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",":c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
xsd_string(":c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
_fulfillmentDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .
xsd_dateTime("2022_09_07") .
_hasEndDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2023_09_07") .
xsd_dateTime("2023_09_07") .
_hasState("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_pendingState") .
_hasState("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_fulfilledState") .
_hasState("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_violatedState") .
dct_description("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .

% Shape Targets

targetNode("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_obligationStateShape) .

% Constants

const("_violatedState") .
const("_pendingState") .
const("_fulfilledState") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_obligationStateShape_("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","t*"):-actualTarget("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_obligationStateShape) .

% Annotation Rules

_hasState_(X,Y,"t*"):-_hasState(X,Y) .
_hasState_(X,Y,"t*"):-_hasState_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-_obligationStateShape_(X,"t*") .
node1i1kqqvn5x17_(X,"t*"):-s0_(X,"t*") .
node1i1kqqvn5x17_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for node1i1kqqvn5x17
s1_(X,"t*"):-node1i1kqqvn5x17_(X,"t*") .
_hasState_(X,@new(s1,X,_hasState,1..1),"t"):-choose(s1,X,_hasState,1) .
choose(s1,X,_hasState,1);choose(s1,X,_hasState,0):-s1_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 3:-s1_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s2_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s1_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s2_(Y,"t*"):_hasState_(X,Y,"t**")} 3:-s1_(X,"t*") .


% universal for node1i1kqqvn5x17
s3_(X,"t*"):-node1i1kqqvn5x17_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_hasState_(X,@new(s4,X,_hasState,1..1),"t"):-choose(s4,X,_hasState,1) .
choose(s4,X,_hasState,1);choose(s4,X,_hasState,0):-s4_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 3:-s4_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s5_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s4_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s5_(Y,"t*"):_hasState_(X,Y,"t**")} 3:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1i1kqqvn5x17_(X,"f") .
s7_(X,"t*"):-_obligationStateShape_(X,"t*") .
node1i1kqqvn5x17_(X,"t*"):-s7_(X,"t*") .
node1i1kqqvn5x17_(X,"f"):-s7_(X,"f") .

% sh:maxCount 1 for node1i1kqqvn5x17
s8_(X,"t*"):-node1i1kqqvn5x17_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
_hasState_(X,@new(s9,X,_hasState,1..1),"t"):-choose(s9,X,_hasState,1) .
_hasState_(X,@new(s9,X,_hasState,1..2),"t"):-choose(s9,X,_hasState,2) .
choose(s9,X,_hasState,2);choose(s9,X,_hasState,1);choose(s9,X,_hasState,0):-s9_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 3:-s9_(X,"t*") .
(C-1) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s10_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-1):-s9_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>1 .
_hasState_(X,Y,"f"):-s9_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
2 {s10_(Y,"t*"):_hasState_(X,Y,"t**")} 3:-s9_(X,"t*") .


% sh:minCount 0 for node1i1kqqvn5x17
s11_(X,"t*"):-node1i1kqqvn5x17_(X,"t*") .
choose(s11,X,_hasState,0):-s11_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 3:-s11_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s12_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s11_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
0 {s12_(Y,"t*"):_hasState_(X,Y,"t**")} 3:-s11_(X,"t*") .


s13_(X,"t*"):-node1i1kqqvn5x17_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
_hasState_(X,@new(s14,X,_hasState,1..1),"t"):-choose(s14,X,_hasState,1) .
choose(s14,X,_hasState,1);choose(s14,X,_hasState,0):-s14_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 3:-s14_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s15_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s14_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s15_(Y,"t*"):_hasState_(X,Y,"t**")} 3:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s11_(X,"f");s13_(X,"f"):-node1i1kqqvn5x17_(X,"f") .
s17_(X,"t*"):-_obligationStateShape_(X,"t*") .
node1i1kqqvn5x17_(X,"t*"):-s17_(X,"t*") .
node1i1kqqvn5x17_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-node1i1kqqvn5x17_(X,"t*") .
choose(s18,X,_hasState,0):-s18_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 3:-s18_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s19_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s18_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
0 {s19_(Y,"t*"):_hasState_(X,Y,"t**")} 3:-s18_(X,"t*") .

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

s27_(X,"t*"):-node1i1kqqvn5x17_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
_hasState_(X,@new(s28,X,_hasState,1..1),"t"):-choose(s28,X,_hasState,1) .
choose(s28,X,_hasState,1);choose(s28,X,_hasState,0):-s28_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 3:-s28_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s29_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s28_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s29_(Y,"t*"):_hasState_(X,Y,"t**")} 3:-s28_(X,"t*") .
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

s18_(X,"f");s27_(X,"f"):-node1i1kqqvn5x17_(X,"f") .
s0_(X,"f");s7_(X,"f");s17_(X,"f"):-_obligationStateShape_(X,"f") .

% Interpretation Rules

_hasState_(X,Y,"t**"):-_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f") .

% Program Constraints

:-_hasState_(X,Y,"t"),_hasState_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s10_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s22_(X,"t*"),X!="_pendingState" .
:-s22_(X,"f"),X="_pendingState" .
:-s24_(X,"t*"),X!="_fulfilledState" .
:-s24_(X,"f"),X="_fulfilledState" .
:-s26_(X,"t*"),X!="_violatedState" .
:-s26_(X,"f"),X="_violatedState" .
:-s33_(X,"t*"),X!="_pendingState" .
:-s33_(X,"f"),X="_pendingState" .
:-s35_(X,"t*"),X!="_fulfilledState" .
:-s35_(X,"f"),X="_fulfilledState" .
:-s37_(X,"t*"),X!="_violatedState" .
:-s37_(X,"f"),X="_violatedState" .

% Change Set Rules

add(_hasState(X,Y)):-_hasState_(X,Y,"t**"),not _hasState(X,Y) .
del(_hasState(X,Y)):-_hasState_(X,Y,"f"),_hasState(X,Y) .
#minimize { 1@1,X,Y: _hasState_(X,Y,"t"), const(Y) } .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

#minimize { 1@0,X: del(_hasState(X,"_pendingState")) } .
#minimize { 2@0,X: del(_hasState(X,"_fulfilledState")) } .
#minimize { 3@0,X: del(_hasState(X,"_violatedState")) } .
#maximize { 1@0,X: add(_hasState(X,"_pendingState")) } .

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
