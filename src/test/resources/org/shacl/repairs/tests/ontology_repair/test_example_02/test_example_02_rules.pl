
% Graph Data

owl_ObjectProperty("_p1") .
rdfs_range("_p1","_c") .
owl_Class("_c") .
rdfs_subPropertyOf("_p2","_p1") .
owl_DatatypeProperty("_p2") .
rdfs_range("_p2","xsd_string") .
rdfs_Datatype("xsd_string") .

% Shape Targets

targetNode("_p1",_property) .
targetNode("_p2",_property) .
targetNode("_p2",_subProperty) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_property_("_p1","t*"):-actualTarget("_p1",_property) .
_property_("_p2","t*"):-actualTarget("_p2",_property) .
_subProperty_("_p2","t*"):-actualTarget("_p2",_subProperty) .

% Annotation Rules

owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype(X) .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype_(X,"t") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-_property_(X,"t*") .
s1_(X,"f"):-s0_(X,"f") .
s2_(X,"t*"):-s1_(X,"t*") .
s3_(X,"t*"):-s2_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"f"):-s3_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"t*"):-s3_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_33caaf6da0c14839801bb5e011076ade370_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade370_(X,"f") .
s4_(X,"t*"):-s2_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s4_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s4_(X,"f") .
s5_(X,"t*"):-s2_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*"):-s5_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f"):-s5_(X,"f") .

% sh:minCount 1 for bnode_33caaf6da0c14839801bb5e011076ade373
s6_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
rdfs_range_(X,@new(s6,X,rdfs_range,1..1),"t"):-choose(s6,X,rdfs_range,1) .
choose(s6,X,rdfs_range,1);choose(s6,X,rdfs_range,0):-s6_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s7_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s6_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s7_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s6_(X,"t*") .

s8_(X,"t*"):-s7_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s8_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s8_(X,"f") .
owl_Class_(X,"t"):-bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*") .
owl_Class_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f") .
s9_(X,"t*"):-s7_(X,"t*") .
rdfs_Datatype_(X,"t"):-s9_(X,"t*") .
rdfs_Datatype_(X,"f"):-s9_(X,"f") .
s8_(X,"f");s9_(X,"f"):-s7_(X,"f") .

% universal for bnode_33caaf6da0c14839801bb5e011076ade373
s10_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
rdfs_range_(X,@new(s11,X,rdfs_range,1..1),"t"):-choose(s11,X,rdfs_range,1) .
choose(s11,X,rdfs_range,1);choose(s11,X,rdfs_range,0):-s11_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s12_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s11_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s12_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

s14_(X,"t*"):-s13_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s14_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s14_(X,"f") .
s15_(X,"t*"):-s13_(X,"t*") .
rdfs_Datatype_(X,"t"):-s15_(X,"t*") .
rdfs_Datatype_(X,"f"):-s15_(X,"f") .
s14_(X,"f");s15_(X,"f"):-s13_(X,"f") .

s6_(X,"f");s10_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f") .
s3_(X,"f");s4_(X,"f");s5_(X,"f"):-s2_(X,"f") .
s16_(X,"t*"):-s1_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
s18_(X,"f"):-s17_(X,"f") .
s19_(X,"t*"):-s18_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"f"):-s19_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"t*"):-s19_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_33caaf6da0c14839801bb5e011076ade361_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade361_(X,"f") .
s20_(X,"t*"):-s18_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s20_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s20_(X,"f") .
s21_(X,"t*"):-s18_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*"):-s21_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f"):-s21_(X,"f") .

% sh:minCount 1 for bnode_33caaf6da0c14839801bb5e011076ade364
s22_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
rdfs_range_(X,@new(s22,X,rdfs_range,1..1),"t"):-choose(s22,X,rdfs_range,1) .
choose(s22,X,rdfs_range,1);choose(s22,X,rdfs_range,0):-s22_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s23_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s22_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s23_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s22_(X,"t*") .

s24_(X,"t*"):-s23_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s24_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s24_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f") .
s25_(X,"t*"):-s23_(X,"t*") .
owl_Class_(X,"t"):-s25_(X,"t*") .
owl_Class_(X,"f"):-s25_(X,"f") .
s24_(X,"f");s25_(X,"f"):-s23_(X,"f") .

