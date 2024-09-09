
% Graph Data

fibo_fnd_agr_ctr_Contract("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29") .
d_contractType("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_Written") .
d_forPurpose("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","data sharing between Tim and Alice") .
xsd_string("data sharing between Tim and Alice") .
d_hasContractCategory("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_categoryBusinessToBusiness") .
d_hasContractStatus("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_statusFulfilled") .
d_hasEndDate("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
xsd_dateTime("2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasEffectiveDate("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasExecutionDate("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
d_hasObligations("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .
d_Obligation("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .
d_contractorID("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
xsd_string("_c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
d_fulfillmentDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .
xsd_dateTime("2022_09_07") .
d_hasEndDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2021_09_07") .
xsd_dateTime("2021_09_07") .
d_hasEndDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2023_09_07") .
xsd_dateTime("2023_09_07") .
d_hasState("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","d_ViolatedState") .
dct_description("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .
rdfs_Datatype("xsd_byte") .
rdfs_Datatype("xsd_date") .
rdfs_Datatype("xsd_decimal") .
rdfs_Datatype("xsd_double") .
rdfs_Datatype("xsd_float") .
rdfs_Datatype("xsd_int") .
rdfs_Datatype("xsd_integer") .
rdfs_Datatype("xsd_language") .
rdfs_Datatype("xsd_long") .
rdfs_Datatype("xsd_negativeInteger") .
rdfs_Datatype("xsd_nonNegativeInteger") .
rdfs_Datatype("xsd_nonPositiveInteger") .
rdfs_Datatype("xsd_positiveInteger") .
rdfs_Datatype("xsd_short") .
rdfs_Datatype("xsd_string") .
rdfs_Datatype("xsd_unsignedByte") .
rdfs_Datatype("xsd_unsignedInt") .
rdfs_Datatype("xsd_unsignedLong") .
rdfs_Datatype("xsd_unsignedShort") .
rdfs_Datatype("http://www.w3.org/2002/07/owl#rational") .
rdfs_Datatype("http://www.w3.org/2002/07/owl#real") .

% Shape Targets

targetNode("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",d_ObligationShape) .
targetNode("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_EndDateConsistencyShape) .

% Constants

const("d_PendingState") .
const("d_ViolatedState") .
const("d_CreatedState") .
const("d_FulfilledState") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_ObligationShape_("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","t*"):-actualTarget("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",d_ObligationShape) .
d_EndDateConsistencyShape_("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_EndDateConsistencyShape) .

% Annotation Rules

d_hasObligations_(X,Y,"t*"):-d_hasObligations(X,Y) .
d_hasObligations_(X,Y,"t*"):-d_hasObligations_(X,Y,"t") .
d_hasEndDate_(X,Y,"t*"):-d_hasEndDate(X,Y) .
d_hasEndDate_(X,Y,"t*"):-d_hasEndDate_(X,Y,"t") .
bnode_node1i7lkib3nx171_st_(X,X1,"t*"):-bnode_node1i7lkib3nx171_(X,_),d_hasObligations_(X,X0,"t*"),d_hasEndDate_(X0,X1,"t*") .
d_hasState_(X,Y,"t*"):-d_hasState(X,Y) .
d_hasState_(X,Y,"t*"):-d_hasState_(X,Y,"t") .

% Repair Rules

bnode_node1i7lkib3nx171_(X,"t*"):-d_EndDateConsistencyShape_(X,"t*") .
bnode_node1i7lkib3nx171_(X,"f"):-d_EndDateConsistencyShape_(X,"f") .


% sh:minCount 0 for bnode_node1i7lkib3nx171
s0_(X,"t*"):-bnode_node1i7lkib3nx171_(X,"t*") .
choose(s0,X,bnode_node1i7lkib3nx171_st,0):-s0_(X,"t*") .
0 {bnode_node1i7lkib3nx171_st_(X,Y,"t"):const(Y)} 4:-s0_(X,"t*") .
choose(bnode_node1i7lkib3nx171_st,X,d_hasObligations,1);choose(bnode_node1i7lkib3nx171_st,X,d_hasObligations,0):-bnode_node1i7lkib3nx171_st_(X,Y,"t") .
d_hasObligations_(X,@new(bnode_node1i7lkib3nx171_st,X,d_hasObligations,1),"t"):-choose(bnode_node1i7lkib3nx171_st,X,d_hasObligations,1),bnode_node1i7lkib3nx171_st_(X,Y,"t") .
0 {d_hasEndDate_(X0,Y,"t"):const(Y)} 4:-d_hasObligations_(X,X0,"t**"),bnode_node1i7lkib3nx171_st_(X,Y,"t") .
(C-0) {bnode_node1i7lkib3nx171_st_(X,Y,"f"):bnode_node1i7lkib3nx171_st_(X,Y,"t*");s1_(Y,"f"):bnode_node1i7lkib3nx171_st_(X,Y,"t*"),not bnode_node1i7lkib3nx171_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_node1i7lkib3nx171_st_(X,Y,"t*")}=C,C>0 .
d_hasObligations_(X,X0,"f");d_hasEndDate_(X0,X1,"f"):-s0_(X,"f"),d_hasObligations_(X,X0,"t*"),d_hasEndDate_(X0,X1,"t*"),bnode_node1i7lkib3nx171_st_(X,X1,"f") .
0 {s1_(Y,"t*"):bnode_node1i7lkib3nx171_st_(X,Y,"t**")} 4:-s0_(X,"t*") .


bnode_node1i7lkib3nx171_st_(X,Y,"f");d_hasEndDate_(X,Z,"f"):-bnode_node1i7lkib3nx171_(X,"t*"),bnode_node1i7lkib3nx171_st_(X,Y,"t*"),d_hasEndDate_(X,Z,"t*"),Y>Z .
bnode_node1i7lkib3nx171_st_(X,Y,"f");d_hasEndDate_(X,Z,"f"):-bnode_node1i7lkib3nx171_(X,"f"),bnode_node1i7lkib3nx171_st_(X,Y,"t*"),d_hasEndDate_(X,Z,"t*"),Y<=Z .

% universal for bnode_node1i7lkib3nx171
s2_(X,"t*"):-bnode_node1i7lkib3nx171_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
bnode_node1i7lkib3nx171_st_(X,@new(s3,X,bnode_node1i7lkib3nx171_st,1..1),"t"):-choose(s3,X,bnode_node1i7lkib3nx171_st,1) .
choose(s3,X,bnode_node1i7lkib3nx171_st,1);choose(s3,X,bnode_node1i7lkib3nx171_st,0):-s3_(X,"t*") .
0 {bnode_node1i7lkib3nx171_st_(X,Y,"t"):const(Y)} 4:-s3_(X,"t*") .
0 {d_hasEndDate_(X0,Y,"t")} 1:-d_hasObligations_(X,X0,"t**"),bnode_node1i7lkib3nx171_st_(X,Y,"t") .
(C-0) {bnode_node1i7lkib3nx171_st_(X,Y,"f"):bnode_node1i7lkib3nx171_st_(X,Y,"t*");s4_(Y,"f"):bnode_node1i7lkib3nx171_st_(X,Y,"t*"),not bnode_node1i7lkib3nx171_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:bnode_node1i7lkib3nx171_st_(X,Y,"t*")}=C,C>0 .
d_hasObligations_(X,X0,"f");d_hasEndDate_(X0,X1,"f"):-s3_(X,"f"),d_hasObligations_(X,X0,"t*"),d_hasEndDate_(X0,X1,"t*"),bnode_node1i7lkib3nx171_st_(X,X1,"f") .
1 {s4_(Y,"t*"):bnode_node1i7lkib3nx171_st_(X,Y,"t**")} 4:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-bnode_node1i7lkib3nx171_(X,"f") .
s6_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"t*"):-s6_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"f"):-s6_(X,"f") .

% sh:minCount 1 for bnode_node1i7lkib3nx165
s7_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
d_hasState_(X,@new(s7,X,d_hasState,1..1),"t"):-choose(s7,X,d_hasState,1) .
choose(s7,X,d_hasState,1);choose(s7,X,d_hasState,0):-s7_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s7_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s8_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s7_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s8_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s7_(X,"t*") .


% universal for bnode_node1i7lkib3nx165
s9_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
d_hasState_(X,@new(s10,X,d_hasState,1..1),"t"):-choose(s10,X,d_hasState,1) .
choose(s10,X,d_hasState,1);choose(s10,X,d_hasState,0):-s10_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s10_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s11_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s10_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s11_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s7_(X,"f");s9_(X,"f"):-bnode_node1i7lkib3nx165_(X,"f") .
s13_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"t*"):-s13_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"f"):-s13_(X,"f") .

% sh:maxCount 1 for bnode_node1i7lkib3nx165
s14_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
d_hasState_(X,@new(s15,X,d_hasState,1..1),"t"):-choose(s15,X,d_hasState,1) .
d_hasState_(X,@new(s15,X,d_hasState,1..2),"t"):-choose(s15,X,d_hasState,2) .
choose(s15,X,d_hasState,2);choose(s15,X,d_hasState,1);choose(s15,X,d_hasState,0):-s15_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s15_(X,"t*") .
(C-1) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s16_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-1):-s15_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>1 .
d_hasState_(X,Y,"f"):-s15_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
2 {s16_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s15_(X,"t*") .


% sh:minCount 0 for bnode_node1i7lkib3nx165
s17_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
choose(s17,X,d_hasState,0):-s17_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s17_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s18_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s17_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s18_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s17_(X,"t*") .


s19_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
d_hasState_(X,@new(s20,X,d_hasState,1..1),"t"):-choose(s20,X,d_hasState,1) .
choose(s20,X,d_hasState,1);choose(s20,X,d_hasState,0):-s20_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s20_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s21_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s20_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s21_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .


s14_(X,"f");s17_(X,"f");s19_(X,"f"):-bnode_node1i7lkib3nx165_(X,"f") .
s23_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"t*"):-s23_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"f"):-s23_(X,"f") .

% sh:minCount 1 for bnode_node1i7lkib3nx170
s24_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
d_hasEndDate_(X,@new(s24,X,d_hasEndDate,1..1),"t"):-choose(s24,X,d_hasEndDate,1) .
choose(s24,X,d_hasEndDate,1);choose(s24,X,d_hasEndDate,0):-s24_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s24_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s25_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s24_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s24_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s25_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s24_(X,"t*") .


% universal for bnode_node1i7lkib3nx170
s26_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .
d_hasEndDate_(X,@new(s27,X,d_hasEndDate,1..1),"t"):-choose(s27,X,d_hasEndDate,1) .
choose(s27,X,d_hasEndDate,1);choose(s27,X,d_hasEndDate,0):-s27_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s27_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s28_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s27_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s28_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s27_(X,"t*") .
s29_(X,"f"):-s28_(X,"t*") .
s29_(X,"t*"):-s28_(X,"f") .


s24_(X,"f");s26_(X,"f"):-bnode_node1i7lkib3nx170_(X,"f") .
s30_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"t*"):-s30_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"f"):-s30_(X,"f") .

% sh:minCount 0 for bnode_node1i7lkib3nx170
s31_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
choose(s31,X,d_hasEndDate,0):-s31_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s31_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s32_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s31_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
0 {s32_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s31_(X,"t*") .


% sh:maxCount 1 for bnode_node1i7lkib3nx170
s33_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
s34_(X,"f"):-s33_(X,"t*") .
s34_(X,"t*"):-s33_(X,"f") .
d_hasEndDate_(X,@new(s34,X,d_hasEndDate,1..1),"t"):-choose(s34,X,d_hasEndDate,1) .
d_hasEndDate_(X,@new(s34,X,d_hasEndDate,1..2),"t"):-choose(s34,X,d_hasEndDate,2) .
choose(s34,X,d_hasEndDate,2);choose(s34,X,d_hasEndDate,1);choose(s34,X,d_hasEndDate,0):-s34_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s34_(X,"t*") .
(C-1) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s35_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-1):-s34_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>1 .
d_hasEndDate_(X,Y,"f"):-s34_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
2 {s35_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s34_(X,"t*") .


s36_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .
d_hasEndDate_(X,@new(s37,X,d_hasEndDate,1..1),"t"):-choose(s37,X,d_hasEndDate,1) .
choose(s37,X,d_hasEndDate,1);choose(s37,X,d_hasEndDate,0):-s37_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s37_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s38_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s37_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s38_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s37_(X,"t*") .
s39_(X,"f"):-s38_(X,"t*") .
s39_(X,"t*"):-s38_(X,"f") .


s31_(X,"f");s33_(X,"f");s36_(X,"f"):-bnode_node1i7lkib3nx170_(X,"f") .
s40_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"t*"):-s40_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"f"):-s40_(X,"f") .

s41_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
d_hasState_(X,@new(s41,X,d_hasState,1..1),"t"):-choose(s41,X,d_hasState,1) .
choose(s41,X,d_hasState,1);choose(s41,X,d_hasState,0):-s41_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s41_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s42_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s41_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s42_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s41_(X,"t*") .


s43_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
d_hasState_(X,@new(s44,X,d_hasState,1..1),"t"):-choose(s44,X,d_hasState,1) .
choose(s44,X,d_hasState,1);choose(s44,X,d_hasState,0):-s44_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s44_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s45_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s44_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s44_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s45_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s44_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .


s41_(X,"f");s43_(X,"f"):-bnode_node1i7lkib3nx165_(X,"f") .
s47_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"t*"):-s47_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"f"):-s47_(X,"f") .

