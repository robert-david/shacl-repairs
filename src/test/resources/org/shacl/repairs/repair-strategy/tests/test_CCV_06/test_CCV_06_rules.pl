
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
_hasEndDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2020_09_07") .
xsd_dateTime("2020_09_07") .
_hasEndDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2021_09_07") .
xsd_dateTime("2021_09_07") .
_hasState("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_violatedState") .
dct_description("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .

% Shape Targets

targetNode("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_obligationShape) .
targetNode("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_endDateConsistencyShape) .

% Constants

const("_violatedState") .
const("_pendingState") .
const("_fulfilledState") .
const("_createdState") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_obligationShape_("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","t*"):-actualTarget("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",_obligationShape) .
_endDateConsistencyShape_("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_endDateConsistencyShape) .

% Annotation Rules

_hasObligations_(X,Y,"t*"):-_hasObligations(X,Y) .
_hasObligations_(X,Y,"t*"):-_hasObligations_(X,Y,"t") .
_hasEndDate_(X,Y,"t*"):-_hasEndDate(X,Y) .
_hasEndDate_(X,Y,"t*"):-_hasEndDate_(X,Y,"t") .
node1hm6rtb6tx220_st_(X,X1,"t*"):-node1hm6rtb6tx220_(X,_),_hasObligations_(X,X0,"t*"),_hasEndDate_(X0,X1,"t*") .
_hasState_(X,Y,"t*"):-_hasState(X,Y) .
_hasState_(X,Y,"t*"):-_hasState_(X,Y,"t") .

% Repair Rules

node1hm6rtb6tx220_(X,"t*"):-_endDateConsistencyShape_(X,"t*") .
node1hm6rtb6tx220_(X,"f"):-_endDateConsistencyShape_(X,"f") .


% sh:minCount 0 for node1hm6rtb6tx220
s0_(X,"t*"):-node1hm6rtb6tx220_(X,"t*") .
choose(s0,X,node1hm6rtb6tx220_st,0):-s0_(X,"t*") .
0 {node1hm6rtb6tx220_st_(X,Y,"t"):const(Y)} 4:-s0_(X,"t*") .
choose(node1hm6rtb6tx220_st,X,_hasObligations,1);choose(node1hm6rtb6tx220_st,X,_hasObligations,0):-node1hm6rtb6tx220_st_(X,Y,"t") .
_hasObligations_(X,@new(node1hm6rtb6tx220_st,X,_hasObligations,1),"t"):-choose(node1hm6rtb6tx220_st,X,_hasObligations,1),node1hm6rtb6tx220_st_(X,Y,"t") .
0 {_hasEndDate_(X0,Y,"t"):const(Y)} 4:-_hasObligations_(X,X0,"t**"),node1hm6rtb6tx220_st_(X,Y,"t") .
(C-0) {node1hm6rtb6tx220_st_(X,Y,"f"):node1hm6rtb6tx220_st_(X,Y,"t*");s1_(Y,"f"):node1hm6rtb6tx220_st_(X,Y,"t*"),not node1hm6rtb6tx220_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hm6rtb6tx220_st_(X,Y,"t*")}=C,C>0 .
_hasObligations_(X,X0,"f");_hasEndDate_(X0,X1,"f"):-s0_(X,"f"),_hasObligations_(X,X0,"t*"),_hasEndDate_(X0,X1,"t*"),node1hm6rtb6tx220_st_(X,X1,"f") .
0 {s1_(Y,"t*"):node1hm6rtb6tx220_st_(X,Y,"t**")} 4:-s0_(X,"t*") .


node1hm6rtb6tx220_st_(X,Y,"f");_hasEndDate_(X,Z,"f"):-node1hm6rtb6tx220_(X,"t*"),node1hm6rtb6tx220_st_(X,Y,"t*"),_hasEndDate_(X,Z,"t*"),Y>Z .
node1hm6rtb6tx220_st_(X,Y,"f");_hasEndDate_(X,Z,"f"):-node1hm6rtb6tx220_(X,"f"),node1hm6rtb6tx220_st_(X,Y,"t*"),_hasEndDate_(X,Z,"t*"),Y<=Z .

% universal for node1hm6rtb6tx220
s2_(X,"t*"):-node1hm6rtb6tx220_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
node1hm6rtb6tx220_st_(X,@new(s3,X,node1hm6rtb6tx220_st,1..1),"t"):-choose(s3,X,node1hm6rtb6tx220_st,1) .
choose(s3,X,node1hm6rtb6tx220_st,1);choose(s3,X,node1hm6rtb6tx220_st,0):-s3_(X,"t*") .
0 {node1hm6rtb6tx220_st_(X,Y,"t"):const(Y)} 4:-s3_(X,"t*") .
0 {_hasEndDate_(X0,Y,"t")} 1:-_hasObligations_(X,X0,"t**"),node1hm6rtb6tx220_st_(X,Y,"t") .
(C-0) {node1hm6rtb6tx220_st_(X,Y,"f"):node1hm6rtb6tx220_st_(X,Y,"t*");s4_(Y,"f"):node1hm6rtb6tx220_st_(X,Y,"t*"),not node1hm6rtb6tx220_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hm6rtb6tx220_st_(X,Y,"t*")}=C,C>0 .
_hasObligations_(X,X0,"f");_hasEndDate_(X0,X1,"f"):-s3_(X,"f"),_hasObligations_(X,X0,"t*"),_hasEndDate_(X0,X1,"t*"),node1hm6rtb6tx220_st_(X,X1,"f") .
1 {s4_(Y,"t*"):node1hm6rtb6tx220_st_(X,Y,"t**")} 4:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1hm6rtb6tx220_(X,"f") .
s6_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx219_(X,"t*"):-s6_(X,"t*") .
node1hm6rtb6tx219_(X,"f"):-s6_(X,"f") .

% sh:minCount 1 for node1hm6rtb6tx219
s7_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
_hasEndDate_(X,@new(s7,X,_hasEndDate,1..1),"t"):-choose(s7,X,_hasEndDate,1) .
choose(s7,X,_hasEndDate,1);choose(s7,X,_hasEndDate,0):-s7_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s7_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s8_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s7_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s8_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s7_(X,"t*") .


% universal for node1hm6rtb6tx219
s9_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
_hasEndDate_(X,@new(s10,X,_hasEndDate,1..1),"t"):-choose(s10,X,_hasEndDate,1) .
choose(s10,X,_hasEndDate,1);choose(s10,X,_hasEndDate,0):-s10_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s10_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s11_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s10_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s11_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s7_(X,"f");s9_(X,"f"):-node1hm6rtb6tx219_(X,"f") .
s13_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx214_(X,"t*"):-s13_(X,"t*") .
node1hm6rtb6tx214_(X,"f"):-s13_(X,"f") .

% sh:minCount 1 for node1hm6rtb6tx214
s14_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
_hasState_(X,@new(s14,X,_hasState,1..1),"t"):-choose(s14,X,_hasState,1) .
choose(s14,X,_hasState,1);choose(s14,X,_hasState,0):-s14_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s14_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s15_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s14_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s15_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s14_(X,"t*") .


% universal for node1hm6rtb6tx214
s16_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
_hasState_(X,@new(s17,X,_hasState,1..1),"t"):-choose(s17,X,_hasState,1) .
choose(s17,X,_hasState,1);choose(s17,X,_hasState,0):-s17_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s17_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s18_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s17_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s18_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s17_(X,"t*") .
s19_(X,"f"):-s18_(X,"t*") .
s19_(X,"t*"):-s18_(X,"f") .


s14_(X,"f");s16_(X,"f"):-node1hm6rtb6tx214_(X,"f") .
s20_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx214_(X,"t*"):-s20_(X,"t*") .
node1hm6rtb6tx214_(X,"f"):-s20_(X,"f") .

s21_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
_hasState_(X,@new(s21,X,_hasState,1..1),"t"):-choose(s21,X,_hasState,1) .
choose(s21,X,_hasState,1);choose(s21,X,_hasState,0):-s21_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s21_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s22_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s21_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s22_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s21_(X,"t*") .


s23_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .
_hasState_(X,@new(s24,X,_hasState,1..1),"t"):-choose(s24,X,_hasState,1) .
choose(s24,X,_hasState,1);choose(s24,X,_hasState,0):-s24_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s24_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s25_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s24_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s24_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s25_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s24_(X,"t*") .
s26_(X,"f"):-s25_(X,"t*") .
s26_(X,"t*"):-s25_(X,"f") .


s21_(X,"f");s23_(X,"f"):-node1hm6rtb6tx214_(X,"f") .
s27_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx219_(X,"t*"):-s27_(X,"t*") .
node1hm6rtb6tx219_(X,"f"):-s27_(X,"f") .

% sh:minCount 0 for node1hm6rtb6tx219
s28_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
choose(s28,X,_hasEndDate,0):-s28_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s28_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s29_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s28_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
0 {s29_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s28_(X,"t*") .


% sh:maxCount 1 for node1hm6rtb6tx219
s30_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
_hasEndDate_(X,@new(s31,X,_hasEndDate,1..1),"t"):-choose(s31,X,_hasEndDate,1) .
_hasEndDate_(X,@new(s31,X,_hasEndDate,1..2),"t"):-choose(s31,X,_hasEndDate,2) .
choose(s31,X,_hasEndDate,2);choose(s31,X,_hasEndDate,1);choose(s31,X,_hasEndDate,0):-s31_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s31_(X,"t*") .
(C-1) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s32_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-1):-s31_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>1 .
_hasEndDate_(X,Y,"f"):-s31_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
2 {s32_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s31_(X,"t*") .


s33_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
s34_(X,"f"):-s33_(X,"t*") .
s34_(X,"t*"):-s33_(X,"f") .
_hasEndDate_(X,@new(s34,X,_hasEndDate,1..1),"t"):-choose(s34,X,_hasEndDate,1) .
choose(s34,X,_hasEndDate,1);choose(s34,X,_hasEndDate,0):-s34_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s34_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s35_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s34_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s35_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s34_(X,"t*") .
s36_(X,"f"):-s35_(X,"t*") .
s36_(X,"t*"):-s35_(X,"f") .


s28_(X,"f");s30_(X,"f");s33_(X,"f"):-node1hm6rtb6tx219_(X,"f") .
s37_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx214_(X,"t*"):-s37_(X,"t*") .
node1hm6rtb6tx214_(X,"f"):-s37_(X,"f") .

% sh:maxCount 1 for node1hm6rtb6tx214
s38_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s39_(X,"f"):-s38_(X,"t*") .
s39_(X,"t*"):-s38_(X,"f") .
_hasState_(X,@new(s39,X,_hasState,1..1),"t"):-choose(s39,X,_hasState,1) .
_hasState_(X,@new(s39,X,_hasState,1..2),"t"):-choose(s39,X,_hasState,2) .
choose(s39,X,_hasState,2);choose(s39,X,_hasState,1);choose(s39,X,_hasState,0):-s39_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s39_(X,"t*") .
(C-1) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s40_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-1):-s39_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>1 .
_hasState_(X,Y,"f"):-s39_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
2 {s40_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s39_(X,"t*") .


% sh:minCount 0 for node1hm6rtb6tx214
s41_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
choose(s41,X,_hasState,0):-s41_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s41_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s42_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s41_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
0 {s42_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s41_(X,"t*") .


s43_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
_hasState_(X,@new(s44,X,_hasState,1..1),"t"):-choose(s44,X,_hasState,1) .
choose(s44,X,_hasState,1);choose(s44,X,_hasState,0):-s44_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s44_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s45_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s44_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s44_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s45_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s44_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .


s38_(X,"f");s41_(X,"f");s43_(X,"f"):-node1hm6rtb6tx214_(X,"f") .
s47_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx219_(X,"t*"):-s47_(X,"t*") .
node1hm6rtb6tx219_(X,"f"):-s47_(X,"f") .

s48_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
_hasEndDate_(X,@new(s48,X,_hasEndDate,1..1),"t"):-choose(s48,X,_hasEndDate,1) .
choose(s48,X,_hasEndDate,1);choose(s48,X,_hasEndDate,0):-s48_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s48_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s49_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s48_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s48_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s49_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s48_(X,"t*") .


s50_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
s51_(X,"f"):-s50_(X,"t*") .
s51_(X,"t*"):-s50_(X,"f") .
_hasEndDate_(X,@new(s51,X,_hasEndDate,1..1),"t"):-choose(s51,X,_hasEndDate,1) .
choose(s51,X,_hasEndDate,1);choose(s51,X,_hasEndDate,0):-s51_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s51_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s52_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s51_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s51_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s52_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s51_(X,"t*") .
s53_(X,"f"):-s52_(X,"t*") .
s53_(X,"t*"):-s52_(X,"f") .


s48_(X,"f");s50_(X,"f"):-node1hm6rtb6tx219_(X,"f") .
s54_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx214_(X,"t*"):-s54_(X,"t*") .
node1hm6rtb6tx214_(X,"f"):-s54_(X,"f") .

s55_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .
_hasState_(X,@new(s56,X,_hasState,1..1),"t"):-choose(s56,X,_hasState,1) .
_hasState_(X,@new(s56,X,_hasState,1..2),"t"):-choose(s56,X,_hasState,2) .
choose(s56,X,_hasState,2);choose(s56,X,_hasState,1);choose(s56,X,_hasState,0):-s56_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s56_(X,"t*") .
(C-1) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s57_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-1):-s56_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>1 .
_hasState_(X,Y,"f"):-s56_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
2 {s57_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s56_(X,"t*") .


s58_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
choose(s58,X,_hasState,0):-s58_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s58_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s59_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s58_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s58_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
0 {s59_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s58_(X,"t*") .


s60_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s61_(X,"f"):-s60_(X,"t*") .
s61_(X,"t*"):-s60_(X,"f") .
_hasState_(X,@new(s61,X,_hasState,1..1),"t"):-choose(s61,X,_hasState,1) .
choose(s61,X,_hasState,1);choose(s61,X,_hasState,0):-s61_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s61_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s62_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s61_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s61_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s62_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s61_(X,"t*") .
s63_(X,"f"):-s62_(X,"t*") .
s63_(X,"t*"):-s62_(X,"f") .


s55_(X,"f");s58_(X,"f");s60_(X,"f"):-node1hm6rtb6tx214_(X,"f") .
s64_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx214_(X,"t*"):-s64_(X,"t*") .
node1hm6rtb6tx214_(X,"f"):-s64_(X,"f") .

s65_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
choose(s65,X,_hasState,0):-s65_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s65_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s66_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s65_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s65_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
0 {s66_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s65_(X,"t*") .

s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .
s68_(X,"t*"):-s67_(X,"t*") .
s69_(X,"f"):-s68_(X,"t*") .
s69_(X,"t*"):-s68_(X,"f") .
s70_(X,"t*"):-s67_(X,"t*") .
s71_(X,"f"):-s70_(X,"t*") .
s71_(X,"t*"):-s70_(X,"f") .
s72_(X,"t*"):-s67_(X,"t*") .
s73_(X,"f"):-s72_(X,"t*") .
s73_(X,"t*"):-s72_(X,"f") .
s74_(X,"t*"):-s67_(X,"t*") .
s75_(X,"f"):-s74_(X,"t*") .
s75_(X,"t*"):-s74_(X,"f") .
s68_(X,"f");s70_(X,"f");s72_(X,"f");s74_(X,"f"):-s67_(X,"f") .

s76_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s77_(X,"f"):-s76_(X,"t*") .
s77_(X,"t*"):-s76_(X,"f") .
_hasState_(X,@new(s77,X,_hasState,1..1),"t"):-choose(s77,X,_hasState,1) .
choose(s77,X,_hasState,1);choose(s77,X,_hasState,0):-s77_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s77_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s78_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s77_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s77_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s78_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s77_(X,"t*") .
s79_(X,"f"):-s78_(X,"t*") .
s79_(X,"t*"):-s78_(X,"f") .

s80_(X,"f"):-s79_(X,"t*") .
s80_(X,"t*"):-s79_(X,"f") .
s81_(X,"t*"):-s80_(X,"t*") .
s82_(X,"f"):-s81_(X,"t*") .
s82_(X,"t*"):-s81_(X,"f") .
s83_(X,"t*"):-s80_(X,"t*") .
s84_(X,"f"):-s83_(X,"t*") .
s84_(X,"t*"):-s83_(X,"f") .
s85_(X,"t*"):-s80_(X,"t*") .
s86_(X,"f"):-s85_(X,"t*") .
s86_(X,"t*"):-s85_(X,"f") .
s87_(X,"t*"):-s80_(X,"t*") .
s88_(X,"f"):-s87_(X,"t*") .
s88_(X,"t*"):-s87_(X,"f") .
s81_(X,"f");s83_(X,"f");s85_(X,"f");s87_(X,"f"):-s80_(X,"f") .

s65_(X,"f");s76_(X,"f"):-node1hm6rtb6tx214_(X,"f") .
s89_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx214_(X,"t*"):-s89_(X,"t*") .
node1hm6rtb6tx214_(X,"f"):-s89_(X,"f") .

s90_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
choose(s90,X,_hasState,0):-s90_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s90_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s91_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s90_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s90_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
0 {s91_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s90_(X,"t*") .

s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .
s93_(X,"t*"):-s92_(X,"t*") .
s94_(X,"f"):-s93_(X,"t*") .
s94_(X,"t*"):-s93_(X,"f") .
s95_(X,"t*"):-s92_(X,"t*") .
s96_(X,"f"):-s95_(X,"t*") .
s96_(X,"t*"):-s95_(X,"f") .
s97_(X,"t*"):-s92_(X,"t*") .
s98_(X,"f"):-s97_(X,"t*") .
s98_(X,"t*"):-s97_(X,"f") .
s99_(X,"t*"):-s92_(X,"t*") .
s100_(X,"f"):-s99_(X,"t*") .
s100_(X,"t*"):-s99_(X,"f") .
s93_(X,"f");s95_(X,"f");s97_(X,"f");s99_(X,"f"):-s92_(X,"f") .

s101_(X,"t*"):-node1hm6rtb6tx214_(X,"t*") .
s102_(X,"f"):-s101_(X,"t*") .
s102_(X,"t*"):-s101_(X,"f") .
_hasState_(X,@new(s102,X,_hasState,1..1),"t"):-choose(s102,X,_hasState,1) .
choose(s102,X,_hasState,1);choose(s102,X,_hasState,0):-s102_(X,"t*") .
0 {_hasState_(X,Y,"t"):const(Y)} 4:-s102_(X,"t*") .
(C-0) {_hasState_(X,Y,"f"):_hasState_(X,Y,"t*");s103_(Y,"f"):_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f")} (C-0):-s102_(X,"f"),#count {Y:_hasState_(X,Y,"t*")}=C,C>0 .
_hasState_(X,Y,"f"):-s102_(X,"f"),_hasState_(X,Y,"t*"),_hasState_(X,Y,"f") .
1 {s103_(Y,"t*"):_hasState_(X,Y,"t**")} 4:-s102_(X,"t*") .
s104_(X,"f"):-s103_(X,"t*") .
s104_(X,"t*"):-s103_(X,"f") .

s105_(X,"f"):-s104_(X,"t*") .
s105_(X,"t*"):-s104_(X,"f") .
s106_(X,"t*"):-s105_(X,"t*") .
s107_(X,"f"):-s106_(X,"t*") .
s107_(X,"t*"):-s106_(X,"f") .
s108_(X,"t*"):-s105_(X,"t*") .
s109_(X,"f"):-s108_(X,"t*") .
s109_(X,"t*"):-s108_(X,"f") .
s110_(X,"t*"):-s105_(X,"t*") .
s111_(X,"f"):-s110_(X,"t*") .
s111_(X,"t*"):-s110_(X,"f") .
s112_(X,"t*"):-s105_(X,"t*") .
s113_(X,"f"):-s112_(X,"t*") .
s113_(X,"t*"):-s112_(X,"f") .
s106_(X,"f");s108_(X,"f");s110_(X,"f");s112_(X,"f"):-s105_(X,"f") .

s90_(X,"f");s101_(X,"f"):-node1hm6rtb6tx214_(X,"f") .
s114_(X,"t*"):-_obligationShape_(X,"t*") .
node1hm6rtb6tx219_(X,"t*"):-s114_(X,"t*") .
node1hm6rtb6tx219_(X,"f"):-s114_(X,"f") .

s115_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
choose(s115,X,_hasEndDate,0):-s115_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s115_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s116_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s115_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s115_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
0 {s116_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s115_(X,"t*") .


s117_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
s118_(X,"f"):-s117_(X,"t*") .
s118_(X,"t*"):-s117_(X,"f") .
_hasEndDate_(X,@new(s118,X,_hasEndDate,1..1),"t"):-choose(s118,X,_hasEndDate,1) .
_hasEndDate_(X,@new(s118,X,_hasEndDate,1..2),"t"):-choose(s118,X,_hasEndDate,2) .
choose(s118,X,_hasEndDate,2);choose(s118,X,_hasEndDate,1);choose(s118,X,_hasEndDate,0):-s118_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s118_(X,"t*") .
(C-1) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s119_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-1):-s118_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>1 .
_hasEndDate_(X,Y,"f"):-s118_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
2 {s119_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s118_(X,"t*") .


s120_(X,"t*"):-node1hm6rtb6tx219_(X,"t*") .
s121_(X,"f"):-s120_(X,"t*") .
s121_(X,"t*"):-s120_(X,"f") .
_hasEndDate_(X,@new(s121,X,_hasEndDate,1..1),"t"):-choose(s121,X,_hasEndDate,1) .
choose(s121,X,_hasEndDate,1);choose(s121,X,_hasEndDate,0):-s121_(X,"t*") .
0 {_hasEndDate_(X,Y,"t"):const(Y)} 4:-s121_(X,"t*") .
(C-0) {_hasEndDate_(X,Y,"f"):_hasEndDate_(X,Y,"t*");s122_(Y,"f"):_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f")} (C-0):-s121_(X,"f"),#count {Y:_hasEndDate_(X,Y,"t*")}=C,C>0 .
_hasEndDate_(X,Y,"f"):-s121_(X,"f"),_hasEndDate_(X,Y,"t*"),_hasEndDate_(X,Y,"f") .
1 {s122_(Y,"t*"):_hasEndDate_(X,Y,"t**")} 4:-s121_(X,"t*") .
s123_(X,"f"):-s122_(X,"t*") .
s123_(X,"t*"):-s122_(X,"f") .


s115_(X,"f");s117_(X,"f");s120_(X,"f"):-node1hm6rtb6tx219_(X,"f") .
s6_(X,"f");s13_(X,"f");s20_(X,"f");s27_(X,"f");s37_(X,"f");s47_(X,"f");s54_(X,"f");s64_(X,"f");s89_(X,"f");s114_(X,"f"):-_obligationShape_(X,"f") .

% Interpretation Rules

_hasObligations_(X,Y,"t**"):-_hasObligations_(X,Y,"t*"),not _hasObligations_(X,Y,"f") .
_hasEndDate_(X,Y,"t**"):-_hasEndDate_(X,Y,"t*"),not _hasEndDate_(X,Y,"f") .
node1hm6rtb6tx220_st_(X,X1,"t**"):-node1hm6rtb6tx220_st_(X,X1,"t*"),not node1hm6rtb6tx220_st_(X,X1,"f"),_hasObligations_(X,X0,"t**"),_hasEndDate_(X0,X1,"t**") .
_hasState_(X,Y,"t**"):-_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f") .

% Program Constraints

:-_hasObligations_(X,Y,"t"),_hasObligations_(X,Y,"f") .
:-_hasEndDate_(X,Y,"t"),_hasEndDate_(X,Y,"f") .
:-node1hm6rtb6tx220_st_(X,Y,"t"),node1hm6rtb6tx220_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .
:-_hasState_(X,Y,"t"),_hasState_(X,Y,"f") .
:-s15_(X,"f") .
:-s19_(X,"f") .
:-s22_(X,"f") .
:-s26_(X,"f") .
:-s29_(X,"f") .
:-s32_(X,"f") .
:-s36_(X,"f") .
:-s40_(X,"f") .
:-s42_(X,"f") .
:-s46_(X,"f") .
:-s49_(X,"f") .
:-s53_(X,"f") .
:-s57_(X,"f") .
:-s59_(X,"f") .
:-s63_(X,"f") .
:-s69_(X,"t*"),X!="_createdState" .
:-s69_(X,"f"),X="_createdState" .
:-s71_(X,"t*"),X!="_pendingState" .
:-s71_(X,"f"),X="_pendingState" .
:-s73_(X,"t*"),X!="_fulfilledState" .
:-s73_(X,"f"),X="_fulfilledState" .
:-s75_(X,"t*"),X!="_violatedState" .
:-s75_(X,"f"),X="_violatedState" .
:-s82_(X,"t*"),X!="_createdState" .
:-s82_(X,"f"),X="_createdState" .
:-s84_(X,"t*"),X!="_pendingState" .
:-s84_(X,"f"),X="_pendingState" .
:-s86_(X,"t*"),X!="_fulfilledState" .
:-s86_(X,"f"),X="_fulfilledState" .
:-s88_(X,"t*"),X!="_violatedState" .
:-s88_(X,"f"),X="_violatedState" .
:-s94_(X,"t*"),X!="_createdState" .
:-s94_(X,"f"),X="_createdState" .
:-s96_(X,"t*"),X!="_pendingState" .
:-s96_(X,"f"),X="_pendingState" .
:-s98_(X,"t*"),X!="_fulfilledState" .
:-s98_(X,"f"),X="_fulfilledState" .
:-s100_(X,"t*"),X!="_violatedState" .
:-s100_(X,"f"),X="_violatedState" .
:-s107_(X,"t*"),X!="_createdState" .
:-s107_(X,"f"),X="_createdState" .
:-s109_(X,"t*"),X!="_pendingState" .
:-s109_(X,"f"),X="_pendingState" .
:-s111_(X,"t*"),X!="_fulfilledState" .
:-s111_(X,"f"),X="_fulfilledState" .
:-s113_(X,"t*"),X!="_violatedState" .
:-s113_(X,"f"),X="_violatedState" .
:-s116_(X,"f") .
:-s119_(X,"f") .
:-s123_(X,"f") .

% Change Set Rules

add(_hasObligations(X,Y)):-_hasObligations_(X,Y,"t**"),not _hasObligations(X,Y) .
del(_hasObligations(X,Y)):-_hasObligations_(X,Y,"f"),_hasObligations(X,Y) .
add(_hasEndDate(X,Y)):-_hasEndDate_(X,Y,"t**"),not _hasEndDate(X,Y) .
del(_hasEndDate(X,Y)):-_hasEndDate_(X,Y,"f"),_hasEndDate(X,Y) .
#minimize { 1@1,X,Y: node1hm6rtb6tx220_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: _hasEndDate_(X,Y,"t"), const(Y) } .
add(_hasState(X,Y)):-_hasState_(X,Y,"t**"),not _hasState(X,Y) .
del(_hasState(X,Y)):-_hasState_(X,Y,"f"),_hasState(X,Y) .
#minimize { 1@1,X,Y: _hasState_(X,Y,"t"), const(Y) } .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

#maximize { 1@0,X,Y: del(_hasEndDate(X,Y)),_hasEndDate_(X,Z,"t**"),Y<Z } .

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
