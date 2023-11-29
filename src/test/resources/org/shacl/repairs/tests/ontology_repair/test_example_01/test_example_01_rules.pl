
% Graph Data

owl_ObjectProperty("_p1") .
owl_DatatypeProperty("_p1") .
rdfs_subPropertyOf("_p1","_p2") .
rdfs_range("_p1","xsd_string") .
owl_ObjectProperty("_p2") .

% Shape Targets

targetNode("_p1",_property) .
targetNode("_p1",_subProperty) .
targetNode("_p2",_property) .

% Constants

const("xsd_string") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_property_("_p1","t*"):-actualTarget("_p1",_property) .
_subProperty_("_p1","t*"):-actualTarget("_p1",_subProperty) .
_property_("_p2","t*"):-actualTarget("_p2",_property) .

% Annotation Rules

rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-_property_(X,"t*") .
s1_(X,"f"):-s0_(X,"f") .
s2_(X,"t*"):-s1_(X,"t*") .
s3_(X,"t*"):-s2_(X,"t*") .
node1hgd7v9f9x246_(X,"t*"):-s3_(X,"t*") .
node1hgd7v9f9x246_(X,"f"):-s3_(X,"f") .

% sh:minCount 1 for node1hgd7v9f9x246
s4_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
rdfs_range_(X,@new(s4,X,rdfs_range,1..1),"t"):-choose(s4,X,rdfs_range,1) .
choose(s4,X,rdfs_range,1);choose(s4,X,rdfs_range,0):-s4_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s5_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s4_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s5_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s4_(X,"t*") .

s6_(X,"t*"):-s5_(X,"t*") .
s7_(X,"t*"):-s5_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s7_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s7_(X,"f") .
owl_Class_(X,"t"):-node1hgd7v9f9x247_(X,"t*") .
owl_Class_(X,"f"):-node1hgd7v9f9x247_(X,"f") .
s6_(X,"f");s7_(X,"f"):-s5_(X,"f") .

% universal for node1hgd7v9f9x246
s8_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
rdfs_range_(X,@new(s9,X,rdfs_range,1..1),"t"):-choose(s9,X,rdfs_range,1) .
choose(s9,X,rdfs_range,1);choose(s9,X,rdfs_range,0):-s9_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s9_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s10_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s9_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s10_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s9_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .

s12_(X,"t*"):-s11_(X,"t*") .
s13_(X,"t*"):-s11_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s13_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s13_(X,"f") .
s12_(X,"f");s13_(X,"f"):-s11_(X,"f") .

s4_(X,"f");s8_(X,"f"):-node1hgd7v9f9x246_(X,"f") .
s14_(X,"t*"):-s2_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s14_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s14_(X,"f") .
s15_(X,"t*"):-s2_(X,"t*") .
node1hgd7v9f9x243_(X,"f"):-s15_(X,"t*") .
node1hgd7v9f9x243_(X,"t*"):-s15_(X,"f") .
owl_ObjectProperty_(X,"t"):-node1hgd7v9f9x243_(X,"t*") .
owl_ObjectProperty_(X,"f"):-node1hgd7v9f9x243_(X,"f") .
s3_(X,"f");s14_(X,"f");s15_(X,"f"):-s2_(X,"f") .
s16_(X,"t*"):-s1_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
s18_(X,"f"):-s17_(X,"f") .
s19_(X,"t*"):-s18_(X,"t*") .
node1hgd7v9f9x237_(X,"t*"):-s19_(X,"t*") .
node1hgd7v9f9x237_(X,"f"):-s19_(X,"f") .

% sh:minCount 1 for node1hgd7v9f9x237
s20_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
rdfs_range_(X,@new(s20,X,rdfs_range,1..1),"t"):-choose(s20,X,rdfs_range,1) .
choose(s20,X,rdfs_range,1);choose(s20,X,rdfs_range,0):-s20_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s20_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s21_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s20_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s21_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s20_(X,"t*") .

s22_(X,"t*"):-s21_(X,"t*") .
owl_Class_(X,"t"):-s22_(X,"t*") .
owl_Class_(X,"f"):-s22_(X,"f") .
s23_(X,"t*"):-s21_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s23_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s23_(X,"f") .
s22_(X,"f");s23_(X,"f"):-s21_(X,"f") .