s48_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s49_(X,"f"):-s48_(X,"t*") .
s49_(X,"t*"):-s48_(X,"f") .
d_hasState_(X,@new(s49,X,d_hasState,1..1),"t"):-choose(s49,X,d_hasState,1) .
d_hasState_(X,@new(s49,X,d_hasState,1..2),"t"):-choose(s49,X,d_hasState,2) .
choose(s49,X,d_hasState,2);choose(s49,X,d_hasState,1);choose(s49,X,d_hasState,0):-s49_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s49_(X,"t*") .
(C-1) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s50_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-1):-s49_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>1 .
d_hasState_(X,Y,"f"):-s49_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
2 {s50_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s49_(X,"t*") .


s51_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
choose(s51,X,d_hasState,0):-s51_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s51_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s52_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s51_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s51_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s52_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s51_(X,"t*") .


s53_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s54_(X,"f"):-s53_(X,"t*") .
s54_(X,"t*"):-s53_(X,"f") .
d_hasState_(X,@new(s54,X,d_hasState,1..1),"t"):-choose(s54,X,d_hasState,1) .
choose(s54,X,d_hasState,1);choose(s54,X,d_hasState,0):-s54_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s54_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s55_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s54_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s54_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s55_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s54_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .


s48_(X,"f");s51_(X,"f");s53_(X,"f"):-bnode_node1i7lkib3nx165_(X,"f") .
s57_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"t*"):-s57_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"f"):-s57_(X,"f") .