% universal for bnode_33caaf6da0c14839801bb5e011076ade364
s26_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .
rdfs_range_(X,@new(s27,X,rdfs_range,1..1),"t"):-choose(s27,X,rdfs_range,1) .
choose(s27,X,rdfs_range,1);choose(s27,X,rdfs_range,0):-s27_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s28_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s27_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s28_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s27_(X,"t*") .
s29_(X,"f"):-s28_(X,"t*") .
s29_(X,"t*"):-s28_(X,"f") .

s30_(X,"t*"):-s29_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s30_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s30_(X,"f") .
s31_(X,"t*"):-s29_(X,"t*") .
owl_Class_(X,"t"):-s31_(X,"t*") .
owl_Class_(X,"f"):-s31_(X,"f") .
s30_(X,"f");s31_(X,"f"):-s29_(X,"f") .

s22_(X,"f");s26_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f") .
s19_(X,"f");s20_(X,"f");s21_(X,"f"):-s18_(X,"f") .
s18_(X,"t*"):-s17_(X,"t*") .
s2_(X,"f");s16_(X,"f"):-s1_(X,"f") .
s32_(X,"f"):-s0_(X,"f") .
s33_(X,"t*"):-s32_(X,"t*") .
s34_(X,"f"):-s33_(X,"t*") .
s34_(X,"t*"):-s33_(X,"f") .
s35_(X,"f"):-s34_(X,"f") .
s36_(X,"t*"):-s35_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"f"):-s36_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"t*"):-s36_(X,"f") .
s37_(X,"t*"):-s35_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s37_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s37_(X,"f") .
s38_(X,"t*"):-s35_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*"):-s38_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f"):-s38_(X,"f") .

s39_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
rdfs_range_(X,@new(s39,X,rdfs_range,1..1),"t"):-choose(s39,X,rdfs_range,1) .
choose(s39,X,rdfs_range,1);choose(s39,X,rdfs_range,0):-s39_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s40_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s39_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s40_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s39_(X,"t*") .

s41_(X,"t*"):-s40_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s41_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s41_(X,"f") .
s42_(X,"t*"):-s40_(X,"t*") .
rdfs_Datatype_(X,"t"):-s42_(X,"t*") .
rdfs_Datatype_(X,"f"):-s42_(X,"f") .
s41_(X,"f");s42_(X,"f"):-s40_(X,"f") .

s43_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
rdfs_range_(X,@new(s44,X,rdfs_range,1..1),"t"):-choose(s44,X,rdfs_range,1) .
choose(s44,X,rdfs_range,1);choose(s44,X,rdfs_range,0):-s44_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s45_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s44_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s44_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s45_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s44_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .

s47_(X,"t*"):-s46_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s47_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s47_(X,"f") .
s48_(X,"t*"):-s46_(X,"t*") .
rdfs_Datatype_(X,"t"):-s48_(X,"t*") .
rdfs_Datatype_(X,"f"):-s48_(X,"f") .
s47_(X,"f");s48_(X,"f"):-s46_(X,"f") .

s39_(X,"f");s43_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f") .
s36_(X,"f");s37_(X,"f");s38_(X,"f"):-s35_(X,"f") .
s35_(X,"t*"):-s34_(X,"t*") .
s49_(X,"t*"):-s32_(X,"t*") .
s50_(X,"t*"):-s49_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"f"):-s50_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"t*"):-s50_(X,"f") .
s51_(X,"t*"):-s49_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s51_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s51_(X,"f") .
s52_(X,"t*"):-s49_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*"):-s52_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f"):-s52_(X,"f") .

s53_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
rdfs_range_(X,@new(s53,X,rdfs_range,1..1),"t"):-choose(s53,X,rdfs_range,1) .
choose(s53,X,rdfs_range,1);choose(s53,X,rdfs_range,0):-s53_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s54_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s53_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s54_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s53_(X,"t*") .

s55_(X,"t*"):-s54_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s55_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s55_(X,"f") .
s56_(X,"t*"):-s54_(X,"t*") .
owl_Class_(X,"t"):-s56_(X,"t*") .
owl_Class_(X,"f"):-s56_(X,"f") .
s55_(X,"f");s56_(X,"f"):-s54_(X,"f") .

s57_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
s58_(X,"f"):-s57_(X,"t*") .
s58_(X,"t*"):-s57_(X,"f") .
rdfs_range_(X,@new(s58,X,rdfs_range,1..1),"t"):-choose(s58,X,rdfs_range,1) .
choose(s58,X,rdfs_range,1);choose(s58,X,rdfs_range,0):-s58_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s59_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s58_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s58_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s59_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s58_(X,"t*") .
s60_(X,"f"):-s59_(X,"t*") .
s60_(X,"t*"):-s59_(X,"f") .