% universal for node1hgd7v9f9x237
s24_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
rdfs_range_(X,@new(s25,X,rdfs_range,1..1),"t"):-choose(s25,X,rdfs_range,1) .
choose(s25,X,rdfs_range,1);choose(s25,X,rdfs_range,0):-s25_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s25_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s26_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s25_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s26_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s25_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .

s28_(X,"t*"):-s27_(X,"t*") .
owl_Class_(X,"t"):-s28_(X,"t*") .
owl_Class_(X,"f"):-s28_(X,"f") .
s29_(X,"t*"):-s27_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s29_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s29_(X,"f") .
s28_(X,"f");s29_(X,"f"):-s27_(X,"f") .

s20_(X,"f");s24_(X,"f"):-node1hgd7v9f9x237_(X,"f") .
s30_(X,"t*"):-s18_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s30_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s30_(X,"f") .
s31_(X,"t*"):-s18_(X,"t*") .
node1hgd7v9f9x234_(X,"f"):-s31_(X,"t*") .
node1hgd7v9f9x234_(X,"t*"):-s31_(X,"f") .
owl_DatatypeProperty_(X,"t"):-node1hgd7v9f9x234_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-node1hgd7v9f9x234_(X,"f") .
s19_(X,"f");s30_(X,"f");s31_(X,"f"):-s18_(X,"f") .
s18_(X,"t*"):-s17_(X,"t*") .
s2_(X,"f");s16_(X,"f"):-s1_(X,"f") .
s32_(X,"f"):-s0_(X,"f") .
s33_(X,"t*"):-s32_(X,"t*") .
s34_(X,"t*"):-s33_(X,"t*") .
node1hgd7v9f9x237_(X,"t*"):-s34_(X,"t*") .
node1hgd7v9f9x237_(X,"f"):-s34_(X,"f") .

s35_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
rdfs_range_(X,@new(s35,X,rdfs_range,1..1),"t"):-choose(s35,X,rdfs_range,1) .
choose(s35,X,rdfs_range,1);choose(s35,X,rdfs_range,0):-s35_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s35_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s36_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s35_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s36_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s35_(X,"t*") .

s37_(X,"t*"):-s36_(X,"t*") .
owl_Class_(X,"t"):-s37_(X,"t*") .
owl_Class_(X,"f"):-s37_(X,"f") .
s38_(X,"t*"):-s36_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s38_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s38_(X,"f") .
s37_(X,"f");s38_(X,"f"):-s36_(X,"f") .

s39_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .
rdfs_range_(X,@new(s40,X,rdfs_range,1..1),"t"):-choose(s40,X,rdfs_range,1) .
choose(s40,X,rdfs_range,1);choose(s40,X,rdfs_range,0):-s40_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s40_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s41_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s40_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s40_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s41_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s40_(X,"t*") .
s42_(X,"f"):-s41_(X,"t*") .
s42_(X,"t*"):-s41_(X,"f") .

s43_(X,"t*"):-s42_(X,"t*") .
owl_Class_(X,"t"):-s43_(X,"t*") .
owl_Class_(X,"f"):-s43_(X,"f") .
s44_(X,"t*"):-s42_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s44_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s44_(X,"f") .
s43_(X,"f");s44_(X,"f"):-s42_(X,"f") .

s35_(X,"f");s39_(X,"f"):-node1hgd7v9f9x237_(X,"f") .
s45_(X,"t*"):-s33_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s45_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s45_(X,"f") .
s46_(X,"t*"):-s33_(X,"t*") .
node1hgd7v9f9x234_(X,"f"):-s46_(X,"t*") .
node1hgd7v9f9x234_(X,"t*"):-s46_(X,"f") .
s34_(X,"f");s45_(X,"f");s46_(X,"f"):-s33_(X,"f") .
s47_(X,"t*"):-s32_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .
s49_(X,"f"):-s48_(X,"f") .
s50_(X,"t*"):-s49_(X,"t*") .
node1hgd7v9f9x246_(X,"t*"):-s50_(X,"t*") .
node1hgd7v9f9x246_(X,"f"):-s50_(X,"f") .

