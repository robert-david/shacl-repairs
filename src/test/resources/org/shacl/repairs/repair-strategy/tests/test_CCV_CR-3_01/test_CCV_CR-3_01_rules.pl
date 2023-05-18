
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
_hasStates("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_stateViolated") .
dct_description("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .
_hasTerms("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","_term1") .
_hasObligations("_term1","_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .

% Shape Targets

targetNode("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractStatusShape) .
targetNode("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractViolationShape) .

% Constants

const("_stateViolated") .
const("_statusViolated") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_contractStatusShape_("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractStatusShape) .
_contractViolationShape_("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractViolationShape) .

% Annotation Rules

_hasContractStatus_(X,Y,"t*"):-_hasContractStatus(X,Y) .
_hasContractStatus_(X,Y,"t*"):-_hasContractStatus_(X,Y,"t") .
node1h0oc2cvkx260_st_(X,Y,"t*"):-node1h0oc2cvkx260_(X,_),_hasContractStatus_(X,Y,"t*") .
node1h0oc2cvkx259_st_(X,Y,"t*"):-node1h0oc2cvkx259_(X,_),_hasContractStatus_(X,Y,"t*") .
_hasTerms_(X,Y,"t*"):-_hasTerms(X,Y) .
_hasTerms_(X,Y,"t*"):-_hasTerms_(X,Y,"t") .
_hasObligations_(X,Y,"t*"):-_hasObligations(X,Y) .
_hasObligations_(X,Y,"t*"):-_hasObligations_(X,Y,"t") .
_hasStates_(X,Y,"t*"):-_hasStates(X,Y) .
_hasStates_(X,Y,"t*"):-_hasStates_(X,Y,"t") .
node1h0oc2cvkx253_st_(X,X2,"t*"):-node1h0oc2cvkx253_(X,_),_hasTerms_(X,X0,"t*"),_hasObligations_(X0,X1,"t*"),_hasStates_(X1,X2,"t*") .

% Repair Rules

s0_(X,"t*"):-_contractStatusShape_(X,"t*") .
node1h0oc2cvkx260_(X,"t*"):-s0_(X,"t*") .
node1h0oc2cvkx260_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for node1h0oc2cvkx260
s1_(X,"t*"):-node1h0oc2cvkx260_(X,"t*") .
choose(s1,X,_hasContractStatus,0):-s1_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s1_(X,"t*") .
(C-0) {node1h0oc2cvkx260_st_(X,Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*");s2_(Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*"),not node1h0oc2cvkx260_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:node1h0oc2cvkx260_st_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s1_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx260_st_(X,Y,"f") .
0 {s2_(Y,"t*"):node1h0oc2cvkx260_st_(X,Y,"t**")} 2:-s1_(X,"t*") .


% sh:maxCount 1 for node1h0oc2cvkx260
s3_(X,"t*"):-node1h0oc2cvkx260_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_hasContractStatus_(X,@new(s4,X,_hasContractStatus,1..1),"t"):-choose(s4,X,_hasContractStatus,1) .
_hasContractStatus_(X,@new(s4,X,_hasContractStatus,1..2),"t"):-choose(s4,X,_hasContractStatus,2) .
choose(s4,X,_hasContractStatus,2);choose(s4,X,_hasContractStatus,1);choose(s4,X,_hasContractStatus,0):-s4_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s4_(X,"t*") .
(C-1) {node1h0oc2cvkx260_st_(X,Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*");s5_(Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*"),not node1h0oc2cvkx260_st_(X,Y,"f")} (C-1):-s4_(X,"f"),#count {Y:node1h0oc2cvkx260_st_(X,Y,"t*")}=C,C>1 .
_hasContractStatus_(X,Y,"f"):-s4_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx260_st_(X,Y,"f") .
2 {s5_(Y,"t*"):node1h0oc2cvkx260_st_(X,Y,"t**")} 2:-s4_(X,"t*") .


% universal for node1h0oc2cvkx260
s6_(X,"t*"):-node1h0oc2cvkx260_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
_hasContractStatus_(X,@new(s7,X,_hasContractStatus,1..1),"t"):-choose(s7,X,_hasContractStatus,1) .
choose(s7,X,_hasContractStatus,1);choose(s7,X,_hasContractStatus,0):-s7_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s7_(X,"t*") .
(C-0) {node1h0oc2cvkx260_st_(X,Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*");s8_(Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*"),not node1h0oc2cvkx260_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:node1h0oc2cvkx260_st_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s7_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx260_st_(X,Y,"f") .
1 {s8_(Y,"t*"):node1h0oc2cvkx260_st_(X,Y,"t**")} 2:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s3_(X,"f");s6_(X,"f"):-node1h0oc2cvkx260_(X,"f") .
s10_(X,"t*"):-_contractStatusShape_(X,"t*") .
node1h0oc2cvkx260_(X,"t*"):-s10_(X,"t*") .
node1h0oc2cvkx260_(X,"f"):-s10_(X,"f") .

% sh:minCount 1 for node1h0oc2cvkx260
s11_(X,"t*"):-node1h0oc2cvkx260_(X,"t*") .
_hasContractStatus_(X,@new(s11,X,_hasContractStatus,1..1),"t"):-choose(s11,X,_hasContractStatus,1) .
choose(s11,X,_hasContractStatus,1);choose(s11,X,_hasContractStatus,0):-s11_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s11_(X,"t*") .
(C-0) {node1h0oc2cvkx260_st_(X,Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*");s12_(Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*"),not node1h0oc2cvkx260_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:node1h0oc2cvkx260_st_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s11_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx260_st_(X,Y,"f") .
1 {s12_(Y,"t*"):node1h0oc2cvkx260_st_(X,Y,"t**")} 2:-s11_(X,"t*") .


s13_(X,"t*"):-node1h0oc2cvkx260_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
_hasContractStatus_(X,@new(s14,X,_hasContractStatus,1..1),"t"):-choose(s14,X,_hasContractStatus,1) .
choose(s14,X,_hasContractStatus,1);choose(s14,X,_hasContractStatus,0):-s14_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s14_(X,"t*") .
(C-0) {node1h0oc2cvkx260_st_(X,Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*");s15_(Y,"f"):node1h0oc2cvkx260_st_(X,Y,"t*"),not node1h0oc2cvkx260_st_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:node1h0oc2cvkx260_st_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s14_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx260_st_(X,Y,"f") .
1 {s15_(Y,"t*"):node1h0oc2cvkx260_st_(X,Y,"t**")} 2:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-node1h0oc2cvkx260_(X,"f") .
s0_(X,"f");s10_(X,"f"):-_contractStatusShape_(X,"f") .
s17_(X,"f"):-_contractViolationShape_(X,"f") .
node1h0oc2cvkx259_(X,"t*"):-s17_(X,"t*") .
node1h0oc2cvkx259_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-node1h0oc2cvkx259_(X,"t*") .
_hasContractStatus_(X,@new(s18,X,_hasContractStatus,1..1),"t"):-choose(s18,X,_hasContractStatus,1) .
choose(s18,X,_hasContractStatus,1);choose(s18,X,_hasContractStatus,0):-s18_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s18_(X,"t*") .
(C-0) {node1h0oc2cvkx259_st_(X,Y,"f"):node1h0oc2cvkx259_st_(X,Y,"t*");s19_(Y,"f"):node1h0oc2cvkx259_st_(X,Y,"t*"),not node1h0oc2cvkx259_st_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:node1h0oc2cvkx259_st_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s18_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx259_st_(X,Y,"f") .
1 {s19_(Y,"t*"):node1h0oc2cvkx259_st_(X,Y,"t**")} 2:-s18_(X,"t*") .


% sh:minCount 0 for node1h0oc2cvkx259
s20_(X,"t*"):-node1h0oc2cvkx259_(X,"t*") .
choose(s20,X,_hasContractStatus,0):-s20_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s20_(X,"t*") .
(C-0) {node1h0oc2cvkx259_st_(X,Y,"f"):node1h0oc2cvkx259_st_(X,Y,"t*");s21_(Y,"f"):node1h0oc2cvkx259_st_(X,Y,"t*"),not node1h0oc2cvkx259_st_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:node1h0oc2cvkx259_st_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s20_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx259_st_(X,Y,"f") .
0 {s21_(Y,"t*"):node1h0oc2cvkx259_st_(X,Y,"t**")} 2:-s20_(X,"t*") .


% universal for node1h0oc2cvkx259
s22_(X,"t*"):-node1h0oc2cvkx259_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .
_hasContractStatus_(X,@new(s23,X,_hasContractStatus,1..1),"t"):-choose(s23,X,_hasContractStatus,1) .
choose(s23,X,_hasContractStatus,1);choose(s23,X,_hasContractStatus,0):-s23_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 2:-s23_(X,"t*") .
(C-0) {node1h0oc2cvkx259_st_(X,Y,"f"):node1h0oc2cvkx259_st_(X,Y,"t*");s24_(Y,"f"):node1h0oc2cvkx259_st_(X,Y,"t*"),not node1h0oc2cvkx259_st_(X,Y,"f")} (C-0):-s23_(X,"f"),#count {Y:node1h0oc2cvkx259_st_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s23_(X,"f"),_hasContractStatus_(X,Y,"t*"),node1h0oc2cvkx259_st_(X,Y,"f") .
1 {s24_(Y,"t*"):node1h0oc2cvkx259_st_(X,Y,"t**")} 2:-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .


s18_(X,"f");s20_(X,"f");s22_(X,"f"):-node1h0oc2cvkx259_(X,"f") .
s26_(X,"f"):-_contractViolationShape_(X,"f") .
node1h0oc2cvkx252_(X,"f"):-s26_(X,"t*") .
node1h0oc2cvkx252_(X,"t*"):-s26_(X,"f") .
node1h0oc2cvkx253_(X,"t*"):-node1h0oc2cvkx252_(X,"t*") .
node1h0oc2cvkx253_(X,"f"):-node1h0oc2cvkx252_(X,"f") .



s27_(X,"t*"):-node1h0oc2cvkx253_(X,"t*") .
choose(s27,X,_hasTerms,1);choose(s27,X,_hasTerms,0):-s27_(X,"t*") .
_hasTerms_(X,@new(s27,X,_hasTerms,1),"t"):-choose(s27,X,_hasTerms,1),s27_(X,"t*") .
choose(s27,X0,_hasObligations,1);choose(s27,X0,_hasObligations,0):-_hasTerms_(X,X0,"t**"),s27_(X,"t*") .
_hasObligations_(X0,@new(s27,X0,_hasObligations,1),"t"):-choose(s27,X0,_hasObligations,1),_hasTerms_(X,X0,"t**"),s27_(X,"t*") .
_hasStates_(X1,@new(s27,X1,_hasStates,1..1),"t"):-choose(s27,X1,_hasStates,1),_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),s27_(X,"t*") .
0 {_hasStates_(X1,Y,"t"):const(Y)} 2:-_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),s27_(X,"t*") .
choose(s27,X1,_hasStates,1);choose(s27,X1,_hasStates,0):-_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),s27_(X,"t*") .
(C-0) {node1h0oc2cvkx253_st_(X,Y,"f"):node1h0oc2cvkx253_st_(X,Y,"t*");s28_(Y,"f"):node1h0oc2cvkx253_st_(X,Y,"t*"),not node1h0oc2cvkx253_st_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:node1h0oc2cvkx253_st_(X,Y,"t*")}=C,C>0 .
_hasTerms_(X,X0,"f");_hasObligations_(X0,X1,"f");_hasStates_(X1,X2,"f"):-s27_(X,"f"),_hasTerms_(X,X0,"t*"),_hasObligations_(X0,X1,"t*"),_hasStates_(X1,X2,"t*"),node1h0oc2cvkx253_st_(X,X2,"f") .
1 {s28_(Y,"t*"):node1h0oc2cvkx253_st_(X,Y,"t**")} 2:-s27_(X,"t*") .


% sh:minCount 0 for node1h0oc2cvkx253
s29_(X,"t*"):-node1h0oc2cvkx253_(X,"t*") .
choose(s29,X,_hasTerms,1);choose(s29,X,_hasTerms,0):-s29_(X,"t*") .
_hasTerms_(X,@new(s29,X,_hasTerms,1),"t"):-choose(s29,X,_hasTerms,1),s29_(X,"t*") .
choose(s29,X0,_hasObligations,1);choose(s29,X0,_hasObligations,0):-_hasTerms_(X,X0,"t**"),s29_(X,"t*") .
_hasObligations_(X0,@new(s29,X0,_hasObligations,1),"t"):-choose(s29,X0,_hasObligations,1),_hasTerms_(X,X0,"t**"),s29_(X,"t*") .
choose(s29,X1,_hasStates,0):-_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),s29_(X,"t*") .
(C-0) {node1h0oc2cvkx253_st_(X,Y,"f"):node1h0oc2cvkx253_st_(X,Y,"t*");s30_(Y,"f"):node1h0oc2cvkx253_st_(X,Y,"t*"),not node1h0oc2cvkx253_st_(X,Y,"f")} (C-0):-s29_(X,"f"),#count {Y:node1h0oc2cvkx253_st_(X,Y,"t*")}=C,C>0 .
_hasTerms_(X,X0,"f");_hasObligations_(X0,X1,"f");_hasStates_(X1,X2,"f"):-s29_(X,"f"),_hasTerms_(X,X0,"t*"),_hasObligations_(X0,X1,"t*"),_hasStates_(X1,X2,"t*"),node1h0oc2cvkx253_st_(X,X2,"f") .
0 {s30_(Y,"t*"):node1h0oc2cvkx253_st_(X,Y,"t**")} 2:-s29_(X,"t*") .


% universal for node1h0oc2cvkx253
s31_(X,"t*"):-node1h0oc2cvkx253_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .
choose(s32,X,_hasTerms,1);choose(s32,X,_hasTerms,0):-s32_(X,"t*") .
_hasTerms_(X,@new(s32,X,_hasTerms,1),"t"):-choose(s32,X,_hasTerms,1),s32_(X,"t*") .
choose(s32,X0,_hasObligations,1);choose(s32,X0,_hasObligations,0):-_hasTerms_(X,X0,"t**"),s32_(X,"t*") .
_hasObligations_(X0,@new(s32,X0,_hasObligations,1),"t"):-choose(s32,X0,_hasObligations,1),_hasTerms_(X,X0,"t**"),s32_(X,"t*") .
_hasStates_(X1,@new(s32,X1,_hasStates,1..1),"t"):-choose(s32,X1,_hasStates,1),_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),s32_(X,"t*") .
0 {_hasStates_(X1,Y,"t"):const(Y)} 2:-_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),s32_(X,"t*") .
choose(s32,X1,_hasStates,1);choose(s32,X1,_hasStates,0):-_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),s32_(X,"t*") .
(C-0) {node1h0oc2cvkx253_st_(X,Y,"f"):node1h0oc2cvkx253_st_(X,Y,"t*");s33_(Y,"f"):node1h0oc2cvkx253_st_(X,Y,"t*"),not node1h0oc2cvkx253_st_(X,Y,"f")} (C-0):-s32_(X,"f"),#count {Y:node1h0oc2cvkx253_st_(X,Y,"t*")}=C,C>0 .
_hasTerms_(X,X0,"f");_hasObligations_(X0,X1,"f");_hasStates_(X1,X2,"f"):-s32_(X,"f"),_hasTerms_(X,X0,"t*"),_hasObligations_(X0,X1,"t*"),_hasStates_(X1,X2,"t*"),node1h0oc2cvkx253_st_(X,X2,"f") .
1 {s33_(Y,"t*"):node1h0oc2cvkx253_st_(X,Y,"t**")} 2:-s32_(X,"t*") .
s34_(X,"f"):-s33_(X,"t*") .
s34_(X,"t*"):-s33_(X,"f") .


s27_(X,"f");s29_(X,"f");s31_(X,"f"):-node1h0oc2cvkx253_(X,"f") .
s17_(X,"t*");s26_(X,"t*"):-_contractViolationShape_(X,"t*") .

% Interpretation Rules

_hasContractStatus_(X,Y,"t**"):-_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f") .
node1h0oc2cvkx260_st_(X,Y,"t**"):-_hasContractStatus_(X,Y,"t**"),node1h0oc2cvkx260_st_(X,Y,"t*"),not node1h0oc2cvkx260_st_(X,Y,"f") .
node1h0oc2cvkx259_st_(X,Y,"t**"):-_hasContractStatus_(X,Y,"t**"),node1h0oc2cvkx259_st_(X,Y,"t*"),not node1h0oc2cvkx259_st_(X,Y,"f") .
_hasTerms_(X,Y,"t**"):-_hasTerms_(X,Y,"t*"),not _hasTerms_(X,Y,"f") .
_hasObligations_(X,Y,"t**"):-_hasObligations_(X,Y,"t*"),not _hasObligations_(X,Y,"f") .
_hasStates_(X,Y,"t**"):-_hasStates_(X,Y,"t*"),not _hasStates_(X,Y,"f") .
node1h0oc2cvkx253_st_(X,Y,"t**"):-node1h0oc2cvkx253_st_(X,Y,"t*"),not node1h0oc2cvkx253_st_(X,Y,"f"),_hasTerms_(X,X0,"t**"),_hasObligations_(X0,X1,"t**"),_hasStates_(X1,X2,"t**") .

% Program Constraints

:-_hasContractStatus_(X,Y,"t"),_hasContractStatus_(X,Y,"f") .
:-s2_(X,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s19_(X,"t*"),X!="_statusViolated" .
:-s19_(X,"f"),X="_statusViolated" .
:-s21_(X,"f") .
:-s25_(X,"f") .
:-_hasTerms_(X,Y,"t"),_hasTerms_(X,Y,"f") .
:-_hasObligations_(X,Y,"t"),_hasObligations_(X,Y,"f") .
:-_hasStates_(X,Y,"t"),_hasStates_(X,Y,"f") .
:-s28_(X,"t*"),X!="_stateViolated" .
:-s28_(X,"f"),X="_stateViolated" .
:-s30_(X,"f") .
:-s34_(X,"f") .

% Change Set Rules

add(_hasContractStatus(X,Y)):-_hasContractStatus_(X,Y,"t**"),not _hasContractStatus(X,Y) .
del(_hasContractStatus(X,Y)):-_hasContractStatus_(X,Y,"f"),_hasContractStatus(X,Y) .
#minimize { 1@1,X,Y: _hasContractStatus_(X,Y,"t"), const(Y) } .
add(_hasTerms(X,Y)):-_hasTerms_(X,Y,"t**"),not _hasTerms(X,Y) .
del(_hasTerms(X,Y)):-_hasTerms_(X,Y,"f"),_hasTerms(X,Y) .
add(_hasObligations(X,Y)):-_hasObligations_(X,Y,"t**"),not _hasObligations(X,Y) .
del(_hasObligations(X,Y)):-_hasObligations_(X,Y,"f"),_hasObligations(X,Y) .
add(_hasStates(X,Y)):-_hasStates_(X,Y,"t**"),not _hasStates(X,Y) .
del(_hasStates(X,Y)):-_hasStates_(X,Y,"f"),_hasStates(X,Y) .
#minimize { 1@1,X,Y: _hasStates_(X,Y,"t"), const(Y) } .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

:-del(_hasStates(X,"_stateViolated")) .
:-del(_hasObligations(X,_)) .
:-del(_hasTerms(X,_)) .

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
