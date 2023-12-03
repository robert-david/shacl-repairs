
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
_hasEndDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2023_09_07") .
xsd_dateTime("2023_09_07") .
_hasState("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_violatedState") .
dct_description("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .

% Shape Targets

targetNode("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractStatusShape) .
targetNode("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractViolationShape) .

% Constants

const("_violatedState") .
const("_statusFulfilled") .
const("_statusPending") .
const("_statusViolated") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_contractStatusShape_("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractStatusShape) .
_contractViolationShape_("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",_contractViolationShape) .

% Annotation Rules

_hasContractStatus_(X,Y,"t*"):-_hasContractStatus(X,Y) .
_hasContractStatus_(X,Y,"t*"):-_hasContractStatus_(X,Y,"t") .
_hasObligations_(X,Y,"t*"):-_hasObligations(X,Y) .
_hasObligations_(X,Y,"t*"):-_hasObligations_(X,Y,"t") .
_hasState_(X,Y,"t*"):-_hasState(X,Y) .
_hasState_(X,Y,"t*"):-_hasState_(X,Y,"t") .
node1hgobfebhx329_st_(X,X1,"t*"):-node1hgobfebhx329_(X,_),_hasObligations_(X,X0,"t*"),_hasState_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-_contractStatusShape_(X,"t*") .
node1hgobfebhx322_(X,"t*"):-s0_(X,"t*") .
node1hgobfebhx322_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for node1hgobfebhx322
s1_(X,"t*"):-node1hgobfebhx322_(X,"t*") .
choose(s1,X,_hasContractStatus,0):-s1_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s1_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s2_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s1_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
0 {s2_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s1_(X,"t*") .

s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
s6_(X,"t*"):-s3_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
s8_(X,"t*"):-s3_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
s4_(X,"f");s6_(X,"f");s8_(X,"f"):-s3_(X,"f") .

% universal for node1hgobfebhx322
s10_(X,"t*"):-node1hgobfebhx322_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_hasContractStatus_(X,@new(s11,X,_hasContractStatus,1..1),"t"):-choose(s11,X,_hasContractStatus,1) .
choose(s11,X,_hasContractStatus,1);choose(s11,X,_hasContractStatus,0):-s11_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s11_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s12_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s11_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
1 {s12_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
s15_(X,"t*"):-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
s17_(X,"t*"):-s14_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
s19_(X,"t*"):-s14_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
s15_(X,"f");s17_(X,"f");s19_(X,"f"):-s14_(X,"f") .

s1_(X,"f");s10_(X,"f"):-node1hgobfebhx322_(X,"f") .
s21_(X,"t*"):-_contractStatusShape_(X,"t*") .
node1hgobfebhx322_(X,"t*"):-s21_(X,"t*") .
node1hgobfebhx322_(X,"f"):-s21_(X,"f") .

s22_(X,"t*"):-node1hgobfebhx322_(X,"t*") .
choose(s22,X,_hasContractStatus,0):-s22_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s22_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s23_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s22_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
0 {s23_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s22_(X,"t*") .


% sh:maxCount 1 for node1hgobfebhx322
s24_(X,"t*"):-node1hgobfebhx322_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
_hasContractStatus_(X,@new(s25,X,_hasContractStatus,1..1),"t"):-choose(s25,X,_hasContractStatus,1) .
_hasContractStatus_(X,@new(s25,X,_hasContractStatus,1..2),"t"):-choose(s25,X,_hasContractStatus,2) .
choose(s25,X,_hasContractStatus,2);choose(s25,X,_hasContractStatus,1);choose(s25,X,_hasContractStatus,0):-s25_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s25_(X,"t*") .
(C-1) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s26_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-1):-s25_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>1 .
_hasContractStatus_(X,Y,"f"):-s25_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
2 {s26_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s25_(X,"t*") .


s27_(X,"t*"):-node1hgobfebhx322_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
_hasContractStatus_(X,@new(s28,X,_hasContractStatus,1..1),"t"):-choose(s28,X,_hasContractStatus,1) .
choose(s28,X,_hasContractStatus,1);choose(s28,X,_hasContractStatus,0):-s28_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s28_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s29_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s28_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
1 {s29_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .


s22_(X,"f");s24_(X,"f");s27_(X,"f"):-node1hgobfebhx322_(X,"f") .
s31_(X,"t*"):-_contractStatusShape_(X,"t*") .
node1hgobfebhx322_(X,"t*"):-s31_(X,"t*") .
node1hgobfebhx322_(X,"f"):-s31_(X,"f") .

% sh:minCount 1 for node1hgobfebhx322
s32_(X,"t*"):-node1hgobfebhx322_(X,"t*") .
_hasContractStatus_(X,@new(s32,X,_hasContractStatus,1..1),"t"):-choose(s32,X,_hasContractStatus,1) .
choose(s32,X,_hasContractStatus,1);choose(s32,X,_hasContractStatus,0):-s32_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s32_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s33_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s32_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s32_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
1 {s33_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s32_(X,"t*") .


s34_(X,"t*"):-node1hgobfebhx322_(X,"t*") .
s35_(X,"f"):-s34_(X,"t*") .
s35_(X,"t*"):-s34_(X,"f") .
_hasContractStatus_(X,@new(s35,X,_hasContractStatus,1..1),"t"):-choose(s35,X,_hasContractStatus,1) .
choose(s35,X,_hasContractStatus,1);choose(s35,X,_hasContractStatus,0):-s35_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s35_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s36_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s35_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
1 {s36_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s35_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .


s32_(X,"f");s34_(X,"f"):-node1hgobfebhx322_(X,"f") .
s0_(X,"f");s21_(X,"f");s31_(X,"f"):-_contractStatusShape_(X,"f") .
s38_(X,"f"):-_contractViolationShape_(X,"f") .
node1hgobfebhx334_(X,"t*"):-s38_(X,"t*") .
node1hgobfebhx334_(X,"f"):-s38_(X,"f") .

s39_(X,"t*"):-node1hgobfebhx334_(X,"t*") .
_hasContractStatus_(X,@new(s39,X,_hasContractStatus,1..1),"t"):-choose(s39,X,_hasContractStatus,1) .
choose(s39,X,_hasContractStatus,1);choose(s39,X,_hasContractStatus,0):-s39_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s39_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s40_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s39_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
1 {s40_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s39_(X,"t*") .


% sh:minCount 0 for node1hgobfebhx334
s41_(X,"t*"):-node1hgobfebhx334_(X,"t*") .
choose(s41,X,_hasContractStatus,0):-s41_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s41_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s42_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s41_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
0 {s42_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s41_(X,"t*") .


% universal for node1hgobfebhx334
s43_(X,"t*"):-node1hgobfebhx334_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
_hasContractStatus_(X,@new(s44,X,_hasContractStatus,1..1),"t"):-choose(s44,X,_hasContractStatus,1) .
choose(s44,X,_hasContractStatus,1);choose(s44,X,_hasContractStatus,0):-s44_(X,"t*") .
0 {_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s44_(X,"t*") .
(C-0) {_hasContractStatus_(X,Y,"f"):_hasContractStatus_(X,Y,"t*");s45_(Y,"f"):_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f")} (C-0):-s44_(X,"f"),#count {Y:_hasContractStatus_(X,Y,"t*")}=C,C>0 .
_hasContractStatus_(X,Y,"f"):-s44_(X,"f"),_hasContractStatus_(X,Y,"t*"),_hasContractStatus_(X,Y,"f") .
1 {s45_(Y,"t*"):_hasContractStatus_(X,Y,"t**")} 4:-s44_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .


s39_(X,"f");s41_(X,"f");s43_(X,"f"):-node1hgobfebhx334_(X,"f") .
s47_(X,"f"):-_contractViolationShape_(X,"f") .
node1hgobfebhx328_(X,"f"):-s47_(X,"t*") .
node1hgobfebhx328_(X,"t*"):-s47_(X,"f") .
node1hgobfebhx329_(X,"t*"):-node1hgobfebhx328_(X,"t*") .
node1hgobfebhx329_(X,"f"):-node1hgobfebhx328_(X,"f") .


s48_(X,"t*"):-node1hgobfebhx329_(X,"t*") .
node1hgobfebhx329_st_(X,@new(s48,X,node1hgobfebhx329_st,1..1),"t"):-choose(s48,X,node1hgobfebhx329_st,1) .
choose(s48,X,node1hgobfebhx329_st,1);choose(s48,X,node1hgobfebhx329_st,0):-s48_(X,"t*") .
0 {node1hgobfebhx329_st_(X,Y,"t"):const(Y)} 4:-s48_(X,"t*") .
choose(node1hgobfebhx329_st,X,_hasObligations,1);choose(node1hgobfebhx329_st,X,_hasObligations,0):-node1hgobfebhx329_st_(X,Y,"t") .
_hasObligations_(X,@new(node1hgobfebhx329_st,X,_hasObligations,1),"t"):-choose(node1hgobfebhx329_st,X,_hasObligations,1),node1hgobfebhx329_st_(X,Y,"t") .
0 {_hasState_(X0,Y,"t")} 1:-_hasObligations_(X,X0,"t**"),node1hgobfebhx329_st_(X,Y,"t") .
0 {_hasState_(X0,Y,"t"):const(Y)} 4:-_hasObligations_(X,X0,"t**"),node1hgobfebhx329_st_(X,Y,"t") .
(C-0) {node1hgobfebhx329_st_(X,Y,"f"):node1hgobfebhx329_st_(X,Y,"t*");s49_(Y,"f"):node1hgobfebhx329_st_(X,Y,"t*"),not node1hgobfebhx329_st_(X,Y,"f")} (C-0):-s48_(X,"f"),#count {Y:node1hgobfebhx329_st_(X,Y,"t*")}=C,C>0 .
_hasObligations_(X,X0,"f");_hasState_(X0,X1,"f"):-s48_(X,"f"),_hasObligations_(X,X0,"t*"),_hasState_(X0,X1,"t*"),node1hgobfebhx329_st_(X,X1,"f") .
1 {s49_(Y,"t*"):node1hgobfebhx329_st_(X,Y,"t**")} 4:-s48_(X,"t*") .


% sh:minCount 0 for node1hgobfebhx329
s50_(X,"t*"):-node1hgobfebhx329_(X,"t*") .
choose(s50,X,node1hgobfebhx329_st,0):-s50_(X,"t*") .
0 {node1hgobfebhx329_st_(X,Y,"t"):const(Y)} 4:-s50_(X,"t*") .
(C-0) {node1hgobfebhx329_st_(X,Y,"f"):node1hgobfebhx329_st_(X,Y,"t*");s51_(Y,"f"):node1hgobfebhx329_st_(X,Y,"t*"),not node1hgobfebhx329_st_(X,Y,"f")} (C-0):-s50_(X,"f"),#count {Y:node1hgobfebhx329_st_(X,Y,"t*")}=C,C>0 .
_hasObligations_(X,X0,"f");_hasState_(X0,X1,"f"):-s50_(X,"f"),_hasObligations_(X,X0,"t*"),_hasState_(X0,X1,"t*"),node1hgobfebhx329_st_(X,X1,"f") .
0 {s51_(Y,"t*"):node1hgobfebhx329_st_(X,Y,"t**")} 4:-s50_(X,"t*") .


% universal for node1hgobfebhx329
s52_(X,"t*"):-node1hgobfebhx329_(X,"t*") .
s53_(X,"f"):-s52_(X,"t*") .
s53_(X,"t*"):-s52_(X,"f") .
node1hgobfebhx329_st_(X,@new(s53,X,node1hgobfebhx329_st,1..1),"t"):-choose(s53,X,node1hgobfebhx329_st,1) .
choose(s53,X,node1hgobfebhx329_st,1);choose(s53,X,node1hgobfebhx329_st,0):-s53_(X,"t*") .
0 {node1hgobfebhx329_st_(X,Y,"t"):const(Y)} 4:-s53_(X,"t*") .
(C-0) {node1hgobfebhx329_st_(X,Y,"f"):node1hgobfebhx329_st_(X,Y,"t*");s54_(Y,"f"):node1hgobfebhx329_st_(X,Y,"t*"),not node1hgobfebhx329_st_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:node1hgobfebhx329_st_(X,Y,"t*")}=C,C>0 .
_hasObligations_(X,X0,"f");_hasState_(X0,X1,"f"):-s53_(X,"f"),_hasObligations_(X,X0,"t*"),_hasState_(X0,X1,"t*"),node1hgobfebhx329_st_(X,X1,"f") .
1 {s54_(Y,"t*"):node1hgobfebhx329_st_(X,Y,"t**")} 4:-s53_(X,"t*") .
s55_(X,"f"):-s54_(X,"t*") .
s55_(X,"t*"):-s54_(X,"f") .


s48_(X,"f");s50_(X,"f");s52_(X,"f"):-node1hgobfebhx329_(X,"f") .
s38_(X,"t*");s47_(X,"t*"):-_contractViolationShape_(X,"t*") .

% Interpretation Rules

_hasContractStatus_(X,Y,"t**"):-_hasContractStatus_(X,Y,"t*"),not _hasContractStatus_(X,Y,"f") .
_hasObligations_(X,Y,"t**"):-_hasObligations_(X,Y,"t*"),not _hasObligations_(X,Y,"f") .
_hasState_(X,Y,"t**"):-_hasState_(X,Y,"t*"),not _hasState_(X,Y,"f") .
node1hgobfebhx329_st_(X,X1,"t**"):-node1hgobfebhx329_st_(X,X1,"t*"),not node1hgobfebhx329_st_(X,X1,"f"),_hasObligations_(X,X0,"t**"),_hasState_(X0,X1,"t**") .

% Program Constraints

:-_hasContractStatus_(X,Y,"t"),_hasContractStatus_(X,Y,"f") .
:-s5_(X,"t*"),X!="_statusPending" .
:-s5_(X,"f"),X="_statusPending" .
:-s7_(X,"t*"),X!="_statusFulfilled" .
:-s7_(X,"f"),X="_statusFulfilled" .
:-s9_(X,"t*"),X!="_statusViolated" .
:-s9_(X,"f"),X="_statusViolated" .
:-s16_(X,"t*"),X!="_statusPending" .
:-s16_(X,"f"),X="_statusPending" .
:-s18_(X,"t*"),X!="_statusFulfilled" .
:-s18_(X,"f"),X="_statusFulfilled" .
:-s20_(X,"t*"),X!="_statusViolated" .
:-s20_(X,"f"),X="_statusViolated" .
:-s23_(X,"f") .
:-s26_(X,"f") .
:-s30_(X,"f") .
:-s33_(X,"f") .
:-s37_(X,"f") .
:-s40_(X,"t*"),X!="_statusViolated" .
:-s40_(X,"f"),X="_statusViolated" .
:-s42_(X,"f") .
:-s46_(X,"f") .
:-_hasObligations_(X,Y,"t"),_hasObligations_(X,Y,"f") .
:-_hasState_(X,Y,"t"),_hasState_(X,Y,"f") .
:-node1hgobfebhx329_st_(X,Y,"t"),node1hgobfebhx329_st_(X,Y,"f") .
:-s49_(X,"t*"),X!="_violatedState" .
:-s49_(X,"f"),X="_violatedState" .
:-s51_(X,"f") .
:-s55_(X,"f") .

% Change Set Rules

add(_hasContractStatus(X,Y)):-_hasContractStatus_(X,Y,"t**"),not _hasContractStatus(X,Y) .
del(_hasContractStatus(X,Y)):-_hasContractStatus_(X,Y,"f"),_hasContractStatus(X,Y) .
#minimize { 1@1,X,Y: _hasContractStatus_(X,Y,"t"), const(Y) } .
add(_hasObligations(X,Y)):-_hasObligations_(X,Y,"t**"),not _hasObligations(X,Y) .
del(_hasObligations(X,Y)):-_hasObligations_(X,Y,"f"),_hasObligations(X,Y) .
add(_hasState(X,Y)):-_hasState_(X,Y,"t**"),not _hasState(X,Y) .
del(_hasState(X,Y)):-_hasState_(X,Y,"f"),_hasState(X,Y) .
#minimize { 1@1,X,Y: node1hgobfebhx329_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: _hasState_(X,Y,"t"), const(Y) } .
% Get all optimal models: --opt-mode=optN -n 100 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

:-del(_hasState(X,"_violatedState")) .
:-del(_hasObligations(X,_)) .

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