s51_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
rdfs_range_(X,@new(s51,X,rdfs_range,1..1),"t"):-choose(s51,X,rdfs_range,1) .
choose(s51,X,rdfs_range,1);choose(s51,X,rdfs_range,0):-s51_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s51_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s52_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s51_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s51_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s52_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s51_(X,"t*") .

s53_(X,"t*"):-s52_(X,"t*") .
s54_(X,"t*"):-s52_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s54_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s54_(X,"f") .
s53_(X,"f");s54_(X,"f"):-s52_(X,"f") .

s55_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .
rdfs_range_(X,@new(s56,X,rdfs_range,1..1),"t"):-choose(s56,X,rdfs_range,1) .
choose(s56,X,rdfs_range,1);choose(s56,X,rdfs_range,0):-s56_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s56_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s57_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s56_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s56_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s57_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s56_(X,"t*") .
s58_(X,"f"):-s57_(X,"t*") .
s58_(X,"t*"):-s57_(X,"f") .

s59_(X,"t*"):-s58_(X,"t*") .
s60_(X,"t*"):-s58_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s60_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s60_(X,"f") .
s59_(X,"f");s60_(X,"f"):-s58_(X,"f") .

s51_(X,"f");s55_(X,"f"):-node1hgd7v9f9x246_(X,"f") .
s61_(X,"t*"):-s49_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s61_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s61_(X,"f") .
s62_(X,"t*"):-s49_(X,"t*") .
node1hgd7v9f9x243_(X,"f"):-s62_(X,"t*") .
node1hgd7v9f9x243_(X,"t*"):-s62_(X,"f") .
s50_(X,"f");s61_(X,"f");s62_(X,"f"):-s49_(X,"f") .
s49_(X,"t*"):-s48_(X,"t*") .
s33_(X,"f");s47_(X,"f"):-s32_(X,"f") .
s1_(X,"t*");s32_(X,"t*"):-s0_(X,"t*") .
s63_(X,"t*"):-_property_(X,"t*") .
s64_(X,"f"):-s63_(X,"f") .
s65_(X,"t*"):-s64_(X,"t*") .
s66_(X,"t*"):-s65_(X,"t*") .
node1hgd7v9f9x237_(X,"t*"):-s66_(X,"t*") .
node1hgd7v9f9x237_(X,"f"):-s66_(X,"f") .

s67_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
rdfs_range_(X,@new(s67,X,rdfs_range,1..1),"t"):-choose(s67,X,rdfs_range,1) .
choose(s67,X,rdfs_range,1);choose(s67,X,rdfs_range,0):-s67_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s67_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s68_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s67_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s67_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s68_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s67_(X,"t*") .

s69_(X,"t*"):-s68_(X,"t*") .
owl_Class_(X,"t"):-s69_(X,"t*") .
owl_Class_(X,"f"):-s69_(X,"f") .
s70_(X,"t*"):-s68_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s70_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s70_(X,"f") .
s69_(X,"f");s70_(X,"f"):-s68_(X,"f") .

s71_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
s72_(X,"f"):-s71_(X,"t*") .
s72_(X,"t*"):-s71_(X,"f") .
rdfs_range_(X,@new(s72,X,rdfs_range,1..1),"t"):-choose(s72,X,rdfs_range,1) .
choose(s72,X,rdfs_range,1);choose(s72,X,rdfs_range,0):-s72_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s72_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s73_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s72_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s72_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s73_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s72_(X,"t*") .
s74_(X,"f"):-s73_(X,"t*") .
s74_(X,"t*"):-s73_(X,"f") .

s75_(X,"t*"):-s74_(X,"t*") .
owl_Class_(X,"t"):-s75_(X,"t*") .
owl_Class_(X,"f"):-s75_(X,"f") .
s76_(X,"t*"):-s74_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s76_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s76_(X,"f") .
s75_(X,"f");s76_(X,"f"):-s74_(X,"f") .