s58_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
d_hasEndDate_(X,@new(s58,X,d_hasEndDate,1..1),"t"):-choose(s58,X,d_hasEndDate,1) .
choose(s58,X,d_hasEndDate,1);choose(s58,X,d_hasEndDate,0):-s58_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s58_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s59_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s58_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s58_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s59_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s58_(X,"t*") .


s60_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
s61_(X,"f"):-s60_(X,"t*") .
s61_(X,"t*"):-s60_(X,"f") .
d_hasEndDate_(X,@new(s61,X,d_hasEndDate,1..1),"t"):-choose(s61,X,d_hasEndDate,1) .
choose(s61,X,d_hasEndDate,1);choose(s61,X,d_hasEndDate,0):-s61_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s61_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s62_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s61_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s61_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s62_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s61_(X,"t*") .
s63_(X,"f"):-s62_(X,"t*") .
s63_(X,"t*"):-s62_(X,"f") .


s58_(X,"f");s60_(X,"f"):-bnode_node1i7lkib3nx170_(X,"f") .
s64_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"t*"):-s64_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"f"):-s64_(X,"f") .

s65_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
choose(s65,X,d_hasState,0):-s65_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s65_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s66_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s65_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s65_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s66_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s65_(X,"t*") .

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

s76_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s77_(X,"f"):-s76_(X,"t*") .
s77_(X,"t*"):-s76_(X,"f") .
d_hasState_(X,@new(s77,X,d_hasState,1..1),"t"):-choose(s77,X,d_hasState,1) .
choose(s77,X,d_hasState,1);choose(s77,X,d_hasState,0):-s77_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s77_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s78_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s77_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s77_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s78_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s77_(X,"t*") .
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

