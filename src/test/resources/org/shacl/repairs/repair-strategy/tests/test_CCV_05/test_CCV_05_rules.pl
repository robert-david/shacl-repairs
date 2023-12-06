
% Graph Data

fibo_fnd_agr_ctr_Contract("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29") .
_contractType("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_written") .
_forPurpose("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","data sharing between Tim and Alice") .
xsd_string("data sharing between Tim and Alice") .
_hasContractCategory("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_categoryBusinessToBusiness") .
_hasContractStatus("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_statusFulfilled") .
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
_hasEndDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2021_09_07") .
xsd_dateTime("2021_09_07") .
_hasEndDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2023_09_07") .
xsd_dateTime("2023_09_07") .
_hasState("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_violatedState") .
dct_description("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .

% Shape Targets

targetNode("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_endDateConsistencyShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_endDateConsistencyShape_("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","t*"):-actualTarget("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_endDateConsistencyShape) .

% Annotation Rules

_hasEndDate_(X,Y,"t*"):-_hasEndDate(X,Y) .
_hasEndDate_(X,Y,"t*"):-_hasEndDate_(X,Y,"t") .
_hasObligations_(X,Y,"t*"):-_hasObligations(X,Y) .
_hasObligations_(X,Y,"t*"):-_hasObligations_(X,Y,"t") .
_hasObligations_(Y,X,"t"):-_hasObligations_inv_(X,Y,"t") .
_hasObligations_inv_(X,Y,"t*"):-_hasObligations_(Y,X,"t*") .
_hasObligations_(Y,X,"f"):-_hasObligations_inv_(X,Y,"f") .
_hasObligations_inv_(X,Y,"f"):-_hasObligations_(Y,X,"f") .
node1hgvtqvi9x168_st_(X,X1,"t*"):-node1hgvtqvi9x168_(X,_),_hasObligations_inv_(X,X0,"t*"),_hasEndDate_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-_endDateConsistencyShape_(X,"t*") .
node1hgvtqvi9x172_(X,"t*"):-s0_(X,"t*") .
node1hgvtqvi9x172_(X,"f"):-s0_(X,"f") .

% sh:maxCount 1 for node1hgvtqvi9x172
s1_(X,"t*"):-node1hgvtqvi9x172_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
_hasEndDate_(X,@new(s2,X,_hasEndDate,1..1),"t"):-choose(s2,X,_hasEndDate,1) .
_hasEndDate_(X,@new(s2,X,_hasEndDate,1..2),"t"):-choose(s2,X,_hasEndDate,2) .
choose(s2,X,_hasEndDate,2);choose(s2,X,_hasEndDate,1);choose(s2,X,_hasEndDate,0):-s2_(X,"t*") .
(C-1) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s3_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-1):-s2_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>1 .
_hasEndDate_(X,Y,"f"):-s2_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
2 {s3_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 2:-s2_(X,"t*") .


% sh:minCount 0 for node1hgvtqvi9x172
s4_(X,"t*"):-node1hgvtqvi9x172_(X,"t*") .
choose(s4,X,_hasEndDate,0):-s4_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s5_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s4_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
0 {s5_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 0:-s4_(X,"t*") .


% universal for node1hgvtqvi9x172
s6_(X,"t*"):-node1hgvtqvi9x172_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
_hasEndDate_(X,@new(s7,X,_hasEndDate,1..1),"t"):-choose(s7,X,_hasEndDate,1) .
choose(s7,X,_hasEndDate,1);choose(s7,X,_hasEndDate,0):-s7_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s8_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s7_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s8_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s4_(X,"f");s6_(X,"f"):-node1hgvtqvi9x172_(X,"f") .
s10_(X,"t*"):-_endDateConsistencyShape_(X,"t*") .
node1hgvtqvi9x172_(X,"t*"):-s10_(X,"t*") .
node1hgvtqvi9x172_(X,"f"):-s10_(X,"f") .

% sh:minCount 1 for node1hgvtqvi9x172
s11_(X,"t*"):-node1hgvtqvi9x172_(X,"t*") .
_hasEndDate_(X,@new(s11,X,_hasEndDate,1..1),"t"):-choose(s11,X,_hasEndDate,1) .
choose(s11,X,_hasEndDate,1);choose(s11,X,_hasEndDate,0):-s11_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s12_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s11_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s12_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 1:-s11_(X,"t*") .


s13_(X,"t*"):-node1hgvtqvi9x172_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
_hasEndDate_(X,@new(s14,X,_hasEndDate,1..1),"t"):-choose(s14,X,_hasEndDate,1) .
choose(s14,X,_hasEndDate,1);choose(s14,X,_hasEndDate,0):-s14_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s15_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s14_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s15_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-node1hgvtqvi9x172_(X,"f") .
s17_(X,"t*"):-_endDateConsistencyShape_(X,"t*") .
node1hgvtqvi9x168_(X,"t*"):-s17_(X,"t*") .
node1hgvtqvi9x168_(X,"f"):-s17_(X,"f") .


% sh:minCount 0 for node1hgvtqvi9x168
s18_(X,"t*"):-node1hgvtqvi9x168_(X,"t*") .
choose(s18,X,node1hgvtqvi9x168_st,0):-s18_(X,"t*") .
choose(node1hgvtqvi9x168_st,X,_hasObligations_inv_,1);choose(node1hgvtqvi9x168_st,X,_hasObligations_inv_,0):-node1hgvtqvi9x168_st_(X,Y,"t") .
_hasObligations_inv_(X,@new(node1hgvtqvi9x168_st,X,_hasObligations_inv_,1),"t"):-choose(node1hgvtqvi9x168_st,X,_hasObligations_inv_,1),node1hgvtqvi9x168_st_(X,Y,"t") .
(C-0) {node1hgvtqvi9x168_st_(X,Y,"f"):node1hgvtqvi9x168_st_(X,Y,"t*");s19_(Y,"f"):node1hgvtqvi9x168_st_(X,Y,"t*"),not node1hgvtqvi9x168_st_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:node1hgvtqvi9x168_st_(X,Y,"t*")}=C,C>0 .
_hasObligations_inv_(X,X0,"f");_hasEndDate_(X0,X1,"f"):-s18_(X,"f"),_hasObligations_inv_(X,X0,"t*"),_hasEndDate_(X0,X1,"t*"),node1hgvtqvi9x168_st_(X,X1,"f") .
0 {s19_(Y,"t*"):node1hgvtqvi9x168_st_(X,Y,"t**")} 0:-s18_(X,"t*") .


_hasEndDate_(X,Y,"t"):-node1hgvtqvi9x168_(X,"t*"),node1hgvtqvi9x168_st_(X,Y,"t*"),_hasEndDate_(X,Z,"t*"),Z>Y .
node1hgvtqvi9x168_st_(X,Y,"t"):-node1hgvtqvi9x168_(X,"t*"),_hasEndDate_(X,Y,"t*"),node1hgvtqvi9x168_st_(X,Z,"t*"),Y>Z .
1 {node1hgvtqvi9x168_st_(X,Y,"f");_hasEndDate_(X,Y,"f")} 1:-node1hgvtqvi9x168_(X,"f"),node1hgvtqvi9x168_st_(X,Y,"t*"),_hasEndDate_(X,Y,"t*") .

% universal for node1hgvtqvi9x168
s20_(X,"t*"):-node1hgvtqvi9x168_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
node1hgvtqvi9x168_st_(X,@new(s21,X,node1hgvtqvi9x168_st,1..1),"t"):-choose(s21,X,node1hgvtqvi9x168_st,1) .
choose(s21,X,node1hgvtqvi9x168_st,1);choose(s21,X,node1hgvtqvi9x168_st,0):-s21_(X,"t*") .
0 {_hasEndDate_(X0,Y,"t")} 1:-_hasObligations_inv_(X,X0,"t**"),node1hgvtqvi9x168_st_(X,Y,"t") .
(C-0) {node1hgvtqvi9x168_st_(X,Y,"f"):node1hgvtqvi9x168_st_(X,Y,"t*");s22_(Y,"f"):node1hgvtqvi9x168_st_(X,Y,"t*"),not node1hgvtqvi9x168_st_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:node1hgvtqvi9x168_st_(X,Y,"t*")}=C,C>0 .
_hasObligations_inv_(X,X0,"f");_hasEndDate_(X0,X1,"f"):-s21_(X,"f"),_hasObligations_inv_(X,X0,"t*"),_hasEndDate_(X0,X1,"t*"),node1hgvtqvi9x168_st_(X,X1,"f") .
1 {s22_(Y,"t*"):node1hgvtqvi9x168_st_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .


s18_(X,"f");s20_(X,"f"):-node1hgvtqvi9x168_(X,"f") .
s0_(X,"f");s10_(X,"f");s17_(X,"f"):-_endDateConsistencyShape_(X,"f") .

% Interpretation Rules

_hasEndDate_(X,Y,"t**"):-_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f") .
_hasObligations_(X,Y,"t**"):-_hasObligations_(X,Y,"t*"),not _hasObligations_(X,Y,"f") .
_hasObligations_inv_(X,Y,"t**"):-_hasObligations_inv_(X,Y,"t*"),not _hasObligations_inv_(X,Y,"f") .
node1hgvtqvi9x168_st_(X,X1,"t**"):-node1hgvtqvi9x168_st_(X,X1,"t*"),not node1hgvtqvi9x168_st_(X,X1,"f"),_hasObligations_inv_(X,X0,"t**"),_hasEndDate_(X0,X1,"t**") .

% Program Constraints

:-_hasEndDate_(X,Y,"t"),_hasEndDate_(X,Y,"f") .
:-s3_(X,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-_hasObligations_(X,Y,"t"),_hasObligations_(X,Y,"f") .
:-_hasObligations_inv_(X,Y,"t"),_hasObligations_inv_(X,Y,"f") .
:-node1hgvtqvi9x168_st_(X,Y,"t"),node1hgvtqvi9x168_st_(X,Y,"f") .
:-s19_(X,"f") .
:-s23_(X,"f") .

% Change Set Rules

add(_hasEndDate(X,Y)):-_hasEndDate_(X,Y,"t**"),not _hasEndDate(X,Y) .
del(_hasEndDate(X,Y)):-_hasEndDate_(X,Y,"f"),_hasEndDate(X,Y) .
add(_hasObligations(X,Y)):-_hasObligations_(X,Y,"t**"),not _hasObligations(X,Y) .
del(_hasObligations(X,Y)):-_hasObligations_(X,Y,"f"),_hasObligations(X,Y) .
% Get all optimal models: --opt-mode=optN -n 100 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

#maximize { 1@0,Z: del(_hasEndDate(X,Y)),_hasEndDate(X,Z),Y<Z,Y!=Z } .

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
