
% Graph Data

rdf_Property("_p1") .
rdfs_range("_p1","_x") .
rdf_Property("_p3") .
owl_ObjectProperty("_p2") .
owl_DatatypeProperty("_p2") .
owl_Class("_x") .

% Shape Targets

targetNode("_p1",_property) .
targetNode("_x",_classShape) .
targetNode("_p2",_property) .
targetNode("_p3",_property) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_property_("_p1","t*"):-actualTarget("_p1",_property) .
_classShape_("_x","t*"):-actualTarget("_x",_classShape) .
_property_("_p2","t*"):-actualTarget("_p2",_property) .
_property_("_p3","t*"):-actualTarget("_p3",_property) .

% Annotation Rules

owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .

% Repair Rules

s0_(X,"t*"):-_property_(X,"t*") .
s1_(X,"f"):-s0_(X,"f") .
s2_(X,"t*"):-s1_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
s4_(X,"f"):-s3_(X,"f") .
s5_(X,"t*"):-s4_(X,"t*") .
node1hgd7v9f9x412_(X,"f"):-s5_(X,"t*") .
node1hgd7v9f9x412_(X,"t*"):-s5_(X,"f") .
owl_ObjectProperty_(X,"t"):-node1hgd7v9f9x412_(X,"t*") .
owl_ObjectProperty_(X,"f"):-node1hgd7v9f9x412_(X,"f") .
s6_(X,"t*"):-s4_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s6_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s6_(X,"f") .
s7_(X,"t*"):-s4_(X,"t*") .
node1hgd7v9f9x415_(X,"t*"):-s7_(X,"t*") .
node1hgd7v9f9x415_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for node1hgd7v9f9x415
s8_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
choose(s8,X,rdfs_range,0):-s8_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s9_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s8_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s9_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s8_(X,"t*") .

node1hgd7v9f9x416_(X,"f"):-s9_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s9_(X,"f") .
owl_Class_(X,"t"):-node1hgd7v9f9x416_(X,"t*") .
owl_Class_(X,"f"):-node1hgd7v9f9x416_(X,"f") .

% universal for node1hgd7v9f9x415
s10_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
rdfs_range_(X,@new(s11,X,rdfs_range,1..1),"t"):-choose(s11,X,rdfs_range,1) .
choose(s11,X,rdfs_range,1);choose(s11,X,rdfs_range,0):-s11_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s12_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s11_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s12_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

node1hgd7v9f9x416_(X,"f"):-s13_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s13_(X,"f") .

s8_(X,"f");s10_(X,"f"):-node1hgd7v9f9x415_(X,"f") .
s5_(X,"f");s6_(X,"f");s7_(X,"f"):-s4_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
s14_(X,"t*"):-s1_(X,"t*") .
s15_(X,"t*"):-s14_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s15_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s15_(X,"f") .
s16_(X,"t*"):-s14_(X,"t*") .
node1hgd7v9f9x407_(X,"t*"):-s16_(X,"t*") .
node1hgd7v9f9x407_(X,"f"):-s16_(X,"f") .

% sh:minCount 0 for node1hgd7v9f9x407
s17_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
choose(s17,X,rdfs_range,0):-s17_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s18_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s17_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s18_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s17_(X,"t*") .

owl_Class_(X,"t"):-s18_(X,"t*") .
owl_Class_(X,"f"):-s18_(X,"f") .

% universal for node1hgd7v9f9x407
s19_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
rdfs_range_(X,@new(s20,X,rdfs_range,1..1),"t"):-choose(s20,X,rdfs_range,1) .
choose(s20,X,rdfs_range,1);choose(s20,X,rdfs_range,0):-s20_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s21_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s20_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s21_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .

owl_Class_(X,"t"):-s22_(X,"t*") .
owl_Class_(X,"f"):-s22_(X,"f") .