s61_(X,"t*"):-s60_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s61_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s61_(X,"f") .
s62_(X,"t*"):-s60_(X,"t*") .
owl_Class_(X,"t"):-s62_(X,"t*") .
owl_Class_(X,"f"):-s62_(X,"f") .
s61_(X,"f");s62_(X,"f"):-s60_(X,"f") .

s53_(X,"f");s57_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f") .
s50_(X,"f");s51_(X,"f");s52_(X,"f"):-s49_(X,"f") .
s33_(X,"f");s49_(X,"f"):-s32_(X,"f") .
s1_(X,"t*");s32_(X,"t*"):-s0_(X,"t*") .
s63_(X,"t*"):-_property_(X,"t*") .
s64_(X,"f"):-s63_(X,"f") .
s65_(X,"t*"):-s64_(X,"t*") .
s66_(X,"t*"):-s65_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"f"):-s66_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"t*"):-s66_(X,"f") .
s67_(X,"t*"):-s65_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s67_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s67_(X,"f") .
s68_(X,"t*"):-s65_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*"):-s68_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f"):-s68_(X,"f") .

s69_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
rdfs_range_(X,@new(s69,X,rdfs_range,1..1),"t"):-choose(s69,X,rdfs_range,1) .
choose(s69,X,rdfs_range,1);choose(s69,X,rdfs_range,0):-s69_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s70_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s69_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s69_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s70_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s69_(X,"t*") .

s71_(X,"t*"):-s70_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s71_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s71_(X,"f") .
s72_(X,"t*"):-s70_(X,"t*") .
owl_Class_(X,"t"):-s72_(X,"t*") .
owl_Class_(X,"f"):-s72_(X,"f") .
s71_(X,"f");s72_(X,"f"):-s70_(X,"f") .

s73_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
s74_(X,"f"):-s73_(X,"t*") .
s74_(X,"t*"):-s73_(X,"f") .
rdfs_range_(X,@new(s74,X,rdfs_range,1..1),"t"):-choose(s74,X,rdfs_range,1) .
choose(s74,X,rdfs_range,1);choose(s74,X,rdfs_range,0):-s74_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s75_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s74_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s74_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s75_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s74_(X,"t*") .
s76_(X,"f"):-s75_(X,"t*") .
s76_(X,"t*"):-s75_(X,"f") .

s77_(X,"t*"):-s76_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s77_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s77_(X,"f") .
s78_(X,"t*"):-s76_(X,"t*") .
owl_Class_(X,"t"):-s78_(X,"t*") .
owl_Class_(X,"f"):-s78_(X,"f") .
s77_(X,"f");s78_(X,"f"):-s76_(X,"f") .

s69_(X,"f");s73_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f") .
s66_(X,"f");s67_(X,"f");s68_(X,"f"):-s65_(X,"f") .
s79_(X,"t*"):-s64_(X,"t*") .
s80_(X,"f"):-s79_(X,"t*") .
s80_(X,"t*"):-s79_(X,"f") .
s81_(X,"f"):-s80_(X,"f") .
s82_(X,"t*"):-s81_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"f"):-s82_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"t*"):-s82_(X,"f") .
s83_(X,"t*"):-s81_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s83_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s83_(X,"f") .
s84_(X,"t*"):-s81_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*"):-s84_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f"):-s84_(X,"f") .

s85_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
rdfs_range_(X,@new(s85,X,rdfs_range,1..1),"t"):-choose(s85,X,rdfs_range,1) .
choose(s85,X,rdfs_range,1);choose(s85,X,rdfs_range,0):-s85_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s86_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s85_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s85_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s86_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s85_(X,"t*") .

s87_(X,"t*"):-s86_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s87_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s87_(X,"f") .
s88_(X,"t*"):-s86_(X,"t*") .
rdfs_Datatype_(X,"t"):-s88_(X,"t*") .
rdfs_Datatype_(X,"f"):-s88_(X,"f") .
s87_(X,"f");s88_(X,"f"):-s86_(X,"f") .

s89_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
s90_(X,"f"):-s89_(X,"t*") .
s90_(X,"t*"):-s89_(X,"f") .
rdfs_range_(X,@new(s90,X,rdfs_range,1..1),"t"):-choose(s90,X,rdfs_range,1) .
choose(s90,X,rdfs_range,1);choose(s90,X,rdfs_range,0):-s90_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s91_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s90_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s90_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s91_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s90_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .

s93_(X,"t*"):-s92_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s93_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s93_(X,"f") .
s94_(X,"t*"):-s92_(X,"t*") .
rdfs_Datatype_(X,"t"):-s94_(X,"t*") .
rdfs_Datatype_(X,"f"):-s94_(X,"f") .
s93_(X,"f");s94_(X,"f"):-s92_(X,"f") .

s85_(X,"f");s89_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f") .
s82_(X,"f");s83_(X,"f");s84_(X,"f"):-s81_(X,"f") .
s81_(X,"t*"):-s80_(X,"t*") .
s65_(X,"f");s79_(X,"f"):-s64_(X,"f") .
s95_(X,"f"):-s63_(X,"f") .
s96_(X,"t*"):-s95_(X,"t*") .
s97_(X,"t*"):-s96_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"f"):-s97_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"t*"):-s97_(X,"f") .
s98_(X,"t*"):-s96_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s98_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s98_(X,"f") .
s99_(X,"t*"):-s96_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*"):-s99_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f"):-s99_(X,"f") .

s100_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
rdfs_range_(X,@new(s100,X,rdfs_range,1..1),"t"):-choose(s100,X,rdfs_range,1) .
choose(s100,X,rdfs_range,1);choose(s100,X,rdfs_range,0):-s100_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s101_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s100_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s100_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s101_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s100_(X,"t*") .

s102_(X,"t*"):-s101_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s102_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s102_(X,"f") .
s103_(X,"t*"):-s101_(X,"t*") .
rdfs_Datatype_(X,"t"):-s103_(X,"t*") .
rdfs_Datatype_(X,"f"):-s103_(X,"f") .
s102_(X,"f");s103_(X,"f"):-s101_(X,"f") .

s104_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
s105_(X,"f"):-s104_(X,"t*") .
s105_(X,"t*"):-s104_(X,"f") .
rdfs_range_(X,@new(s105,X,rdfs_range,1..1),"t"):-choose(s105,X,rdfs_range,1) .
choose(s105,X,rdfs_range,1);choose(s105,X,rdfs_range,0):-s105_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s106_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s105_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s105_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s106_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s105_(X,"t*") .
s107_(X,"f"):-s106_(X,"t*") .
s107_(X,"t*"):-s106_(X,"f") .

s108_(X,"t*"):-s107_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s108_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s108_(X,"f") .
s109_(X,"t*"):-s107_(X,"t*") .
rdfs_Datatype_(X,"t"):-s109_(X,"t*") .
rdfs_Datatype_(X,"f"):-s109_(X,"f") .
s108_(X,"f");s109_(X,"f"):-s107_(X,"f") .

s100_(X,"f");s104_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f") .
s97_(X,"f");s98_(X,"f");s99_(X,"f"):-s96_(X,"f") .
s110_(X,"t*"):-s95_(X,"t*") .
s111_(X,"f"):-s110_(X,"t*") .
s111_(X,"t*"):-s110_(X,"f") .
s112_(X,"f"):-s111_(X,"f") .
s113_(X,"t*"):-s112_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"f"):-s113_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"t*"):-s113_(X,"f") .
s114_(X,"t*"):-s112_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s114_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s114_(X,"f") .
s115_(X,"t*"):-s112_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*"):-s115_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f"):-s115_(X,"f") .

s116_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
rdfs_range_(X,@new(s116,X,rdfs_range,1..1),"t"):-choose(s116,X,rdfs_range,1) .
choose(s116,X,rdfs_range,1);choose(s116,X,rdfs_range,0):-s116_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s117_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s116_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s116_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s117_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s116_(X,"t*") .

s118_(X,"t*"):-s117_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s118_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s118_(X,"f") .
s119_(X,"t*"):-s117_(X,"t*") .
owl_Class_(X,"t"):-s119_(X,"t*") .
owl_Class_(X,"f"):-s119_(X,"f") .
s118_(X,"f");s119_(X,"f"):-s117_(X,"f") .

s120_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
s121_(X,"f"):-s120_(X,"t*") .
s121_(X,"t*"):-s120_(X,"f") .
rdfs_range_(X,@new(s121,X,rdfs_range,1..1),"t"):-choose(s121,X,rdfs_range,1) .
choose(s121,X,rdfs_range,1);choose(s121,X,rdfs_range,0):-s121_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s122_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s121_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s121_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s122_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s121_(X,"t*") .
s123_(X,"f"):-s122_(X,"t*") .
s123_(X,"t*"):-s122_(X,"f") .