s67_(X,"f");s71_(X,"f"):-node1hgd7v9f9x237_(X,"f") .
s77_(X,"t*"):-s65_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s77_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s77_(X,"f") .
s78_(X,"t*"):-s65_(X,"t*") .
node1hgd7v9f9x234_(X,"f"):-s78_(X,"t*") .
node1hgd7v9f9x234_(X,"t*"):-s78_(X,"f") .
s66_(X,"f");s77_(X,"f");s78_(X,"f"):-s65_(X,"f") .
s79_(X,"t*"):-s64_(X,"t*") .
s80_(X,"f"):-s79_(X,"t*") .
s80_(X,"t*"):-s79_(X,"f") .
s81_(X,"f"):-s80_(X,"f") .
s82_(X,"t*"):-s81_(X,"t*") .
node1hgd7v9f9x246_(X,"t*"):-s82_(X,"t*") .
node1hgd7v9f9x246_(X,"f"):-s82_(X,"f") .

s83_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
rdfs_range_(X,@new(s83,X,rdfs_range,1..1),"t"):-choose(s83,X,rdfs_range,1) .
choose(s83,X,rdfs_range,1);choose(s83,X,rdfs_range,0):-s83_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s83_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s84_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s83_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s83_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s84_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s83_(X,"t*") .

s85_(X,"t*"):-s84_(X,"t*") .
s86_(X,"t*"):-s84_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s86_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s86_(X,"f") .
s85_(X,"f");s86_(X,"f"):-s84_(X,"f") .

s87_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
s88_(X,"f"):-s87_(X,"t*") .
s88_(X,"t*"):-s87_(X,"f") .
rdfs_range_(X,@new(s88,X,rdfs_range,1..1),"t"):-choose(s88,X,rdfs_range,1) .
choose(s88,X,rdfs_range,1);choose(s88,X,rdfs_range,0):-s88_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s88_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s89_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s88_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s88_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s89_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s88_(X,"t*") .
s90_(X,"f"):-s89_(X,"t*") .
s90_(X,"t*"):-s89_(X,"f") .

s91_(X,"t*"):-s90_(X,"t*") .
s92_(X,"t*"):-s90_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s92_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s92_(X,"f") .
s91_(X,"f");s92_(X,"f"):-s90_(X,"f") .

s83_(X,"f");s87_(X,"f"):-node1hgd7v9f9x246_(X,"f") .
s93_(X,"t*"):-s81_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s93_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s93_(X,"f") .
s94_(X,"t*"):-s81_(X,"t*") .
node1hgd7v9f9x243_(X,"f"):-s94_(X,"t*") .
node1hgd7v9f9x243_(X,"t*"):-s94_(X,"f") .
s82_(X,"f");s93_(X,"f");s94_(X,"f"):-s81_(X,"f") .
s81_(X,"t*"):-s80_(X,"t*") .
s65_(X,"f");s79_(X,"f"):-s64_(X,"f") .
s95_(X,"f"):-s63_(X,"f") .
s96_(X,"t*"):-s95_(X,"t*") .
s97_(X,"t*"):-s96_(X,"t*") .
node1hgd7v9f9x246_(X,"t*"):-s97_(X,"t*") .
node1hgd7v9f9x246_(X,"f"):-s97_(X,"f") .

s98_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
rdfs_range_(X,@new(s98,X,rdfs_range,1..1),"t"):-choose(s98,X,rdfs_range,1) .
choose(s98,X,rdfs_range,1);choose(s98,X,rdfs_range,0):-s98_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s98_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s99_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s98_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s98_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s99_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s98_(X,"t*") .

s100_(X,"t*"):-s99_(X,"t*") .
s101_(X,"t*"):-s99_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s101_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s101_(X,"f") .
s100_(X,"f");s101_(X,"f"):-s99_(X,"f") .

s102_(X,"t*"):-node1hgd7v9f9x246_(X,"t*") .
s103_(X,"f"):-s102_(X,"t*") .
s103_(X,"t*"):-s102_(X,"f") .
rdfs_range_(X,@new(s103,X,rdfs_range,1..1),"t"):-choose(s103,X,rdfs_range,1) .
choose(s103,X,rdfs_range,1);choose(s103,X,rdfs_range,0):-s103_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s103_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s104_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s103_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s103_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s104_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s103_(X,"t*") .
s105_(X,"f"):-s104_(X,"t*") .
s105_(X,"t*"):-s104_(X,"f") .