s17_(X,"f");s19_(X,"f"):-node1hgd7v9f9x407_(X,"f") .
s23_(X,"t*"):-s14_(X,"t*") .
node1hgd7v9f9x404_(X,"f"):-s23_(X,"t*") .
node1hgd7v9f9x404_(X,"t*"):-s23_(X,"f") .
owl_DatatypeProperty_(X,"t"):-node1hgd7v9f9x404_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-node1hgd7v9f9x404_(X,"f") .
s15_(X,"f");s16_(X,"f");s23_(X,"f"):-s14_(X,"f") .
s2_(X,"f");s14_(X,"f"):-s1_(X,"f") .
s24_(X,"f"):-s0_(X,"f") .
s25_(X,"t*"):-s24_(X,"t*") .
s26_(X,"f"):-s25_(X,"t*") .
s26_(X,"t*"):-s25_(X,"f") .
s27_(X,"f"):-s26_(X,"f") .
s28_(X,"t*"):-s27_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s28_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s28_(X,"f") .
s29_(X,"t*"):-s27_(X,"t*") .
node1hgd7v9f9x407_(X,"t*"):-s29_(X,"t*") .
node1hgd7v9f9x407_(X,"f"):-s29_(X,"f") .

s30_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
choose(s30,X,rdfs_range,0):-s30_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s31_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s30_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s31_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s30_(X,"t*") .

owl_Class_(X,"t"):-s31_(X,"t*") .
owl_Class_(X,"f"):-s31_(X,"f") .

s32_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .
rdfs_range_(X,@new(s33,X,rdfs_range,1..1),"t"):-choose(s33,X,rdfs_range,1) .
choose(s33,X,rdfs_range,1);choose(s33,X,rdfs_range,0):-s33_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s34_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s33_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s33_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s34_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s33_(X,"t*") .
s35_(X,"f"):-s34_(X,"t*") .
s35_(X,"t*"):-s34_(X,"f") .

owl_Class_(X,"t"):-s35_(X,"t*") .
owl_Class_(X,"f"):-s35_(X,"f") .

s30_(X,"f");s32_(X,"f"):-node1hgd7v9f9x407_(X,"f") .
s36_(X,"t*"):-s27_(X,"t*") .
node1hgd7v9f9x404_(X,"f"):-s36_(X,"t*") .
node1hgd7v9f9x404_(X,"t*"):-s36_(X,"f") .
s28_(X,"f");s29_(X,"f");s36_(X,"f"):-s27_(X,"f") .
s27_(X,"t*"):-s26_(X,"t*") .
s37_(X,"t*"):-s24_(X,"t*") .
s38_(X,"t*"):-s37_(X,"t*") .
node1hgd7v9f9x412_(X,"f"):-s38_(X,"t*") .
node1hgd7v9f9x412_(X,"t*"):-s38_(X,"f") .
s39_(X,"t*"):-s37_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s39_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s39_(X,"f") .
s40_(X,"t*"):-s37_(X,"t*") .
node1hgd7v9f9x415_(X,"t*"):-s40_(X,"t*") .
node1hgd7v9f9x415_(X,"f"):-s40_(X,"f") .

s41_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
choose(s41,X,rdfs_range,0):-s41_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s42_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s41_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s42_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s41_(X,"t*") .

node1hgd7v9f9x416_(X,"f"):-s42_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s42_(X,"f") .

s43_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
rdfs_range_(X,@new(s44,X,rdfs_range,1..1),"t"):-choose(s44,X,rdfs_range,1) .
choose(s44,X,rdfs_range,1);choose(s44,X,rdfs_range,0):-s44_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s45_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s44_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s44_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s45_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s44_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .

node1hgd7v9f9x416_(X,"f"):-s46_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s46_(X,"f") .