s124_(X,"t*"):-s123_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s124_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s124_(X,"f") .
s125_(X,"t*"):-s123_(X,"t*") .
owl_Class_(X,"t"):-s125_(X,"t*") .
owl_Class_(X,"f"):-s125_(X,"f") .
s124_(X,"f");s125_(X,"f"):-s123_(X,"f") .

s116_(X,"f");s120_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f") .
s113_(X,"f");s114_(X,"f");s115_(X,"f"):-s112_(X,"f") .
s112_(X,"t*"):-s111_(X,"t*") .
s96_(X,"f");s110_(X,"f"):-s95_(X,"f") .
s64_(X,"t*");s95_(X,"t*"):-s63_(X,"t*") .
s126_(X,"t*"):-_property_(X,"t*") .
s127_(X,"f"):-s126_(X,"f") .
s128_(X,"t*"):-s127_(X,"t*") .
s129_(X,"t*"):-s128_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"f"):-s129_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"t*"):-s129_(X,"f") .
s130_(X,"t*"):-s128_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s130_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s130_(X,"f") .
s131_(X,"t*"):-s128_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*"):-s131_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f"):-s131_(X,"f") .

s132_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
rdfs_range_(X,@new(s132,X,rdfs_range,1..1),"t"):-choose(s132,X,rdfs_range,1) .
choose(s132,X,rdfs_range,1);choose(s132,X,rdfs_range,0):-s132_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s133_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s132_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s132_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s133_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s132_(X,"t*") .

s134_(X,"t*"):-s133_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s134_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s134_(X,"f") .
s135_(X,"t*"):-s133_(X,"t*") .
rdfs_Datatype_(X,"t"):-s135_(X,"t*") .
rdfs_Datatype_(X,"f"):-s135_(X,"f") .
s134_(X,"f");s135_(X,"f"):-s133_(X,"f") .

s136_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
s137_(X,"f"):-s136_(X,"t*") .
s137_(X,"t*"):-s136_(X,"f") .
rdfs_range_(X,@new(s137,X,rdfs_range,1..1),"t"):-choose(s137,X,rdfs_range,1) .
choose(s137,X,rdfs_range,1);choose(s137,X,rdfs_range,0):-s137_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s138_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s137_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s137_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s138_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s137_(X,"t*") .
s139_(X,"f"):-s138_(X,"t*") .
s139_(X,"t*"):-s138_(X,"f") .

s140_(X,"t*"):-s139_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s140_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s140_(X,"f") .
s141_(X,"t*"):-s139_(X,"t*") .
rdfs_Datatype_(X,"t"):-s141_(X,"t*") .
rdfs_Datatype_(X,"f"):-s141_(X,"f") .
s140_(X,"f");s141_(X,"f"):-s139_(X,"f") .

s132_(X,"f");s136_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f") .
s129_(X,"f");s130_(X,"f");s131_(X,"f"):-s128_(X,"f") .
s142_(X,"t*"):-s127_(X,"t*") .
s143_(X,"f"):-s142_(X,"t*") .
s143_(X,"t*"):-s142_(X,"f") .
s144_(X,"f"):-s143_(X,"f") .
s145_(X,"t*"):-s144_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"f"):-s145_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"t*"):-s145_(X,"f") .
s146_(X,"t*"):-s144_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s146_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s146_(X,"f") .
s147_(X,"t*"):-s144_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*"):-s147_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f"):-s147_(X,"f") .

s148_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
rdfs_range_(X,@new(s148,X,rdfs_range,1..1),"t"):-choose(s148,X,rdfs_range,1) .
choose(s148,X,rdfs_range,1);choose(s148,X,rdfs_range,0):-s148_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s149_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s148_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s148_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s149_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s148_(X,"t*") .

s150_(X,"t*"):-s149_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s150_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s150_(X,"f") .
s151_(X,"t*"):-s149_(X,"t*") .
owl_Class_(X,"t"):-s151_(X,"t*") .
owl_Class_(X,"f"):-s151_(X,"f") .
s150_(X,"f");s151_(X,"f"):-s149_(X,"f") .

s152_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
s153_(X,"f"):-s152_(X,"t*") .
s153_(X,"t*"):-s152_(X,"f") .
rdfs_range_(X,@new(s153,X,rdfs_range,1..1),"t"):-choose(s153,X,rdfs_range,1) .
choose(s153,X,rdfs_range,1);choose(s153,X,rdfs_range,0):-s153_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s154_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s153_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s153_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s154_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s153_(X,"t*") .
s155_(X,"f"):-s154_(X,"t*") .
s155_(X,"t*"):-s154_(X,"f") .

