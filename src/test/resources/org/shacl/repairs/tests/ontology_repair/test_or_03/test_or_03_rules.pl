
% Graph Data

owl_ObjectProperty("_p1") .
owl_DatatypeProperty("_p1") .
rdfs_range("_p1","_c") .
rdfs_Class("_c") .

% Shape Targets

targetNode("_p1",_property) .
targetNode("_c",_classShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_property_("_p1","t*"):-actualTarget("_p1",_property) .
_classShape_("_c","t*"):-actualTarget("_c",_classShape) .

% Annotation Rules

rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .

% Repair Rules

s0_(X,"t*"):-_property_(X,"t*") .
s1_(X,"f"):-s0_(X,"f") .
s2_(X,"t*"):-s1_(X,"t*") .
s3_(X,"t*"):-s2_(X,"t*") .
node1hgd7v9f9x465_(X,"t*"):-s3_(X,"t*") .
node1hgd7v9f9x465_(X,"f"):-s3_(X,"f") .

% sh:minCount 0 for node1hgd7v9f9x465
s4_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
choose(s4,X,rdfs_range,0):-s4_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s5_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s4_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s5_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s4_(X,"t*") .

s6_(X,"f"):-s5_(X,"f") .
owl_Class_(X,"t"):-s6_(X,"t*") .
owl_Class_(X,"f"):-s6_(X,"f") .
s6_(X,"t*"):-s5_(X,"t*") .

% universal for node1hgd7v9f9x465
s7_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .
rdfs_range_(X,@new(s8,X,rdfs_range,1..1),"t"):-choose(s8,X,rdfs_range,1) .
choose(s8,X,rdfs_range,1);choose(s8,X,rdfs_range,0):-s8_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s9_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s8_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s9_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s8_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .

s11_(X,"f"):-s10_(X,"f") .
owl_Class_(X,"t"):-s11_(X,"t*") .
owl_Class_(X,"f"):-s11_(X,"f") .
s11_(X,"t*"):-s10_(X,"t*") .

s4_(X,"f");s7_(X,"f"):-node1hgd7v9f9x465_(X,"f") .
s12_(X,"t*"):-s2_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s12_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s12_(X,"f") .
s13_(X,"t*"):-s2_(X,"t*") .
node1hgd7v9f9x462_(X,"f"):-s13_(X,"t*") .
node1hgd7v9f9x462_(X,"t*"):-s13_(X,"f") .
owl_DatatypeProperty_(X,"t"):-node1hgd7v9f9x462_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-node1hgd7v9f9x462_(X,"f") .
s3_(X,"f");s12_(X,"f");s13_(X,"f"):-s2_(X,"f") .
s14_(X,"t*"):-s1_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
s16_(X,"f"):-s15_(X,"f") .
s17_(X,"t*"):-s16_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s17_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s17_(X,"f") .
s18_(X,"t*"):-s16_(X,"t*") .
node1hgd7v9f9x472_(X,"f"):-s18_(X,"t*") .
node1hgd7v9f9x472_(X,"t*"):-s18_(X,"f") .
owl_ObjectProperty_(X,"t"):-node1hgd7v9f9x472_(X,"t*") .
owl_ObjectProperty_(X,"f"):-node1hgd7v9f9x472_(X,"f") .
s19_(X,"t*"):-s16_(X,"t*") .
node1hgd7v9f9x475_(X,"t*"):-s19_(X,"t*") .
node1hgd7v9f9x475_(X,"f"):-s19_(X,"f") .

% sh:minCount 0 for node1hgd7v9f9x475
s20_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
choose(s20,X,rdfs_range,0):-s20_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s21_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s20_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s21_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s20_(X,"t*") .

node1hgd7v9f9x476_(X,"f"):-s21_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s21_(X,"f") .
owl_Class_(X,"t"):-node1hgd7v9f9x476_(X,"t*") .
owl_Class_(X,"f"):-node1hgd7v9f9x476_(X,"f") .

% universal for node1hgd7v9f9x475
s22_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .
rdfs_range_(X,@new(s23,X,rdfs_range,1..1),"t"):-choose(s23,X,rdfs_range,1) .
choose(s23,X,rdfs_range,1);choose(s23,X,rdfs_range,0):-s23_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s24_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s23_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s23_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s24_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .

node1hgd7v9f9x476_(X,"f"):-s25_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s25_(X,"f") .

s20_(X,"f");s22_(X,"f"):-node1hgd7v9f9x475_(X,"f") .
s17_(X,"f");s18_(X,"f");s19_(X,"f"):-s16_(X,"f") .
s16_(X,"t*"):-s15_(X,"t*") .
s2_(X,"f");s14_(X,"f"):-s1_(X,"f") .
s26_(X,"f"):-s0_(X,"f") .
s27_(X,"t*"):-s26_(X,"t*") .
s28_(X,"t*"):-s27_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s28_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s28_(X,"f") .
s29_(X,"t*"):-s27_(X,"t*") .
node1hgd7v9f9x472_(X,"f"):-s29_(X,"t*") .
node1hgd7v9f9x472_(X,"t*"):-s29_(X,"f") .
s30_(X,"t*"):-s27_(X,"t*") .
node1hgd7v9f9x475_(X,"t*"):-s30_(X,"t*") .
node1hgd7v9f9x475_(X,"f"):-s30_(X,"f") .

s31_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
choose(s31,X,rdfs_range,0):-s31_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s32_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s31_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s32_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s31_(X,"t*") .

node1hgd7v9f9x476_(X,"f"):-s32_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s32_(X,"f") .

s33_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
s34_(X,"f"):-s33_(X,"t*") .
s34_(X,"t*"):-s33_(X,"f") .
rdfs_range_(X,@new(s34,X,rdfs_range,1..1),"t"):-choose(s34,X,rdfs_range,1) .
choose(s34,X,rdfs_range,1);choose(s34,X,rdfs_range,0):-s34_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s35_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s34_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s35_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s34_(X,"t*") .
s36_(X,"f"):-s35_(X,"t*") .
s36_(X,"t*"):-s35_(X,"f") .

node1hgd7v9f9x476_(X,"f"):-s36_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s36_(X,"f") .

s31_(X,"f");s33_(X,"f"):-node1hgd7v9f9x475_(X,"f") .
s28_(X,"f");s29_(X,"f");s30_(X,"f"):-s27_(X,"f") .
s37_(X,"t*"):-s26_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .
s39_(X,"f"):-s38_(X,"f") .
s40_(X,"t*"):-s39_(X,"t*") .
node1hgd7v9f9x465_(X,"t*"):-s40_(X,"t*") .
node1hgd7v9f9x465_(X,"f"):-s40_(X,"f") .

s41_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
choose(s41,X,rdfs_range,0):-s41_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s42_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s41_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s42_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s41_(X,"t*") .

s43_(X,"f"):-s42_(X,"f") .
owl_Class_(X,"t"):-s43_(X,"t*") .
owl_Class_(X,"f"):-s43_(X,"f") .
s43_(X,"t*"):-s42_(X,"t*") .

s44_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
s45_(X,"f"):-s44_(X,"t*") .
s45_(X,"t*"):-s44_(X,"f") .
rdfs_range_(X,@new(s45,X,rdfs_range,1..1),"t"):-choose(s45,X,rdfs_range,1) .
choose(s45,X,rdfs_range,1);choose(s45,X,rdfs_range,0):-s45_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s46_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s45_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s45_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s46_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s45_(X,"t*") .
s47_(X,"f"):-s46_(X,"t*") .
s47_(X,"t*"):-s46_(X,"f") .

s48_(X,"f"):-s47_(X,"f") .
owl_Class_(X,"t"):-s48_(X,"t*") .
owl_Class_(X,"f"):-s48_(X,"f") .
s48_(X,"t*"):-s47_(X,"t*") .

s41_(X,"f");s44_(X,"f"):-node1hgd7v9f9x465_(X,"f") .
s49_(X,"t*"):-s39_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s49_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s49_(X,"f") .
s50_(X,"t*"):-s39_(X,"t*") .
node1hgd7v9f9x462_(X,"f"):-s50_(X,"t*") .
node1hgd7v9f9x462_(X,"t*"):-s50_(X,"f") .
s40_(X,"f");s49_(X,"f");s50_(X,"f"):-s39_(X,"f") .
s39_(X,"t*"):-s38_(X,"t*") .
s27_(X,"f");s37_(X,"f"):-s26_(X,"f") .
s1_(X,"t*");s26_(X,"t*"):-s0_(X,"t*") .
s51_(X,"t*"):-_property_(X,"t*") .
s52_(X,"f"):-s51_(X,"f") .
s53_(X,"t*"):-s52_(X,"t*") .
s54_(X,"f"):-s53_(X,"t*") .
s54_(X,"t*"):-s53_(X,"f") .
s55_(X,"f"):-s54_(X,"f") .
s56_(X,"t*"):-s55_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s56_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s56_(X,"f") .
s57_(X,"t*"):-s55_(X,"t*") .
node1hgd7v9f9x472_(X,"f"):-s57_(X,"t*") .
node1hgd7v9f9x472_(X,"t*"):-s57_(X,"f") .
s58_(X,"t*"):-s55_(X,"t*") .
node1hgd7v9f9x475_(X,"t*"):-s58_(X,"t*") .
node1hgd7v9f9x475_(X,"f"):-s58_(X,"f") .

s59_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
choose(s59,X,rdfs_range,0):-s59_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s60_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s59_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s59_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s60_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s59_(X,"t*") .

node1hgd7v9f9x476_(X,"f"):-s60_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s60_(X,"f") .

s61_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
s62_(X,"f"):-s61_(X,"t*") .
s62_(X,"t*"):-s61_(X,"f") .
rdfs_range_(X,@new(s62,X,rdfs_range,1..1),"t"):-choose(s62,X,rdfs_range,1) .
choose(s62,X,rdfs_range,1);choose(s62,X,rdfs_range,0):-s62_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s63_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s62_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s62_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s63_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s62_(X,"t*") .
s64_(X,"f"):-s63_(X,"t*") .
s64_(X,"t*"):-s63_(X,"f") .

node1hgd7v9f9x476_(X,"f"):-s64_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s64_(X,"f") .

s59_(X,"f");s61_(X,"f"):-node1hgd7v9f9x475_(X,"f") .
s56_(X,"f");s57_(X,"f");s58_(X,"f"):-s55_(X,"f") .
s55_(X,"t*"):-s54_(X,"t*") .
s65_(X,"t*"):-s52_(X,"t*") .
s66_(X,"t*"):-s65_(X,"t*") .
node1hgd7v9f9x465_(X,"t*"):-s66_(X,"t*") .
node1hgd7v9f9x465_(X,"f"):-s66_(X,"f") .

s67_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
choose(s67,X,rdfs_range,0):-s67_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s68_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s67_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s67_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s68_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s67_(X,"t*") .

s69_(X,"f"):-s68_(X,"f") .
owl_Class_(X,"t"):-s69_(X,"t*") .
owl_Class_(X,"f"):-s69_(X,"f") .
s69_(X,"t*"):-s68_(X,"t*") .

s70_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
s71_(X,"f"):-s70_(X,"t*") .
s71_(X,"t*"):-s70_(X,"f") .
rdfs_range_(X,@new(s71,X,rdfs_range,1..1),"t"):-choose(s71,X,rdfs_range,1) .
choose(s71,X,rdfs_range,1);choose(s71,X,rdfs_range,0):-s71_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s72_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s71_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s71_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s72_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s71_(X,"t*") .
s73_(X,"f"):-s72_(X,"t*") .
s73_(X,"t*"):-s72_(X,"f") .

s74_(X,"f"):-s73_(X,"f") .
owl_Class_(X,"t"):-s74_(X,"t*") .
owl_Class_(X,"f"):-s74_(X,"f") .
s74_(X,"t*"):-s73_(X,"t*") .

s67_(X,"f");s70_(X,"f"):-node1hgd7v9f9x465_(X,"f") .
s75_(X,"t*"):-s65_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s75_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s75_(X,"f") .
s76_(X,"t*"):-s65_(X,"t*") .
node1hgd7v9f9x462_(X,"f"):-s76_(X,"t*") .
node1hgd7v9f9x462_(X,"t*"):-s76_(X,"f") .
s66_(X,"f");s75_(X,"f");s76_(X,"f"):-s65_(X,"f") .
s53_(X,"f");s65_(X,"f"):-s52_(X,"f") .
s77_(X,"f"):-s51_(X,"f") .
s78_(X,"t*"):-s77_(X,"t*") .
s79_(X,"t*"):-s78_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s79_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s79_(X,"f") .
s80_(X,"t*"):-s78_(X,"t*") .
node1hgd7v9f9x472_(X,"f"):-s80_(X,"t*") .
node1hgd7v9f9x472_(X,"t*"):-s80_(X,"f") .
s81_(X,"t*"):-s78_(X,"t*") .
node1hgd7v9f9x475_(X,"t*"):-s81_(X,"t*") .
node1hgd7v9f9x475_(X,"f"):-s81_(X,"f") .

s82_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
choose(s82,X,rdfs_range,0):-s82_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s83_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s82_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s82_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s83_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s82_(X,"t*") .

node1hgd7v9f9x476_(X,"f"):-s83_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s83_(X,"f") .

s84_(X,"t*"):-node1hgd7v9f9x475_(X,"t*") .
s85_(X,"f"):-s84_(X,"t*") .
s85_(X,"t*"):-s84_(X,"f") .
rdfs_range_(X,@new(s85,X,rdfs_range,1..1),"t"):-choose(s85,X,rdfs_range,1) .
choose(s85,X,rdfs_range,1);choose(s85,X,rdfs_range,0):-s85_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s86_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s85_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s85_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s86_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s85_(X,"t*") .
s87_(X,"f"):-s86_(X,"t*") .
s87_(X,"t*"):-s86_(X,"f") .

node1hgd7v9f9x476_(X,"f"):-s87_(X,"t*") .
node1hgd7v9f9x476_(X,"t*"):-s87_(X,"f") .

s82_(X,"f");s84_(X,"f"):-node1hgd7v9f9x475_(X,"f") .
s79_(X,"f");s80_(X,"f");s81_(X,"f"):-s78_(X,"f") .
s88_(X,"t*"):-s77_(X,"t*") .
s89_(X,"f"):-s88_(X,"t*") .
s89_(X,"t*"):-s88_(X,"f") .
s90_(X,"f"):-s89_(X,"f") .
s91_(X,"t*"):-s90_(X,"t*") .
node1hgd7v9f9x465_(X,"t*"):-s91_(X,"t*") .
node1hgd7v9f9x465_(X,"f"):-s91_(X,"f") .

s92_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
choose(s92,X,rdfs_range,0):-s92_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s93_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s92_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s92_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s93_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s92_(X,"t*") .

s94_(X,"f"):-s93_(X,"f") .
owl_Class_(X,"t"):-s94_(X,"t*") .
owl_Class_(X,"f"):-s94_(X,"f") .
s94_(X,"t*"):-s93_(X,"t*") .

s95_(X,"t*"):-node1hgd7v9f9x465_(X,"t*") .
s96_(X,"f"):-s95_(X,"t*") .
s96_(X,"t*"):-s95_(X,"f") .
rdfs_range_(X,@new(s96,X,rdfs_range,1..1),"t"):-choose(s96,X,rdfs_range,1) .
choose(s96,X,rdfs_range,1);choose(s96,X,rdfs_range,0):-s96_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s97_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s96_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s96_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s97_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s96_(X,"t*") .
s98_(X,"f"):-s97_(X,"t*") .
s98_(X,"t*"):-s97_(X,"f") .

s99_(X,"f"):-s98_(X,"f") .
owl_Class_(X,"t"):-s99_(X,"t*") .
owl_Class_(X,"f"):-s99_(X,"f") .
s99_(X,"t*"):-s98_(X,"t*") .

s92_(X,"f");s95_(X,"f"):-node1hgd7v9f9x465_(X,"f") .
s100_(X,"t*"):-s90_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s100_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s100_(X,"f") .
s101_(X,"t*"):-s90_(X,"t*") .
node1hgd7v9f9x462_(X,"f"):-s101_(X,"t*") .
node1hgd7v9f9x462_(X,"t*"):-s101_(X,"f") .
s91_(X,"f");s100_(X,"f");s101_(X,"f"):-s90_(X,"f") .
s90_(X,"t*"):-s89_(X,"t*") .
s78_(X,"f");s88_(X,"f"):-s77_(X,"f") .
s52_(X,"t*");s77_(X,"t*"):-s51_(X,"t*") .
s0_(X,"f");s51_(X,"f"):-_property_(X,"f") .
owl_Class_(X,"t"):-_classShape_(X,"t*") .
owl_Class_(X,"f"):-_classShape_(X,"f") .

% Interpretation Rules

rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .

% Program Constraints

:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .

% Change Set Rules

add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
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