s41_(X,"f");s43_(X,"f"):-node1hgd7v9f9x415_(X,"f") .
s38_(X,"f");s39_(X,"f");s40_(X,"f"):-s37_(X,"f") .
s25_(X,"f");s37_(X,"f"):-s24_(X,"f") .
s1_(X,"t*");s24_(X,"t*"):-s0_(X,"t*") .
s47_(X,"t*"):-_property_(X,"t*") .
s48_(X,"f"):-s47_(X,"f") .
s49_(X,"t*"):-s48_(X,"t*") .
s50_(X,"f"):-s49_(X,"t*") .
s50_(X,"t*"):-s49_(X,"f") .
s51_(X,"f"):-s50_(X,"f") .
s52_(X,"t*"):-s51_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s52_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s52_(X,"f") .
s53_(X,"t*"):-s51_(X,"t*") .
node1hgd7v9f9x407_(X,"t*"):-s53_(X,"t*") .
node1hgd7v9f9x407_(X,"f"):-s53_(X,"f") .

s54_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
choose(s54,X,rdfs_range,0):-s54_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s55_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s54_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s54_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s55_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s54_(X,"t*") .

owl_Class_(X,"t"):-s55_(X,"t*") .
owl_Class_(X,"f"):-s55_(X,"f") .

s56_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
s57_(X,"f"):-s56_(X,"t*") .
s57_(X,"t*"):-s56_(X,"f") .
rdfs_range_(X,@new(s57,X,rdfs_range,1..1),"t"):-choose(s57,X,rdfs_range,1) .
choose(s57,X,rdfs_range,1);choose(s57,X,rdfs_range,0):-s57_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s58_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s57_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s57_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s58_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s57_(X,"t*") .
s59_(X,"f"):-s58_(X,"t*") .
s59_(X,"t*"):-s58_(X,"f") .

owl_Class_(X,"t"):-s59_(X,"t*") .
owl_Class_(X,"f"):-s59_(X,"f") .

s54_(X,"f");s56_(X,"f"):-node1hgd7v9f9x407_(X,"f") .
s60_(X,"t*"):-s51_(X,"t*") .
node1hgd7v9f9x404_(X,"f"):-s60_(X,"t*") .
node1hgd7v9f9x404_(X,"t*"):-s60_(X,"f") .
s52_(X,"f");s53_(X,"f");s60_(X,"f"):-s51_(X,"f") .
s51_(X,"t*"):-s50_(X,"t*") .
s61_(X,"t*"):-s48_(X,"t*") .
s62_(X,"t*"):-s61_(X,"t*") .
node1hgd7v9f9x412_(X,"f"):-s62_(X,"t*") .
node1hgd7v9f9x412_(X,"t*"):-s62_(X,"f") .
s63_(X,"t*"):-s61_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s63_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s63_(X,"f") .
s64_(X,"t*"):-s61_(X,"t*") .
node1hgd7v9f9x415_(X,"t*"):-s64_(X,"t*") .
node1hgd7v9f9x415_(X,"f"):-s64_(X,"f") .

s65_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
choose(s65,X,rdfs_range,0):-s65_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s66_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s65_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s65_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s66_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s65_(X,"t*") .

node1hgd7v9f9x416_(X,"f"):-s66_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s66_(X,"f") .

s67_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
s68_(X,"f"):-s67_(X,"t*") .
s68_(X,"t*"):-s67_(X,"f") .
rdfs_range_(X,@new(s68,X,rdfs_range,1..1),"t"):-choose(s68,X,rdfs_range,1) .
choose(s68,X,rdfs_range,1);choose(s68,X,rdfs_range,0):-s68_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s69_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s68_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s68_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s69_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s68_(X,"t*") .
s70_(X,"f"):-s69_(X,"t*") .
s70_(X,"t*"):-s69_(X,"f") .

node1hgd7v9f9x416_(X,"f"):-s70_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s70_(X,"f") .

s65_(X,"f");s67_(X,"f"):-node1hgd7v9f9x415_(X,"f") .
s62_(X,"f");s63_(X,"f");s64_(X,"f"):-s61_(X,"f") .
s49_(X,"f");s61_(X,"f"):-s48_(X,"f") .
s71_(X,"f"):-s47_(X,"f") .
s72_(X,"t*"):-s71_(X,"t*") .
s73_(X,"f"):-s72_(X,"t*") .
s73_(X,"t*"):-s72_(X,"f") .
s74_(X,"f"):-s73_(X,"f") .
s75_(X,"t*"):-s74_(X,"t*") .
node1hgd7v9f9x412_(X,"f"):-s75_(X,"t*") .
node1hgd7v9f9x412_(X,"t*"):-s75_(X,"f") .
s76_(X,"t*"):-s74_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s76_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s76_(X,"f") .
s77_(X,"t*"):-s74_(X,"t*") .
node1hgd7v9f9x415_(X,"t*"):-s77_(X,"t*") .
node1hgd7v9f9x415_(X,"f"):-s77_(X,"f") .