s156_(X,"t*"):-s155_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s156_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s156_(X,"f") .
s157_(X,"t*"):-s155_(X,"t*") .
owl_Class_(X,"t"):-s157_(X,"t*") .
owl_Class_(X,"f"):-s157_(X,"f") .
s156_(X,"f");s157_(X,"f"):-s155_(X,"f") .

s148_(X,"f");s152_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f") .
s145_(X,"f");s146_(X,"f");s147_(X,"f"):-s144_(X,"f") .
s144_(X,"t*"):-s143_(X,"t*") .
s128_(X,"f");s142_(X,"f"):-s127_(X,"f") .
s158_(X,"f"):-s126_(X,"f") .
s159_(X,"t*"):-s158_(X,"t*") .
s160_(X,"t*"):-s159_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"f"):-s160_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade361_(X,"t*"):-s160_(X,"f") .
s161_(X,"t*"):-s159_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s161_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s161_(X,"f") .
s162_(X,"t*"):-s159_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*"):-s162_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f"):-s162_(X,"f") .

s163_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
rdfs_range_(X,@new(s163,X,rdfs_range,1..1),"t"):-choose(s163,X,rdfs_range,1) .
choose(s163,X,rdfs_range,1);choose(s163,X,rdfs_range,0):-s163_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s164_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s163_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s163_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s164_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s163_(X,"t*") .

s165_(X,"t*"):-s164_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s165_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s165_(X,"f") .
s166_(X,"t*"):-s164_(X,"t*") .
owl_Class_(X,"t"):-s166_(X,"t*") .
owl_Class_(X,"f"):-s166_(X,"f") .
s165_(X,"f");s166_(X,"f"):-s164_(X,"f") .

s167_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"t*") .
s168_(X,"f"):-s167_(X,"t*") .
s168_(X,"t*"):-s167_(X,"f") .
rdfs_range_(X,@new(s168,X,rdfs_range,1..1),"t"):-choose(s168,X,rdfs_range,1) .
choose(s168,X,rdfs_range,1);choose(s168,X,rdfs_range,0):-s168_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s169_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s168_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s168_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s169_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s168_(X,"t*") .
s170_(X,"f"):-s169_(X,"t*") .
s170_(X,"t*"):-s169_(X,"f") .

s171_(X,"t*"):-s170_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"f"):-s171_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade365_(X,"t*"):-s171_(X,"f") .
s172_(X,"t*"):-s170_(X,"t*") .
owl_Class_(X,"t"):-s172_(X,"t*") .
owl_Class_(X,"f"):-s172_(X,"f") .
s171_(X,"f");s172_(X,"f"):-s170_(X,"f") .

s163_(X,"f");s167_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade364_(X,"f") .
s160_(X,"f");s161_(X,"f");s162_(X,"f"):-s159_(X,"f") .
s173_(X,"t*"):-s158_(X,"t*") .
s174_(X,"f"):-s173_(X,"t*") .
s174_(X,"t*"):-s173_(X,"f") .
s175_(X,"f"):-s174_(X,"f") .
s176_(X,"t*"):-s175_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"f"):-s176_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade370_(X,"t*"):-s176_(X,"f") .
s177_(X,"t*"):-s175_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s177_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s177_(X,"f") .
s178_(X,"t*"):-s175_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*"):-s178_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f"):-s178_(X,"f") .

s179_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
rdfs_range_(X,@new(s179,X,rdfs_range,1..1),"t"):-choose(s179,X,rdfs_range,1) .
choose(s179,X,rdfs_range,1);choose(s179,X,rdfs_range,0):-s179_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s180_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s179_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s179_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s180_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s179_(X,"t*") .

s181_(X,"t*"):-s180_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s181_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s181_(X,"f") .
s182_(X,"t*"):-s180_(X,"t*") .
rdfs_Datatype_(X,"t"):-s182_(X,"t*") .
rdfs_Datatype_(X,"f"):-s182_(X,"f") .
s181_(X,"f");s182_(X,"f"):-s180_(X,"f") .