s106_(X,"t*"):-s105_(X,"t*") .
s107_(X,"t*"):-s105_(X,"t*") .
node1hgd7v9f9x247_(X,"f"):-s107_(X,"t*") .
node1hgd7v9f9x247_(X,"t*"):-s107_(X,"f") .
s106_(X,"f");s107_(X,"f"):-s105_(X,"f") .

s98_(X,"f");s102_(X,"f"):-node1hgd7v9f9x246_(X,"f") .
s108_(X,"t*"):-s96_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s108_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s108_(X,"f") .
s109_(X,"t*"):-s96_(X,"t*") .
node1hgd7v9f9x243_(X,"f"):-s109_(X,"t*") .
node1hgd7v9f9x243_(X,"t*"):-s109_(X,"f") .
s97_(X,"f");s108_(X,"f");s109_(X,"f"):-s96_(X,"f") .
s110_(X,"t*"):-s95_(X,"t*") .
s111_(X,"f"):-s110_(X,"t*") .
s111_(X,"t*"):-s110_(X,"f") .
s112_(X,"f"):-s111_(X,"f") .
s113_(X,"t*"):-s112_(X,"t*") .
node1hgd7v9f9x237_(X,"t*"):-s113_(X,"t*") .
node1hgd7v9f9x237_(X,"f"):-s113_(X,"f") .

s114_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
rdfs_range_(X,@new(s114,X,rdfs_range,1..1),"t"):-choose(s114,X,rdfs_range,1) .
choose(s114,X,rdfs_range,1);choose(s114,X,rdfs_range,0):-s114_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s114_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s115_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s114_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s114_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s115_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s114_(X,"t*") .

s116_(X,"t*"):-s115_(X,"t*") .
owl_Class_(X,"t"):-s116_(X,"t*") .
owl_Class_(X,"f"):-s116_(X,"f") .
s117_(X,"t*"):-s115_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s117_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s117_(X,"f") .
s116_(X,"f");s117_(X,"f"):-s115_(X,"f") .

s118_(X,"t*"):-node1hgd7v9f9x237_(X,"t*") .
s119_(X,"f"):-s118_(X,"t*") .
s119_(X,"t*"):-s118_(X,"f") .
rdfs_range_(X,@new(s119,X,rdfs_range,1..1),"t"):-choose(s119,X,rdfs_range,1) .
choose(s119,X,rdfs_range,1);choose(s119,X,rdfs_range,0):-s119_(X,"t*") .
0 {rdfs_range_(X,Y,"t"):const(Y)} 1:-s119_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s120_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s119_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s119_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s120_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s119_(X,"t*") .
s121_(X,"f"):-s120_(X,"t*") .
s121_(X,"t*"):-s120_(X,"f") .

s122_(X,"t*"):-s121_(X,"t*") .
owl_Class_(X,"t"):-s122_(X,"t*") .
owl_Class_(X,"f"):-s122_(X,"f") .
s123_(X,"t*"):-s121_(X,"t*") .
node1hgd7v9f9x238_(X,"f"):-s123_(X,"t*") .
node1hgd7v9f9x238_(X,"t*"):-s123_(X,"f") .
s122_(X,"f");s123_(X,"f"):-s121_(X,"f") .

s114_(X,"f");s118_(X,"f"):-node1hgd7v9f9x237_(X,"f") .
s124_(X,"t*"):-s112_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s124_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s124_(X,"f") .
s125_(X,"t*"):-s112_(X,"t*") .
node1hgd7v9f9x234_(X,"f"):-s125_(X,"t*") .
node1hgd7v9f9x234_(X,"t*"):-s125_(X,"f") .
s113_(X,"f");s124_(X,"f");s125_(X,"f"):-s112_(X,"f") .
s112_(X,"t*"):-s111_(X,"t*") .
s96_(X,"f");s110_(X,"f"):-s95_(X,"f") .
s64_(X,"t*");s95_(X,"t*"):-s63_(X,"t*") .
s0_(X,"f");s63_(X,"f"):-_property_(X,"f") .
s126_(X,"f"):-_subProperty_(X,"f") .
s127_(X,"t*"):-s126_(X,"t*") .
node1hgd7v9f9x254_(X,"t*"):-s127_(X,"t*") .