s65_(X,"f");s76_(X,"f"):-bnode_node1i7lkib3nx165_(X,"f") .
s89_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"t*"):-s89_(X,"t*") .
bnode_node1i7lkib3nx170_(X,"f"):-s89_(X,"f") .

s90_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
s91_(X,"f"):-s90_(X,"t*") .
s91_(X,"t*"):-s90_(X,"f") .
d_hasEndDate_(X,@new(s91,X,d_hasEndDate,1..1),"t"):-choose(s91,X,d_hasEndDate,1) .
d_hasEndDate_(X,@new(s91,X,d_hasEndDate,1..2),"t"):-choose(s91,X,d_hasEndDate,2) .
choose(s91,X,d_hasEndDate,2);choose(s91,X,d_hasEndDate,1);choose(s91,X,d_hasEndDate,0):-s91_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s91_(X,"t*") .
(C-1) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s92_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-1):-s91_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>1 .
d_hasEndDate_(X,Y,"f"):-s91_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
2 {s92_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s91_(X,"t*") .


s93_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
choose(s93,X,d_hasEndDate,0):-s93_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s93_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s94_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s93_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s93_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
0 {s94_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s93_(X,"t*") .


s95_(X,"t*"):-bnode_node1i7lkib3nx170_(X,"t*") .
s96_(X,"f"):-s95_(X,"t*") .
s96_(X,"t*"):-s95_(X,"f") .
d_hasEndDate_(X,@new(s96,X,d_hasEndDate,1..1),"t"):-choose(s96,X,d_hasEndDate,1) .
choose(s96,X,d_hasEndDate,1);choose(s96,X,d_hasEndDate,0):-s96_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s96_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s97_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s96_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s96_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s97_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s96_(X,"t*") .
s98_(X,"f"):-s97_(X,"t*") .
s98_(X,"t*"):-s97_(X,"f") .


s90_(X,"f");s93_(X,"f");s95_(X,"f"):-bnode_node1i7lkib3nx170_(X,"f") .
s99_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"t*"):-s99_(X,"t*") .
bnode_node1i7lkib3nx165_(X,"f"):-s99_(X,"f") .

s100_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
choose(s100,X,d_hasState,0):-s100_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s100_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s101_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s100_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s100_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s101_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s100_(X,"t*") .

s102_(X,"f"):-s101_(X,"t*") .
s102_(X,"t*"):-s101_(X,"f") .
s103_(X,"t*"):-s102_(X,"t*") .
s104_(X,"f"):-s103_(X,"t*") .
s104_(X,"t*"):-s103_(X,"f") .
s105_(X,"t*"):-s102_(X,"t*") .
s106_(X,"f"):-s105_(X,"t*") .
s106_(X,"t*"):-s105_(X,"f") .
s107_(X,"t*"):-s102_(X,"t*") .
s108_(X,"f"):-s107_(X,"t*") .
s108_(X,"t*"):-s107_(X,"f") .
s109_(X,"t*"):-s102_(X,"t*") .
s110_(X,"f"):-s109_(X,"t*") .
s110_(X,"t*"):-s109_(X,"f") .
s103_(X,"f");s105_(X,"f");s107_(X,"f");s109_(X,"f"):-s102_(X,"f") .

s111_(X,"t*"):-bnode_node1i7lkib3nx165_(X,"t*") .
s112_(X,"f"):-s111_(X,"t*") .
s112_(X,"t*"):-s111_(X,"f") .
d_hasState_(X,@new(s112,X,d_hasState,1..1),"t"):-choose(s112,X,d_hasState,1) .
choose(s112,X,d_hasState,1);choose(s112,X,d_hasState,0):-s112_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s112_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s113_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s112_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s112_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s113_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s112_(X,"t*") .
s114_(X,"f"):-s113_(X,"t*") .
s114_(X,"t*"):-s113_(X,"f") .

s115_(X,"f"):-s114_(X,"t*") .
s115_(X,"t*"):-s114_(X,"f") .
s116_(X,"t*"):-s115_(X,"t*") .
s117_(X,"f"):-s116_(X,"t*") .
s117_(X,"t*"):-s116_(X,"f") .
s118_(X,"t*"):-s115_(X,"t*") .
s119_(X,"f"):-s118_(X,"t*") .
s119_(X,"t*"):-s118_(X,"f") .
s120_(X,"t*"):-s115_(X,"t*") .
s121_(X,"f"):-s120_(X,"t*") .
s121_(X,"t*"):-s120_(X,"f") .
s122_(X,"t*"):-s115_(X,"t*") .
s123_(X,"f"):-s122_(X,"t*") .
s123_(X,"t*"):-s122_(X,"f") .
s116_(X,"f");s118_(X,"f");s120_(X,"f");s122_(X,"f"):-s115_(X,"f") .

s100_(X,"f");s111_(X,"f"):-bnode_node1i7lkib3nx165_(X,"f") .
s6_(X,"f");s13_(X,"f");s23_(X,"f");s30_(X,"f");s40_(X,"f");s47_(X,"f");s57_(X,"f");s64_(X,"f");s89_(X,"f");s99_(X,"f"):-d_ObligationShape_(X,"f") .

% Interpretation Rules

d_hasObligations_(X,Y,"t**"):-d_hasObligations_(X,Y,"t*"),not d_hasObligations_(X,Y,"f") .
d_hasEndDate_(X,Y,"t**"):-d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f") .
bnode_node1i7lkib3nx171_st_(X,X1,"t**"):-bnode_node1i7lkib3nx171_st_(X,X1,"t*"),not bnode_node1i7lkib3nx171_st_(X,X1,"f"),d_hasObligations_(X,X0,"t**"),d_hasEndDate_(X0,X1,"t**") .
d_hasState_(X,Y,"t**"):-d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f") .

% Program Constraints

:-d_hasObligations_(X,Y,"t"),d_hasObligations_(X,Y,"f") .
:-d_hasEndDate_(X,Y,"t"),d_hasEndDate_(X,Y,"f") .
:-bnode_node1i7lkib3nx171_st_(X,Y,"t"),bnode_node1i7lkib3nx171_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-d_hasState_(X,Y,"t"),d_hasState_(X,Y,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s18_(X,"f") .
:-s22_(X,"f") .
:-s25_(X,"f") .
:-s29_(X,"f") .
:-s32_(X,"f") .
:-s35_(X,"f") .
:-s39_(X,"f") .
:-s42_(X,"f") .
:-s46_(X,"f") .
:-s50_(X,"f") .
:-s52_(X,"f") .
:-s56_(X,"f") .
:-s59_(X,"f") .
:-s63_(X,"f") .
:-s69_(X,"t*"),X!="d_CreatedState" .
:-s69_(X,"f"),X="d_CreatedState" .
:-s71_(X,"t*"),X!="d_PendingState" .
:-s71_(X,"f"),X="d_PendingState" .
:-s73_(X,"t*"),X!="d_FulfilledState" .
:-s73_(X,"f"),X="d_FulfilledState" .
:-s75_(X,"t*"),X!="d_ViolatedState" .
:-s75_(X,"f"),X="d_ViolatedState" .
:-s82_(X,"t*"),X!="d_CreatedState" .
:-s82_(X,"f"),X="d_CreatedState" .
:-s84_(X,"t*"),X!="d_PendingState" .
:-s84_(X,"f"),X="d_PendingState" .
:-s86_(X,"t*"),X!="d_FulfilledState" .
:-s86_(X,"f"),X="d_FulfilledState" .
:-s88_(X,"t*"),X!="d_ViolatedState" .
:-s88_(X,"f"),X="d_ViolatedState" .
:-s92_(X,"f") .
:-s94_(X,"f") .
:-s98_(X,"f") .
:-s104_(X,"t*"),X!="d_CreatedState" .
:-s104_(X,"f"),X="d_CreatedState" .
:-s106_(X,"t*"),X!="d_PendingState" .
:-s106_(X,"f"),X="d_PendingState" .
:-s108_(X,"t*"),X!="d_FulfilledState" .
:-s108_(X,"f"),X="d_FulfilledState" .
:-s110_(X,"t*"),X!="d_ViolatedState" .
:-s110_(X,"f"),X="d_ViolatedState" .
:-s117_(X,"t*"),X!="d_CreatedState" .
:-s117_(X,"f"),X="d_CreatedState" .
:-s119_(X,"t*"),X!="d_PendingState" .
:-s119_(X,"f"),X="d_PendingState" .
:-s121_(X,"t*"),X!="d_FulfilledState" .
:-s121_(X,"f"),X="d_FulfilledState" .
:-s123_(X,"t*"),X!="d_ViolatedState" .
:-s123_(X,"f"),X="d_ViolatedState" .

% Change Set Rules

add(d_hasObligations(X,Y)):-d_hasObligations_(X,Y,"t**"),not d_hasObligations(X,Y) .
del(d_hasObligations(X,Y)):-d_hasObligations_(X,Y,"f"),d_hasObligations(X,Y) .
add(d_hasEndDate(X,Y)):-d_hasEndDate_(X,Y,"t**"),not d_hasEndDate(X,Y) .
del(d_hasEndDate(X,Y)):-d_hasEndDate_(X,Y,"f"),d_hasEndDate(X,Y) .
#minimize { 1@1,X,Y: bnode_node1i7lkib3nx171_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: d_hasEndDate_(X,Y,"t"), const(Y) } .
add(d_hasState(X,Y)):-d_hasState_(X,Y,"t**"),not d_hasState(X,Y) .
del(d_hasState(X,Y)):-d_hasState_(X,Y,"f"),d_hasState(X,Y) .
#minimize { 1@1,X,Y: d_hasState_(X,Y,"t"), const(Y) } .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

:-del(d_hasEndDate(X,Y)),fibo_fnd_agr_ctr_Contract(X) .
#minimize { 1@3,X,Y: del(d_hasEndDate(X,Y)),d_hasEndDate_(X,Z,"t**"),Y>=Z } .
:-del(d_hasObligations(X,Y)) .

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