s183_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"t*") .
s184_(X,"f"):-s183_(X,"t*") .
s184_(X,"t*"):-s183_(X,"f") .
rdfs_range_(X,@new(s184,X,rdfs_range,1..1),"t"):-choose(s184,X,rdfs_range,1) .
choose(s184,X,rdfs_range,1);choose(s184,X,rdfs_range,0):-s184_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s185_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s184_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s184_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s185_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s184_(X,"t*") .
s186_(X,"f"):-s185_(X,"t*") .
s186_(X,"t*"):-s185_(X,"f") .

s187_(X,"t*"):-s186_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"f"):-s187_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade374_(X,"t*"):-s187_(X,"f") .
s188_(X,"t*"):-s186_(X,"t*") .
rdfs_Datatype_(X,"t"):-s188_(X,"t*") .
rdfs_Datatype_(X,"f"):-s188_(X,"f") .
s187_(X,"f");s188_(X,"f"):-s186_(X,"f") .

s179_(X,"f");s183_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade373_(X,"f") .
s176_(X,"f");s177_(X,"f");s178_(X,"f"):-s175_(X,"f") .
s175_(X,"t*"):-s174_(X,"t*") .
s159_(X,"f");s173_(X,"f"):-s158_(X,"f") .
s127_(X,"t*");s158_(X,"t*"):-s126_(X,"t*") .
s0_(X,"f");s63_(X,"f");s126_(X,"f"):-_property_(X,"f") .
s189_(X,"f"):-_subProperty_(X,"f") .
s190_(X,"t*"):-s189_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade381_(X,"t*"):-s190_(X,"t*") .

% sh:minCount 0 for bnode_33caaf6da0c14839801bb5e011076ade381
s191_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade381_(X,"t*") .
choose(s191,X,rdfs_subPropertyOf,0):-s191_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s192_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s191_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s191_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s192_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s191_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s192_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s192_(X,"f") .

% universal for bnode_33caaf6da0c14839801bb5e011076ade381
s193_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade381_(X,"t*") .
s194_(X,"f"):-s193_(X,"t*") .
s194_(X,"t*"):-s193_(X,"f") .
rdfs_subPropertyOf_(X,@new(s194,X,rdfs_subPropertyOf,1..1),"t"):-choose(s194,X,rdfs_subPropertyOf,1) .
choose(s194,X,rdfs_subPropertyOf,1);choose(s194,X,rdfs_subPropertyOf,0):-s194_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s195_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s194_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s194_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s195_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s194_(X,"t*") .
s196_(X,"f"):-s195_(X,"t*") .
s196_(X,"t*"):-s195_(X,"f") .

owl_ObjectProperty_(X,"t"):-s196_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s196_(X,"f") .

s191_(X,"f");s193_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade381_(X,"f") .
s197_(X,"t*"):-s190_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s197_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s197_(X,"f") .
bnode_33caaf6da0c14839801bb5e011076ade381_(X,"f");s197_(X,"f"):-s190_(X,"f") .
s198_(X,"t*"):-s189_(X,"t*") .
s199_(X,"f"):-s198_(X,"t*") .
s199_(X,"t*"):-s198_(X,"f") .
s200_(X,"f"):-s199_(X,"f") .
bnode_33caaf6da0c14839801bb5e011076ade384_(X,"t*"):-s200_(X,"t*") .

% sh:minCount 0 for bnode_33caaf6da0c14839801bb5e011076ade384
s201_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade384_(X,"t*") .
choose(s201,X,rdfs_subPropertyOf,0):-s201_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s202_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s201_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s201_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s202_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s201_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s202_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s202_(X,"f") .

% universal for bnode_33caaf6da0c14839801bb5e011076ade384
s203_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade384_(X,"t*") .
s204_(X,"f"):-s203_(X,"t*") .
s204_(X,"t*"):-s203_(X,"f") .
rdfs_subPropertyOf_(X,@new(s204,X,rdfs_subPropertyOf,1..1),"t"):-choose(s204,X,rdfs_subPropertyOf,1) .
choose(s204,X,rdfs_subPropertyOf,1);choose(s204,X,rdfs_subPropertyOf,0):-s204_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s205_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s204_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s204_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s205_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s204_(X,"t*") .
s206_(X,"f"):-s205_(X,"t*") .
s206_(X,"t*"):-s205_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s206_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s206_(X,"f") .