% sh:minCount 0 for node1hgd7v9f9x254
s128_(X,"t*"):-node1hgd7v9f9x254_(X,"t*") .
choose(s128,X,rdfs_subPropertyOf,0):-s128_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s128_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s129_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s128_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s128_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s129_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s128_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s129_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s129_(X,"f") .

% universal for node1hgd7v9f9x254
s130_(X,"t*"):-node1hgd7v9f9x254_(X,"t*") .
s131_(X,"f"):-s130_(X,"t*") .
s131_(X,"t*"):-s130_(X,"f") .
rdfs_subPropertyOf_(X,@new(s131,X,rdfs_subPropertyOf,1..1),"t"):-choose(s131,X,rdfs_subPropertyOf,1) .
choose(s131,X,rdfs_subPropertyOf,1);choose(s131,X,rdfs_subPropertyOf,0):-s131_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s131_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s132_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s131_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s131_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s132_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s131_(X,"t*") .
s133_(X,"f"):-s132_(X,"t*") .
s133_(X,"t*"):-s132_(X,"f") .

owl_ObjectProperty_(X,"t"):-s133_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s133_(X,"f") .

s128_(X,"f");s130_(X,"f"):-node1hgd7v9f9x254_(X,"f") .
s134_(X,"t*"):-s127_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s134_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s134_(X,"f") .
node1hgd7v9f9x254_(X,"f");s134_(X,"f"):-s127_(X,"f") .
s135_(X,"t*"):-s126_(X,"t*") .
s136_(X,"f"):-s135_(X,"t*") .
s136_(X,"t*"):-s135_(X,"f") .
s137_(X,"f"):-s136_(X,"f") .
node1hgd7v9f9x257_(X,"t*"):-s137_(X,"t*") .

% sh:minCount 0 for node1hgd7v9f9x257
s138_(X,"t*"):-node1hgd7v9f9x257_(X,"t*") .
choose(s138,X,rdfs_subPropertyOf,0):-s138_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s138_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s139_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s138_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s138_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s139_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s138_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s139_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s139_(X,"f") .

% universal for node1hgd7v9f9x257
s140_(X,"t*"):-node1hgd7v9f9x257_(X,"t*") .
s141_(X,"f"):-s140_(X,"t*") .
s141_(X,"t*"):-s140_(X,"f") .
rdfs_subPropertyOf_(X,@new(s141,X,rdfs_subPropertyOf,1..1),"t"):-choose(s141,X,rdfs_subPropertyOf,1) .
choose(s141,X,rdfs_subPropertyOf,1);choose(s141,X,rdfs_subPropertyOf,0):-s141_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s141_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s142_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s141_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s141_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s142_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s141_(X,"t*") .
s143_(X,"f"):-s142_(X,"t*") .
s143_(X,"t*"):-s142_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s143_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s143_(X,"f") .

s138_(X,"f");s140_(X,"f"):-node1hgd7v9f9x257_(X,"f") .
s144_(X,"t*"):-s137_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s144_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s144_(X,"f") .
node1hgd7v9f9x257_(X,"f");s144_(X,"f"):-s137_(X,"f") .
s137_(X,"t*"):-s136_(X,"t*") .
s127_(X,"f");s135_(X,"f"):-s126_(X,"f") .
s145_(X,"f"):-_subProperty_(X,"f") .
s146_(X,"t*"):-s145_(X,"t*") .
node1hgd7v9f9x257_(X,"t*"):-s146_(X,"t*") .

s147_(X,"t*"):-node1hgd7v9f9x257_(X,"t*") .
choose(s147,X,rdfs_subPropertyOf,0):-s147_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s147_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s148_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s147_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s147_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s148_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s147_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s148_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s148_(X,"f") .

s149_(X,"t*"):-node1hgd7v9f9x257_(X,"t*") .
s150_(X,"f"):-s149_(X,"t*") .
s150_(X,"t*"):-s149_(X,"f") .
rdfs_subPropertyOf_(X,@new(s150,X,rdfs_subPropertyOf,1..1),"t"):-choose(s150,X,rdfs_subPropertyOf,1) .
choose(s150,X,rdfs_subPropertyOf,1);choose(s150,X,rdfs_subPropertyOf,0):-s150_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s150_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s151_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s150_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s150_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s151_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s150_(X,"t*") .
s152_(X,"f"):-s151_(X,"t*") .
s152_(X,"t*"):-s151_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s152_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s152_(X,"f") .