s78_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
choose(s78,X,rdfs_range,0):-s78_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s79_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s78_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s78_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s79_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s78_(X,"t*") .

node1hgd7v9f9x416_(X,"f"):-s79_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s79_(X,"f") .

s80_(X,"t*"):-node1hgd7v9f9x415_(X,"t*") .
s81_(X,"f"):-s80_(X,"t*") .
s81_(X,"t*"):-s80_(X,"f") .
rdfs_range_(X,@new(s81,X,rdfs_range,1..1),"t"):-choose(s81,X,rdfs_range,1) .
choose(s81,X,rdfs_range,1);choose(s81,X,rdfs_range,0):-s81_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s82_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s81_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s81_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s82_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s81_(X,"t*") .
s83_(X,"f"):-s82_(X,"t*") .
s83_(X,"t*"):-s82_(X,"f") .

node1hgd7v9f9x416_(X,"f"):-s83_(X,"t*") .
node1hgd7v9f9x416_(X,"t*"):-s83_(X,"f") .

s78_(X,"f");s80_(X,"f"):-node1hgd7v9f9x415_(X,"f") .
s75_(X,"f");s76_(X,"f");s77_(X,"f"):-s74_(X,"f") .
s74_(X,"t*"):-s73_(X,"t*") .
s84_(X,"t*"):-s71_(X,"t*") .
s85_(X,"t*"):-s84_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s85_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s85_(X,"f") .
s86_(X,"t*"):-s84_(X,"t*") .
node1hgd7v9f9x407_(X,"t*"):-s86_(X,"t*") .
node1hgd7v9f9x407_(X,"f"):-s86_(X,"f") .

s87_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
choose(s87,X,rdfs_range,0):-s87_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s88_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s87_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s87_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s88_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s87_(X,"t*") .

owl_Class_(X,"t"):-s88_(X,"t*") .
owl_Class_(X,"f"):-s88_(X,"f") .

s89_(X,"t*"):-node1hgd7v9f9x407_(X,"t*") .
s90_(X,"f"):-s89_(X,"t*") .
s90_(X,"t*"):-s89_(X,"f") .
rdfs_range_(X,@new(s90,X,rdfs_range,1..1),"t"):-choose(s90,X,rdfs_range,1) .
choose(s90,X,rdfs_range,1);choose(s90,X,rdfs_range,0):-s90_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s91_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s90_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s90_(X,"f"),rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
1 {s91_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s90_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .

owl_Class_(X,"t"):-s92_(X,"t*") .
owl_Class_(X,"f"):-s92_(X,"f") .

s87_(X,"f");s89_(X,"f"):-node1hgd7v9f9x407_(X,"f") .
s93_(X,"t*"):-s84_(X,"t*") .
node1hgd7v9f9x404_(X,"f"):-s93_(X,"t*") .
node1hgd7v9f9x404_(X,"t*"):-s93_(X,"f") .
s85_(X,"f");s86_(X,"f");s93_(X,"f"):-s84_(X,"f") .
s72_(X,"f");s84_(X,"f"):-s71_(X,"f") .
s48_(X,"t*");s71_(X,"t*"):-s47_(X,"t*") .
s0_(X,"f");s47_(X,"f"):-_property_(X,"f") .
owl_Class_(X,"t"):-_classShape_(X,"t*") .
owl_Class_(X,"f"):-_classShape_(X,"f") .

% Interpretation Rules

owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .

% Program Constraints

:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .

% Change Set Rules

add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
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