s201_(X,"f");s203_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade384_(X,"f") .
s207_(X,"t*"):-s200_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s207_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s207_(X,"f") .
bnode_33caaf6da0c14839801bb5e011076ade384_(X,"f");s207_(X,"f"):-s200_(X,"f") .
s200_(X,"t*"):-s199_(X,"t*") .
s190_(X,"f");s198_(X,"f"):-s189_(X,"f") .
s208_(X,"f"):-_subProperty_(X,"f") .
s209_(X,"t*"):-s208_(X,"t*") .
bnode_33caaf6da0c14839801bb5e011076ade384_(X,"t*"):-s209_(X,"t*") .

s210_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade384_(X,"t*") .
choose(s210,X,rdfs_subPropertyOf,0):-s210_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s211_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s210_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s210_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s211_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s210_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s211_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s211_(X,"f") .

s212_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade384_(X,"t*") .
s213_(X,"f"):-s212_(X,"t*") .
s213_(X,"t*"):-s212_(X,"f") .
rdfs_subPropertyOf_(X,@new(s213,X,rdfs_subPropertyOf,1..1),"t"):-choose(s213,X,rdfs_subPropertyOf,1) .
choose(s213,X,rdfs_subPropertyOf,1);choose(s213,X,rdfs_subPropertyOf,0):-s213_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s214_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s213_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s213_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s214_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s213_(X,"t*") .
s215_(X,"f"):-s214_(X,"t*") .
s215_(X,"t*"):-s214_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s215_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s215_(X,"f") .

s210_(X,"f");s212_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade384_(X,"f") .
s216_(X,"t*"):-s209_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s216_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s216_(X,"f") .
bnode_33caaf6da0c14839801bb5e011076ade384_(X,"f");s216_(X,"f"):-s209_(X,"f") .
s217_(X,"t*"):-s208_(X,"t*") .
s218_(X,"f"):-s217_(X,"t*") .
s218_(X,"t*"):-s217_(X,"f") .
s219_(X,"f"):-s218_(X,"f") .
bnode_33caaf6da0c14839801bb5e011076ade381_(X,"t*"):-s219_(X,"t*") .

s220_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade381_(X,"t*") .
choose(s220,X,rdfs_subPropertyOf,0):-s220_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s221_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s220_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s220_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s221_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s220_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s221_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s221_(X,"f") .

s222_(X,"t*"):-bnode_33caaf6da0c14839801bb5e011076ade381_(X,"t*") .
s223_(X,"f"):-s222_(X,"t*") .
s223_(X,"t*"):-s222_(X,"f") .
rdfs_subPropertyOf_(X,@new(s223,X,rdfs_subPropertyOf,1..1),"t"):-choose(s223,X,rdfs_subPropertyOf,1) .
choose(s223,X,rdfs_subPropertyOf,1);choose(s223,X,rdfs_subPropertyOf,0):-s223_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s224_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s223_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-s223_(X,"f"),rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
1 {s224_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s223_(X,"t*") .
s225_(X,"f"):-s224_(X,"t*") .
s225_(X,"t*"):-s224_(X,"f") .

owl_ObjectProperty_(X,"t"):-s225_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s225_(X,"f") .

s220_(X,"f");s222_(X,"f"):-bnode_33caaf6da0c14839801bb5e011076ade381_(X,"f") .
s226_(X,"t*"):-s219_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s226_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s226_(X,"f") .
bnode_33caaf6da0c14839801bb5e011076ade381_(X,"f");s226_(X,"f"):-s219_(X,"f") .
s219_(X,"t*"):-s218_(X,"t*") .
s209_(X,"f");s217_(X,"f"):-s208_(X,"f") .
s189_(X,"t*");s208_(X,"t*"):-_subProperty_(X,"t*") .

% Interpretation Rules

owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
rdfs_Datatype_(X,"t**"):-rdfs_Datatype_(X,"t*"),not rdfs_Datatype_(X,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .

% Program Constraints

:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-rdfs_Datatype_(X,"t"),rdfs_Datatype_(X,"f") .
:-rdfs_subPropertyOf_(X,Y,"t"),rdfs_subPropertyOf_(X,Y,"f") .

% Change Set Rules

add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(rdfs_Datatype(X)):-rdfs_Datatype_(X,"t**"),not rdfs_Datatype(X) .
del(rdfs_Datatype(X)):-rdfs_Datatype_(X,"f"),rdfs_Datatype(X) .
add(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"t**"),not rdfs_subPropertyOf(X,Y) .
del(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"f"),rdfs_subPropertyOf(X,Y) .
% Get all optimal models: --opt-mode=optN -n 100 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,D: add(D); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .
:-del(rdfs_subPropertyOf(X,Y)) .

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