s147_(X,"f");s149_(X,"f"):-node1hgd7v9f9x257_(X,"f") .
s153_(X,"t*"):-s146_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s153_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s153_(X,"f") .
node1hgd7v9f9x257_(X,"f");s153_(X,"f"):-s146_(X,"f") .
s154_(X,"t*"):-s145_(X,"t*") .
s155_(X,"f"):-s154_(X,"t*") .
s155_(X,"t*"):-s154_(X,"f") .
s156_(X,"f"):-s155_(X,"f") .
node1hgd7v9f9x254_(X,"t*"):-s156_(X,"t*") .

s157_(X,"t*"):-node1hgd7v9f9x254_(X,"t*") .
choose(s157,X,rdfs_subPropertyOf,0):-s157_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s157_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s158_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s157_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s157_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s158_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s157_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s158_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s158_(X,"f") .

s159_(X,"t*"):-node1hgd7v9f9x254_(X,"t*") .
s160_(X,"f"):-s159_(X,"t*") .
s160_(X,"t*"):-s159_(X,"f") .
rdfs_subPropertyOf_(X,@new(s160,X,rdfs_subPropertyOf,1..1),"t"):-choose(s160,X,rdfs_subPropertyOf,1) .
choose(s160,X,rdfs_subPropertyOf,1);choose(s160,X,rdfs_subPropertyOf,0):-s160_(X,"t*") .
0 {rdfs_subPropertyOf_(X,Y,"t"):const(Y)} 1:-s160_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s161_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s160_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s160_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s161_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s160_(X,"t*") .
s162_(X,"f"):-s161_(X,"t*") .
s162_(X,"t*"):-s161_(X,"f") .

owl_ObjectProperty_(X,"t"):-s162_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s162_(X,"f") .

s157_(X,"f");s159_(X,"f"):-node1hgd7v9f9x254_(X,"f") .
s163_(X,"t*"):-s156_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s163_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s163_(X,"f") .
node1hgd7v9f9x254_(X,"f");s163_(X,"f"):-s156_(X,"f") .
s156_(X,"t*"):-s155_(X,"t*") .
s146_(X,"f");s154_(X,"f"):-s145_(X,"f") .
s126_(X,"t*");s145_(X,"t*"):-_subProperty_(X,"t*") .

% Interpretation Rules

rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .

% Program Constraints

:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-s6_(X,"t*"),X!="xsd_string" .
:-s6_(X,"f"),X="xsd_string" .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-s12_(X,"t*"),X!="xsd_string" .
:-s12_(X,"f"),X="xsd_string" .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-node1hgd7v9f9x238_(X,"t*"),X!="xsd_string" .
:-node1hgd7v9f9x238_(X,"f"),X="xsd_string" .
:-s53_(X,"t*"),X!="xsd_string" .
:-s53_(X,"f"),X="xsd_string" .
:-s59_(X,"t*"),X!="xsd_string" .
:-s59_(X,"f"),X="xsd_string" .
:-s85_(X,"t*"),X!="xsd_string" .
:-s85_(X,"f"),X="xsd_string" .
:-s91_(X,"t*"),X!="xsd_string" .
:-s91_(X,"f"),X="xsd_string" .
:-s100_(X,"t*"),X!="xsd_string" .
:-s100_(X,"f"),X="xsd_string" .
:-s106_(X,"t*"),X!="xsd_string" .
:-s106_(X,"f"),X="xsd_string" .
:-rdfs_subPropertyOf_(X,Y,"t"),rdfs_subPropertyOf_(X,Y,"f") .

% Change Set Rules

add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
#minimize { 1@1,X,Y: rdfs_range_(X,Y,"t"), const(Y) } .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
add(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"t**"),not rdfs_subPropertyOf(X,Y) .
del(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"f"),rdfs_subPropertyOf(X,Y) .
#minimize { 1@1,X,Y: rdfs_subPropertyOf_(X,Y,"t"), const(Y) } .
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
