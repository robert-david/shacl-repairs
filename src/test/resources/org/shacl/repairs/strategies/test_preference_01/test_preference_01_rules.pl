
% Graph Data

owl_DatatypeProperty("d_p1") .
rdfs_subPropertyOf("d_p1","d_p2") .
rdfs_range("d_p1","xsd_string") .
owl_ObjectProperty("d_p2") .
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
rdfs_Datatype("owl_rational") .
rdfs_Datatype("owl_real") .

% Shape Targets

targetNode("d_p1",d_PropertyShape) .
targetNode("d_p1",d_DomainConsistencyShape) .
targetNode("d_p1",d_RangeConsistencyShape) .
targetNode("d_p2",d_PropertyShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PropertyShape_("d_p1","t*"):-actualTarget("d_p1",d_PropertyShape) .
d_DomainConsistencyShape_("d_p1","t*"):-actualTarget("d_p1",d_DomainConsistencyShape) .
d_RangeConsistencyShape_("d_p1","t*"):-actualTarget("d_p1",d_RangeConsistencyShape) .
d_PropertyShape_("d_p2","t*"):-actualTarget("d_p2",d_PropertyShape) .

% Annotation Rules

owl_inverseOf_(X,Y,"t*"):-owl_inverseOf(X,Y) .
owl_inverseOf_(X,Y,"t*"):-owl_inverseOf_(X,Y,"t") .
rdfs_domain_(X,Y,"t*"):-rdfs_domain(X,Y) .
rdfs_domain_(X,Y,"t*"):-rdfs_domain_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1956_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1956_(X,_),owl_inverseOf_(X,Y,"t*") .
dc_contributor_(X,Y,"t*"):-dc_contributor(X,Y) .
dc_contributor_(X,Y,"t*"):-dc_contributor_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1983_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1983_(X,_),dc_contributor_(X,Y,"t*") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .
rdfs_subPropertyOf_(Y,X,"t"):-rdfs_subPropertyOf_inv_(X,Y,"t") .
rdfs_subPropertyOf_inv_(X,Y,"t*"):-rdfs_subPropertyOf_(Y,X,"t*") .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"f"):-rdfs_subPropertyOf_(Y,X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1954_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty(X) .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1953_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1953_(X,_),rdfs_domain_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,_),rdfs_domain_(X,Y,"t*") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype(X) .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1950_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
owl_unionOf_(X,Y,"t*"):-owl_unionOf(X,Y) .
owl_unionOf_(X,Y,"t*"):-owl_unionOf_(X,Y,"t") .
rdf_rest_(X,Y,"t*"):-rdf_rest(X,Y) .
rdf_rest_(X,Y,"t*"):-rdf_rest_(X,Y,"t") .
rdf_rest_star_(X,Y,"t*"):-rdf_rest_(X,Y,"t*") .
rdf_rest_star_(X,Z,"t*"):-rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*") .
rdf_first_(X,Y,"t*"):-rdf_first(X,Y) .
rdf_first_(X,Y,"t*"):-rdf_first_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1943_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1932_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty(X) .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,_),rdfs_range_(X,Y,"t*") .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty(X) .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1951_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty(X) .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1957_(X,"t*"):-s0_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1957_(X,"f"):-s0_(X,"f") .


s1_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"f"):-s1_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s1_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s1_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1957
s2_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*");s3_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,X1,"f") .
0 {s3_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t**")} 0:-s2_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1957
s4_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,@new(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,1..1),"t"):-choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,1) .
choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,1);choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st,0):-s5_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*");s6_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s1_(X,"f");s2_(X,"f");s4_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_(X,"f") .
s8_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s8_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s8_(X,"f") .
s9_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1960_(X,"t*"):-s9_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1960_(X,"f"):-s9_(X,"f") .


s10_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"f"):-s10_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s10_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s10_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1960
s11_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*");s12_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,X1,"f") .
0 {s12_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t**")} 0:-s11_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1960
s13_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,@new(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,1..1),"t"):-choose(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,1) .
choose(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,1);choose(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st,0):-s14_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*");s15_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s10_(X,"f");s11_(X,"f");s13_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_(X,"f") .
s17_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1956_(X,"t*"):-s17_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1956_(X,"f"):-s17_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1956
s18_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1956_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s19_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,Y,"f"):-owl_inverseOf_(X,Y,"t*"),owl_inverseOf_(X,Y,"f") .
0 {s19_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 0:-s18_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s19_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s19_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1956
s20_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1956_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
owl_inverseOf_(X,@new(s21,X,owl_inverseOf,1..1),"t"):-choose(s21,X,owl_inverseOf,1) .
choose(s21,X,owl_inverseOf,1);choose(s21,X,owl_inverseOf,0):-s21_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s22_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .

owl_ObjectProperty_(X,"t"):-s23_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s23_(X,"f") .

s18_(X,"f");s20_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1956_(X,"f") .
s0_(X,"f");s8_(X,"f");s9_(X,"f");s17_(X,"f"):-d_InversePropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1983_(X,"t*"):-d_UniqueContributorShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1983_(X,"f"):-d_UniqueContributorShape_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd1983
s24_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1983_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
dc_contributor_(X,@new(s25,X,dc_contributor,1..1),"t"):-choose(s25,X,dc_contributor,1) .
dc_contributor_(X,@new(s25,X,dc_contributor,1..2),"t"):-choose(s25,X,dc_contributor,2) .
choose(s25,X,dc_contributor,2);choose(s25,X,dc_contributor,1);choose(s25,X,dc_contributor,0):-s25_(X,"t*") .
(C-1) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s26_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-1):-s25_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>1 .
dc_contributor_(X,Y,"f"):-dc_contributor_(X,Y,"t*"),dc_contributor_(X,Y,"f") .
2 {s26_(Y,"t*"):dc_contributor_(X,Y,"t**")} 2:-s25_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1983
s27_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1983_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s28_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
0 {s28_(Y,"t*"):dc_contributor_(X,Y,"t**")} 0:-s27_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1983
s29_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1983_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
dc_contributor_(X,@new(s30,X,dc_contributor,1..1),"t"):-choose(s30,X,dc_contributor,1) .
choose(s30,X,dc_contributor,1);choose(s30,X,dc_contributor,0):-s30_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s31_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):dc_contributor_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s24_(X,"f");s27_(X,"f");s29_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1983_(X,"f") .
s33_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s33_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s33_(X,"f") .
s34_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1954_(X,"t*"):-s34_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1954_(X,"f"):-s34_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1954
s35_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1954_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*");s36_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"f") .
0 {s36_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t**")} 0:-s35_(X,"t*") .

owl_SymmetricProperty_(X,"t"):-s36_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s36_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1954
s37_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1954_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s38,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s38,X,rdfs_subPropertyOf,1) .
choose(s38,X,rdfs_subPropertyOf,1);choose(s38,X,rdfs_subPropertyOf,0):-s38_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*");s39_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"f")} (C-0):-s38_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*")}=C,C>0 .
1 {s39_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t**")} 1:-s38_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .

owl_SymmetricProperty_(X,"t"):-s40_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s40_(X,"f") .

s35_(X,"f");s37_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1954_(X,"f") .
s41_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1953_(X,"t*"):-s41_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1953_(X,"f"):-s41_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1953
s42_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1953_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s43_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s42_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,Y,"f"):-rdfs_domain_(X,Y,"t*"),rdfs_domain_(X,Y,"f") .
0 {s43_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s42_(X,"t*") .


s44_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1953_(X,"t*") .
rdfs_range_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s44_(X,"t*"),rdfs_domain_(X,Y,"t*") .
rdfs_domain_(X,Y,"t");rdfs_range_(X,Y,"f"):-s44_(X,"t*"),rdfs_range_(X,Y,"t*") .
notEquals(s44,X,rdfs_domain,rdfs_range):-s44_(X,"f"),rdfs_domain_(X,Y,"t*"),not rdfs_range_(X,Y,"t*") .
notEquals(s44,X,rdfs_domain,rdfs_range):-s44_(X,"f"),not rdfs_domain_(X,Y,"t*"),rdfs_range_(X,Y,"t*") .
1 {rdfs_domain_(X,Y,"f"):rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):rdfs_domain_(X,Y,"t*");rdfs_domain_(X,@new(s44,X,rdfs_domain,1),"t*");rdfs_range_(X,@new(s44,X,rdfs_range,1),"t*")} 1:-s44_(X,"f"),not notEquals(s44,X,rdfs_domain,rdfs_range) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1953
s45_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1953_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
rdfs_domain_(X,@new(s46,X,rdfs_domain,1..1),"t"):-choose(s46,X,rdfs_domain,1) .
choose(s46,X,rdfs_domain,1);choose(s46,X,rdfs_domain,0):-s46_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s47_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s47_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .


s42_(X,"f");s44_(X,"f");s45_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1953_(X,"f") .
s33_(X,"f");s34_(X,"f");s41_(X,"f"):-d_SymmetricPropertyShape_(X,"f") .
s49_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*"):-s49_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f"):-s49_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1919
s50_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s51_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s50_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s51_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s50_(X,"t*") .

s52_(X,"t*"):-s51_(X,"t*") .
owl_Class_(X,"t"):-s52_(X,"t*") .
owl_Class_(X,"f"):-s52_(X,"f") .
s53_(X,"t*"):-s51_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s53_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s53_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f") .
s52_(X,"f");s53_(X,"f"):-s51_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1919
s54_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s55_(X,"f"):-s54_(X,"t*") .
s55_(X,"t*"):-s54_(X,"f") .
rdfs_domain_(X,@new(s55,X,rdfs_domain,1..1),"t"):-choose(s55,X,rdfs_domain,1) .
choose(s55,X,rdfs_domain,1);choose(s55,X,rdfs_domain,0):-s55_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s56_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s55_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s56_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s55_(X,"t*") .
s57_(X,"f"):-s56_(X,"t*") .
s57_(X,"t*"):-s56_(X,"f") .

s58_(X,"t*"):-s57_(X,"t*") .
owl_Class_(X,"t"):-s58_(X,"t*") .
owl_Class_(X,"f"):-s58_(X,"f") .
s59_(X,"t*"):-s57_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s59_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s59_(X,"f") .
s58_(X,"f");s59_(X,"f"):-s57_(X,"f") .

s50_(X,"f");s54_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f") .
s60_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"f"):-s60_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"t*"):-s60_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"f") .
s61_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"f"):-s61_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"t*"):-s61_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"f") .
s62_(X,"t*"):-d_PropertyShape_(X,"t*") .
s63_(X,"f"):-s62_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*"):-s63_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1941
s64_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s65_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s64_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s65_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s64_(X,"t*") .

s66_(X,"t*"):-s65_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s66_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s66_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f") .
s67_(X,"t*"):-s65_(X,"t*") .
rdfs_Datatype_(X,"t"):-s67_(X,"t*") .
rdfs_Datatype_(X,"f"):-s67_(X,"f") .
s66_(X,"f");s67_(X,"f"):-s65_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1941
s68_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*") .
s69_(X,"f"):-s68_(X,"t*") .
s69_(X,"t*"):-s68_(X,"f") .
rdfs_range_(X,@new(s69,X,rdfs_range,1..1),"t"):-choose(s69,X,rdfs_range,1) .
choose(s69,X,rdfs_range,1);choose(s69,X,rdfs_range,0):-s69_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s70_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s69_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s70_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s69_(X,"t*") .
s71_(X,"f"):-s70_(X,"t*") .
s71_(X,"t*"):-s70_(X,"f") .

s72_(X,"t*"):-s71_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s72_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s72_(X,"f") .
s73_(X,"t*"):-s71_(X,"t*") .
rdfs_Datatype_(X,"t"):-s73_(X,"t*") .
rdfs_Datatype_(X,"f"):-s73_(X,"f") .
s72_(X,"f");s73_(X,"f"):-s71_(X,"f") .

s64_(X,"f");s68_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*"):-s63_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1950
s74_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s75_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s74_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s75_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s74_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s75_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s75_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1950
s76_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*") .
s77_(X,"f"):-s76_(X,"t*") .
s77_(X,"t*"):-s76_(X,"f") .
rdfs_subPropertyOf_(X,@new(s77,X,rdfs_subPropertyOf,1..1),"t"):-choose(s77,X,rdfs_subPropertyOf,1) .
choose(s77,X,rdfs_subPropertyOf,1);choose(s77,X,rdfs_subPropertyOf,0):-s77_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s78_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s77_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s78_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s77_(X,"t*") .
s79_(X,"f"):-s78_(X,"t*") .
s79_(X,"t*"):-s78_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s79_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s79_(X,"f") .

s74_(X,"f");s76_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*"):-s63_(X,"t*") .



rdf_rest_star_(X,Y,"f");rdf_rest_(Y,Z,"f"):-rdf_rest_star_(X,Z,"f"),rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*"),X!=Y .
rdf_rest_(X,Y,"f"):-rdf_rest_star_(X,Y,"f"),rdf_rest_(X,Y,"t*") .

rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1944
s80_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*");s81_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f")} (C-0):-s80_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,X3,"f") .
0 {s81_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t**")} 0:-s80_(X,"t*") .

s82_(X,"t*"):-s81_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s82_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s82_(X,"f") .
s83_(X,"t*"):-s81_(X,"t*") .
rdfs_Datatype_(X,"t"):-s83_(X,"t*") .
rdfs_Datatype_(X,"f"):-s83_(X,"f") .
s82_(X,"f");s83_(X,"f"):-s81_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1944
s84_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*") .
s85_(X,"f"):-s84_(X,"t*") .
s85_(X,"t*"):-s84_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,@new(s85,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1..1),"t"):-choose(s85,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1) .
choose(s85,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1);choose(s85,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,0):-s85_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*");s86_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f")} (C-0):-s85_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*")}=C,C>0 .
1 {s86_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t**")} 1:-s85_(X,"t*") .
s87_(X,"f"):-s86_(X,"t*") .
s87_(X,"t*"):-s86_(X,"f") .

s88_(X,"t*"):-s87_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s88_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s88_(X,"f") .
s89_(X,"t*"):-s87_(X,"t*") .
rdfs_Datatype_(X,"t"):-s89_(X,"t*") .
rdfs_Datatype_(X,"f"):-s89_(X,"f") .
s88_(X,"f");s89_(X,"f"):-s87_(X,"f") .

s80_(X,"f");s84_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"f") .
s90_(X,"t*"):-s63_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s90_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s90_(X,"f") .
s91_(X,"t*"):-s63_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"f"):-s91_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"t*"):-s91_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1943
s92_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s93_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s92_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s93_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s92_(X,"t*") .

s94_(X,"t*"):-s93_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s94_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s94_(X,"f") .
s95_(X,"t*"):-s93_(X,"t*") .
owl_Class_(X,"t"):-s95_(X,"t*") .
owl_Class_(X,"f"):-s95_(X,"f") .
s94_(X,"f");s95_(X,"f"):-s93_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1943
s96_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"t*") .
s97_(X,"f"):-s96_(X,"t*") .
s97_(X,"t*"):-s96_(X,"f") .
rdfs_range_(X,@new(s97,X,rdfs_range,1..1),"t"):-choose(s97,X,rdfs_range,1) .
choose(s97,X,rdfs_range,1);choose(s97,X,rdfs_range,0):-s97_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s98_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s97_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s98_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s97_(X,"t*") .
s99_(X,"f"):-s98_(X,"t*") .
s99_(X,"t*"):-s98_(X,"f") .

s100_(X,"t*"):-s99_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s100_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s100_(X,"f") .
s101_(X,"t*"):-s99_(X,"t*") .
owl_Class_(X,"t"):-s101_(X,"t*") .
owl_Class_(X,"f"):-s101_(X,"f") .
s100_(X,"f");s101_(X,"f"):-s99_(X,"f") .

s92_(X,"f");s96_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"f") .
s102_(X,"t*"):-s63_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"f"):-s102_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"t*"):-s102_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"f");s90_(X,"f");s91_(X,"f");s102_(X,"f"):-s63_(X,"f") .
s103_(X,"f"):-s62_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*"):-s103_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1939
s104_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s105_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s104_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s105_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s104_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s105_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s105_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1939
s106_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*") .
s107_(X,"f"):-s106_(X,"t*") .
s107_(X,"t*"):-s106_(X,"f") .
rdfs_subPropertyOf_(X,@new(s107,X,rdfs_subPropertyOf,1..1),"t"):-choose(s107,X,rdfs_subPropertyOf,1) .
choose(s107,X,rdfs_subPropertyOf,1);choose(s107,X,rdfs_subPropertyOf,0):-s107_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s108_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s107_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s108_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s107_(X,"t*") .
s109_(X,"f"):-s108_(X,"t*") .
s109_(X,"t*"):-s108_(X,"f") .

owl_ObjectProperty_(X,"t"):-s109_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s109_(X,"f") .

s104_(X,"f");s106_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*"):-s103_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1932
s110_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s111_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s110_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s111_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s110_(X,"t*") .

s112_(X,"t*"):-s111_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s112_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s112_(X,"f") .
s113_(X,"t*"):-s111_(X,"t*") .
owl_Class_(X,"t"):-s113_(X,"t*") .
owl_Class_(X,"f"):-s113_(X,"f") .
s112_(X,"f");s113_(X,"f"):-s111_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1932
s114_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*") .
s115_(X,"f"):-s114_(X,"t*") .
s115_(X,"t*"):-s114_(X,"f") .
rdfs_range_(X,@new(s115,X,rdfs_range,1..1),"t"):-choose(s115,X,rdfs_range,1) .
choose(s115,X,rdfs_range,1);choose(s115,X,rdfs_range,0):-s115_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s116_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s115_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s116_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s115_(X,"t*") .
s117_(X,"f"):-s116_(X,"t*") .
s117_(X,"t*"):-s116_(X,"f") .

s118_(X,"t*"):-s117_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s118_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s118_(X,"f") .
s119_(X,"t*"):-s117_(X,"t*") .
owl_Class_(X,"t"):-s119_(X,"t*") .
owl_Class_(X,"f"):-s119_(X,"f") .
s118_(X,"f");s119_(X,"f"):-s117_(X,"f") .

s110_(X,"f");s114_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*"):-s103_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1933
s120_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*");s121_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f")} (C-0):-s120_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,X3,"f") .
0 {s121_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t**")} 0:-s120_(X,"t*") .

s122_(X,"t*"):-s121_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s122_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s122_(X,"f") .
s123_(X,"t*"):-s121_(X,"t*") .
owl_Class_(X,"t"):-s123_(X,"t*") .
owl_Class_(X,"f"):-s123_(X,"f") .
s122_(X,"f");s123_(X,"f"):-s121_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1933
s124_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*") .
s125_(X,"f"):-s124_(X,"t*") .
s125_(X,"t*"):-s124_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,@new(s125,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1..1),"t"):-choose(s125,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1) .
choose(s125,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1);choose(s125,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,0):-s125_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*");s126_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f")} (C-0):-s125_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*")}=C,C>0 .
1 {s126_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t**")} 1:-s125_(X,"t*") .
s127_(X,"f"):-s126_(X,"t*") .
s127_(X,"t*"):-s126_(X,"f") .

s128_(X,"t*"):-s127_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s128_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s128_(X,"f") .
s129_(X,"t*"):-s127_(X,"t*") .
owl_Class_(X,"t"):-s129_(X,"t*") .
owl_Class_(X,"f"):-s129_(X,"f") .
s128_(X,"f");s129_(X,"f"):-s127_(X,"f") .

s120_(X,"f");s124_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"f") .
s130_(X,"t*"):-s103_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s130_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s130_(X,"f") .
s131_(X,"t*"):-s103_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"f"):-s131_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"t*"):-s131_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"f");s130_(X,"f");s131_(X,"f"):-s103_(X,"f") .
s63_(X,"t*");s103_(X,"t*"):-s62_(X,"t*") .
s132_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*"):-s132_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"f"):-s132_(X,"f") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1920
s133_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X,rdfs_domain,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X,rdfs_domain,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t") .
rdfs_domain_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X,rdfs_domain,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X,rdfs_domain,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X0,owl_unionOf,0):-rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,X0,owl_unionOf,1),rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*");s134_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f")} (C-0):-s133_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,X3,"f") .
0 {s134_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t**")} 0:-s133_(X,"t*") .

s135_(X,"t*"):-s134_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s135_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s135_(X,"f") .
s136_(X,"t*"):-s134_(X,"t*") .
owl_Class_(X,"t"):-s136_(X,"t*") .
owl_Class_(X,"f"):-s136_(X,"f") .
s135_(X,"f");s136_(X,"f"):-s134_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1920
s137_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*") .
s138_(X,"f"):-s137_(X,"t*") .
s138_(X,"t*"):-s137_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,@new(s138,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1..1),"t"):-choose(s138,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1) .
choose(s138,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1);choose(s138,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,0):-s138_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*");s139_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f")} (C-0):-s138_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*")}=C,C>0 .
1 {s139_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t**")} 1:-s138_(X,"t*") .
s140_(X,"f"):-s139_(X,"t*") .
s140_(X,"t*"):-s139_(X,"f") .

s141_(X,"t*"):-s140_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s141_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s141_(X,"f") .
s142_(X,"t*"):-s140_(X,"t*") .
owl_Class_(X,"t"):-s142_(X,"t*") .
owl_Class_(X,"f"):-s142_(X,"f") .
s141_(X,"f");s142_(X,"f"):-s140_(X,"f") .

s133_(X,"f");s137_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"f") .
s143_(X,"t*"):-d_PropertyShape_(X,"t*") .
s144_(X,"f"):-s143_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*"):-s144_(X,"t*") .

s145_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s146_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s145_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s146_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s145_(X,"t*") .

s147_(X,"t*"):-s146_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s147_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s147_(X,"f") .
s148_(X,"t*"):-s146_(X,"t*") .
rdfs_Datatype_(X,"t"):-s148_(X,"t*") .
rdfs_Datatype_(X,"f"):-s148_(X,"f") .
s147_(X,"f");s148_(X,"f"):-s146_(X,"f") .

s149_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*") .
s150_(X,"f"):-s149_(X,"t*") .
s150_(X,"t*"):-s149_(X,"f") .
rdfs_range_(X,@new(s150,X,rdfs_range,1..1),"t"):-choose(s150,X,rdfs_range,1) .
choose(s150,X,rdfs_range,1);choose(s150,X,rdfs_range,0):-s150_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s151_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s150_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s151_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s150_(X,"t*") .
s152_(X,"f"):-s151_(X,"t*") .
s152_(X,"t*"):-s151_(X,"f") .

s153_(X,"t*"):-s152_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s153_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s153_(X,"f") .
s154_(X,"t*"):-s152_(X,"t*") .
rdfs_Datatype_(X,"t"):-s154_(X,"t*") .
rdfs_Datatype_(X,"f"):-s154_(X,"f") .
s153_(X,"f");s154_(X,"f"):-s152_(X,"f") .

s145_(X,"f");s149_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*"):-s144_(X,"t*") .

s155_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s156_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s155_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s156_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s155_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s156_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s156_(X,"f") .

s157_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*") .
s158_(X,"f"):-s157_(X,"t*") .
s158_(X,"t*"):-s157_(X,"f") .
rdfs_subPropertyOf_(X,@new(s158,X,rdfs_subPropertyOf,1..1),"t"):-choose(s158,X,rdfs_subPropertyOf,1) .
choose(s158,X,rdfs_subPropertyOf,1);choose(s158,X,rdfs_subPropertyOf,0):-s158_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s159_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s158_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s159_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s158_(X,"t*") .
s160_(X,"f"):-s159_(X,"t*") .
s160_(X,"t*"):-s159_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s160_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s160_(X,"f") .

s155_(X,"f");s157_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*"):-s144_(X,"t*") .




s161_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*");s162_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f")} (C-0):-s161_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*")}=C,C>0 .
0 {s162_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t**")} 0:-s161_(X,"t*") .

s163_(X,"t*"):-s162_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s163_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s163_(X,"f") .
s164_(X,"t*"):-s162_(X,"t*") .
rdfs_Datatype_(X,"t"):-s164_(X,"t*") .
rdfs_Datatype_(X,"f"):-s164_(X,"f") .
s163_(X,"f");s164_(X,"f"):-s162_(X,"f") .

s165_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*") .
s166_(X,"f"):-s165_(X,"t*") .
s166_(X,"t*"):-s165_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,@new(s166,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1..1),"t"):-choose(s166,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1) .
choose(s166,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1);choose(s166,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,0):-s166_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*");s167_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f")} (C-0):-s166_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*")}=C,C>0 .
1 {s167_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t**")} 1:-s166_(X,"t*") .
s168_(X,"f"):-s167_(X,"t*") .
s168_(X,"t*"):-s167_(X,"f") .

s169_(X,"t*"):-s168_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s169_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s169_(X,"f") .
s170_(X,"t*"):-s168_(X,"t*") .
rdfs_Datatype_(X,"t"):-s170_(X,"t*") .
rdfs_Datatype_(X,"f"):-s170_(X,"f") .
s169_(X,"f");s170_(X,"f"):-s168_(X,"f") .

s161_(X,"f");s165_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"f") .
s171_(X,"t*"):-s144_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s171_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s171_(X,"f") .
s172_(X,"t*"):-s144_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"f"):-s172_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"t*"):-s172_(X,"f") .

s173_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s174_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s173_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s174_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s173_(X,"t*") .

s175_(X,"t*"):-s174_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s175_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s175_(X,"f") .
s176_(X,"t*"):-s174_(X,"t*") .
owl_Class_(X,"t"):-s176_(X,"t*") .
owl_Class_(X,"f"):-s176_(X,"f") .
s175_(X,"f");s176_(X,"f"):-s174_(X,"f") .

s177_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"t*") .
s178_(X,"f"):-s177_(X,"t*") .
s178_(X,"t*"):-s177_(X,"f") .
rdfs_range_(X,@new(s178,X,rdfs_range,1..1),"t"):-choose(s178,X,rdfs_range,1) .
choose(s178,X,rdfs_range,1);choose(s178,X,rdfs_range,0):-s178_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s179_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s178_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s179_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s178_(X,"t*") .
s180_(X,"f"):-s179_(X,"t*") .
s180_(X,"t*"):-s179_(X,"f") .

s181_(X,"t*"):-s180_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s181_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s181_(X,"f") .
s182_(X,"t*"):-s180_(X,"t*") .
owl_Class_(X,"t"):-s182_(X,"t*") .
owl_Class_(X,"f"):-s182_(X,"f") .
s181_(X,"f");s182_(X,"f"):-s180_(X,"f") .

s173_(X,"f");s177_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"f") .
s183_(X,"t*"):-s144_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"f"):-s183_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"t*"):-s183_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"f");s171_(X,"f");s172_(X,"f");s183_(X,"f"):-s144_(X,"f") .
s184_(X,"f"):-s143_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*"):-s184_(X,"t*") .

s185_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s186_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s185_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s186_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s185_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s186_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s186_(X,"f") .

s187_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*") .
s188_(X,"f"):-s187_(X,"t*") .
s188_(X,"t*"):-s187_(X,"f") .
rdfs_subPropertyOf_(X,@new(s188,X,rdfs_subPropertyOf,1..1),"t"):-choose(s188,X,rdfs_subPropertyOf,1) .
choose(s188,X,rdfs_subPropertyOf,1);choose(s188,X,rdfs_subPropertyOf,0):-s188_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s189_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s188_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s189_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s188_(X,"t*") .
s190_(X,"f"):-s189_(X,"t*") .
s190_(X,"t*"):-s189_(X,"f") .

owl_ObjectProperty_(X,"t"):-s190_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s190_(X,"f") .

s185_(X,"f");s187_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*"):-s184_(X,"t*") .

s191_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s192_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s191_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s192_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s191_(X,"t*") .

s193_(X,"t*"):-s192_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s193_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s193_(X,"f") .
s194_(X,"t*"):-s192_(X,"t*") .
owl_Class_(X,"t"):-s194_(X,"t*") .
owl_Class_(X,"f"):-s194_(X,"f") .
s193_(X,"f");s194_(X,"f"):-s192_(X,"f") .

s195_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*") .
s196_(X,"f"):-s195_(X,"t*") .
s196_(X,"t*"):-s195_(X,"f") .
rdfs_range_(X,@new(s196,X,rdfs_range,1..1),"t"):-choose(s196,X,rdfs_range,1) .
choose(s196,X,rdfs_range,1);choose(s196,X,rdfs_range,0):-s196_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s197_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s196_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s197_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s196_(X,"t*") .
s198_(X,"f"):-s197_(X,"t*") .
s198_(X,"t*"):-s197_(X,"f") .

s199_(X,"t*"):-s198_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s199_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s199_(X,"f") .
s200_(X,"t*"):-s198_(X,"t*") .
owl_Class_(X,"t"):-s200_(X,"t*") .
owl_Class_(X,"f"):-s200_(X,"f") .
s199_(X,"f");s200_(X,"f"):-s198_(X,"f") .

s191_(X,"f");s195_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*"):-s184_(X,"t*") .




s201_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*");s202_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f")} (C-0):-s201_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*")}=C,C>0 .
0 {s202_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t**")} 0:-s201_(X,"t*") .

s203_(X,"t*"):-s202_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s203_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s203_(X,"f") .
s204_(X,"t*"):-s202_(X,"t*") .
owl_Class_(X,"t"):-s204_(X,"t*") .
owl_Class_(X,"f"):-s204_(X,"f") .
s203_(X,"f");s204_(X,"f"):-s202_(X,"f") .

s205_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*") .
s206_(X,"f"):-s205_(X,"t*") .
s206_(X,"t*"):-s205_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,@new(s206,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1..1),"t"):-choose(s206,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1) .
choose(s206,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1);choose(s206,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,0):-s206_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*");s207_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f")} (C-0):-s206_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*")}=C,C>0 .
1 {s207_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t**")} 1:-s206_(X,"t*") .
s208_(X,"f"):-s207_(X,"t*") .
s208_(X,"t*"):-s207_(X,"f") .

s209_(X,"t*"):-s208_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s209_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s209_(X,"f") .
s210_(X,"t*"):-s208_(X,"t*") .
owl_Class_(X,"t"):-s210_(X,"t*") .
owl_Class_(X,"f"):-s210_(X,"f") .
s209_(X,"f");s210_(X,"f"):-s208_(X,"f") .

s201_(X,"f");s205_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"f") .
s211_(X,"t*"):-s184_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s211_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s211_(X,"f") .
s212_(X,"t*"):-s184_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"f"):-s212_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"t*"):-s212_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"f");s211_(X,"f");s212_(X,"f"):-s184_(X,"f") .
s144_(X,"t*");s184_(X,"t*"):-s143_(X,"t*") .
s213_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"f"):-s213_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"t*"):-s213_(X,"f") .
s214_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"f"):-s214_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"t*"):-s214_(X,"f") .
s215_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"f"):-s215_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1928_(X,"t*"):-s215_(X,"f") .
s216_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*"):-s216_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"f"):-s216_(X,"f") .




s217_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*");s218_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f")} (C-0):-s217_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*")}=C,C>0 .
0 {s218_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t**")} 0:-s217_(X,"t*") .

s219_(X,"t*"):-s218_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s219_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s219_(X,"f") .
s220_(X,"t*"):-s218_(X,"t*") .
owl_Class_(X,"t"):-s220_(X,"t*") .
owl_Class_(X,"f"):-s220_(X,"f") .
s219_(X,"f");s220_(X,"f"):-s218_(X,"f") .

s221_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*") .
s222_(X,"f"):-s221_(X,"t*") .
s222_(X,"t*"):-s221_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,@new(s222,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1..1),"t"):-choose(s222,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1) .
choose(s222,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1);choose(s222,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,0):-s222_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*");s223_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f")} (C-0):-s222_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*")}=C,C>0 .
1 {s223_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t**")} 1:-s222_(X,"t*") .
s224_(X,"f"):-s223_(X,"t*") .
s224_(X,"t*"):-s223_(X,"f") .

s225_(X,"t*"):-s224_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s225_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s225_(X,"f") .
s226_(X,"t*"):-s224_(X,"t*") .
owl_Class_(X,"t"):-s226_(X,"t*") .
owl_Class_(X,"f"):-s226_(X,"f") .
s225_(X,"f");s226_(X,"f"):-s224_(X,"f") .

s217_(X,"f");s221_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"f") .
s227_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*"):-s227_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f"):-s227_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd1919
s228_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s229_(X,"f"):-s228_(X,"t*") .
s229_(X,"t*"):-s228_(X,"f") .
rdfs_domain_(X,@new(s229,X,rdfs_domain,1..1),"t"):-choose(s229,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s229,X,rdfs_domain,1..2),"t"):-choose(s229,X,rdfs_domain,2) .
choose(s229,X,rdfs_domain,2);choose(s229,X,rdfs_domain,1);choose(s229,X,rdfs_domain,0):-s229_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s230_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s229_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s230_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s229_(X,"t*") .


s231_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s232_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s231_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s232_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s231_(X,"t*") .


s233_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s234_(X,"f"):-s233_(X,"t*") .
s234_(X,"t*"):-s233_(X,"f") .
rdfs_domain_(X,@new(s234,X,rdfs_domain,1..1),"t"):-choose(s234,X,rdfs_domain,1) .
choose(s234,X,rdfs_domain,1);choose(s234,X,rdfs_domain,0):-s234_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s235_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s234_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s235_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s234_(X,"t*") .
s236_(X,"f"):-s235_(X,"t*") .
s236_(X,"t*"):-s235_(X,"f") .


s228_(X,"f");s231_(X,"f");s233_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f") .
s237_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"f"):-s237_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"t*"):-s237_(X,"f") .
owl_OntologyProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"t*") .
owl_OntologyProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"f") .
s238_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*"):-s238_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"f"):-s238_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1926
s239_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s240_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s239_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s240_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s239_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd1926
s241_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
s242_(X,"f"):-s241_(X,"t*") .
s242_(X,"t*"):-s241_(X,"f") .
rdfs_range_(X,@new(s242,X,rdfs_range,1..1),"t"):-choose(s242,X,rdfs_range,1) .
rdfs_range_(X,@new(s242,X,rdfs_range,1..2),"t"):-choose(s242,X,rdfs_range,2) .
choose(s242,X,rdfs_range,2);choose(s242,X,rdfs_range,1);choose(s242,X,rdfs_range,0):-s242_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s243_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s242_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s243_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s242_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1926
s244_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
s245_(X,"f"):-s244_(X,"t*") .
s245_(X,"t*"):-s244_(X,"f") .
rdfs_range_(X,@new(s245,X,rdfs_range,1..1),"t"):-choose(s245,X,rdfs_range,1) .
choose(s245,X,rdfs_range,1);choose(s245,X,rdfs_range,0):-s245_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s246_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s245_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s246_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s245_(X,"t*") .
s247_(X,"f"):-s246_(X,"t*") .
s247_(X,"t*"):-s246_(X,"f") .


s239_(X,"f");s241_(X,"f");s244_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"f") .
s248_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*"):-s248_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"f"):-s248_(X,"f") .

s249_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
s250_(X,"f"):-s249_(X,"t*") .
s250_(X,"t*"):-s249_(X,"f") .
rdfs_range_(X,@new(s250,X,rdfs_range,1..1),"t"):-choose(s250,X,rdfs_range,1) .
rdfs_range_(X,@new(s250,X,rdfs_range,1..2),"t"):-choose(s250,X,rdfs_range,2) .
choose(s250,X,rdfs_range,2);choose(s250,X,rdfs_range,1);choose(s250,X,rdfs_range,0):-s250_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s251_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s250_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s251_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s250_(X,"t*") .


s252_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s253_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s252_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s253_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s252_(X,"t*") .


s254_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
s255_(X,"f"):-s254_(X,"t*") .
s255_(X,"t*"):-s254_(X,"f") .
rdfs_range_(X,@new(s255,X,rdfs_range,1..1),"t"):-choose(s255,X,rdfs_range,1) .
choose(s255,X,rdfs_range,1);choose(s255,X,rdfs_range,0):-s255_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s256_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s255_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s256_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s255_(X,"t*") .
s257_(X,"f"):-s256_(X,"t*") .
s257_(X,"t*"):-s256_(X,"f") .


s249_(X,"f");s252_(X,"f");s254_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"f") .
s258_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*"):-s258_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"f"):-s258_(X,"f") .




s259_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*");s260_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f")} (C-0):-s259_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*")}=C,C>0 .
0 {s260_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t**")} 0:-s259_(X,"t*") .

s261_(X,"t*"):-s260_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s261_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s261_(X,"f") .
s262_(X,"t*"):-s260_(X,"t*") .
owl_Class_(X,"t"):-s262_(X,"t*") .
owl_Class_(X,"f"):-s262_(X,"f") .
s261_(X,"f");s262_(X,"f"):-s260_(X,"f") .

s263_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"t*") .
s264_(X,"f"):-s263_(X,"t*") .
s264_(X,"t*"):-s263_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,@new(s264,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1..1),"t"):-choose(s264,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1) .
choose(s264,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,1);choose(s264,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st,0):-s264_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*");s265_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f")} (C-0):-s264_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t*")}=C,C>0 .
1 {s265_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t**")} 1:-s264_(X,"t*") .
s266_(X,"f"):-s265_(X,"t*") .
s266_(X,"t*"):-s265_(X,"f") .

s267_(X,"t*"):-s266_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s267_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s267_(X,"f") .
s268_(X,"t*"):-s266_(X,"t*") .
owl_Class_(X,"t"):-s268_(X,"t*") .
owl_Class_(X,"f"):-s268_(X,"f") .
s267_(X,"f");s268_(X,"f"):-s266_(X,"f") .

s259_(X,"f");s263_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_(X,"f") .
s269_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"f"):-s269_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"t*"):-s269_(X,"f") .
owl_AnnotationProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"t*") .
owl_AnnotationProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"f") .
s270_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"f"):-s270_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"t*"):-s270_(X,"f") .
s271_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*"):-s271_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f"):-s271_(X,"f") .

s272_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s273_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s272_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s273_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s272_(X,"t*") .

s274_(X,"t*"):-s273_(X,"t*") .
owl_Class_(X,"t"):-s274_(X,"t*") .
owl_Class_(X,"f"):-s274_(X,"f") .
s275_(X,"t*"):-s273_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s275_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s275_(X,"f") .
s274_(X,"f");s275_(X,"f"):-s273_(X,"f") .

s276_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s277_(X,"f"):-s276_(X,"t*") .
s277_(X,"t*"):-s276_(X,"f") .
rdfs_domain_(X,@new(s277,X,rdfs_domain,1..1),"t"):-choose(s277,X,rdfs_domain,1) .
choose(s277,X,rdfs_domain,1);choose(s277,X,rdfs_domain,0):-s277_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s278_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s277_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s278_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s277_(X,"t*") .
s279_(X,"f"):-s278_(X,"t*") .
s279_(X,"t*"):-s278_(X,"f") .

s280_(X,"t*"):-s279_(X,"t*") .
owl_Class_(X,"t"):-s280_(X,"t*") .
owl_Class_(X,"f"):-s280_(X,"f") .
s281_(X,"t*"):-s279_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s281_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s281_(X,"f") .
s280_(X,"f");s281_(X,"f"):-s279_(X,"f") .

s272_(X,"f");s276_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f") .
s282_(X,"t*"):-d_PropertyShape_(X,"t*") .
s283_(X,"f"):-s282_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*"):-s283_(X,"t*") .

s284_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s285_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s284_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s285_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s284_(X,"t*") .

s286_(X,"t*"):-s285_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s286_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s286_(X,"f") .
s287_(X,"t*"):-s285_(X,"t*") .
rdfs_Datatype_(X,"t"):-s287_(X,"t*") .
rdfs_Datatype_(X,"f"):-s287_(X,"f") .
s286_(X,"f");s287_(X,"f"):-s285_(X,"f") .

s288_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"t*") .
s289_(X,"f"):-s288_(X,"t*") .
s289_(X,"t*"):-s288_(X,"f") .
rdfs_range_(X,@new(s289,X,rdfs_range,1..1),"t"):-choose(s289,X,rdfs_range,1) .
choose(s289,X,rdfs_range,1);choose(s289,X,rdfs_range,0):-s289_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s290_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s289_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s290_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s289_(X,"t*") .
s291_(X,"f"):-s290_(X,"t*") .
s291_(X,"t*"):-s290_(X,"f") .

s292_(X,"t*"):-s291_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s292_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s292_(X,"f") .
s293_(X,"t*"):-s291_(X,"t*") .
rdfs_Datatype_(X,"t"):-s293_(X,"t*") .
rdfs_Datatype_(X,"f"):-s293_(X,"f") .
s292_(X,"f");s293_(X,"f"):-s291_(X,"f") .

s284_(X,"f");s288_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*"):-s283_(X,"t*") .

s294_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s295_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s294_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s295_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s294_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s295_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s295_(X,"f") .

s296_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"t*") .
s297_(X,"f"):-s296_(X,"t*") .
s297_(X,"t*"):-s296_(X,"f") .
rdfs_subPropertyOf_(X,@new(s297,X,rdfs_subPropertyOf,1..1),"t"):-choose(s297,X,rdfs_subPropertyOf,1) .
choose(s297,X,rdfs_subPropertyOf,1);choose(s297,X,rdfs_subPropertyOf,0):-s297_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s298_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s297_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s298_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s297_(X,"t*") .
s299_(X,"f"):-s298_(X,"t*") .
s299_(X,"t*"):-s298_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s299_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s299_(X,"f") .

s294_(X,"f");s296_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*"):-s283_(X,"t*") .




s300_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*");s301_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f")} (C-0):-s300_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*")}=C,C>0 .
0 {s301_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t**")} 0:-s300_(X,"t*") .

s302_(X,"t*"):-s301_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s302_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s302_(X,"f") .
s303_(X,"t*"):-s301_(X,"t*") .
rdfs_Datatype_(X,"t"):-s303_(X,"t*") .
rdfs_Datatype_(X,"f"):-s303_(X,"f") .
s302_(X,"f");s303_(X,"f"):-s301_(X,"f") .

s304_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"t*") .
s305_(X,"f"):-s304_(X,"t*") .
s305_(X,"t*"):-s304_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,@new(s305,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1..1),"t"):-choose(s305,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1) .
choose(s305,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,1);choose(s305,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st,0):-s305_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*");s306_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f")} (C-0):-s305_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t*")}=C,C>0 .
1 {s306_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t**")} 1:-s305_(X,"t*") .
s307_(X,"f"):-s306_(X,"t*") .
s307_(X,"t*"):-s306_(X,"f") .

s308_(X,"t*"):-s307_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"f"):-s308_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1914_(X,"t*"):-s308_(X,"f") .
s309_(X,"t*"):-s307_(X,"t*") .
rdfs_Datatype_(X,"t"):-s309_(X,"t*") .
rdfs_Datatype_(X,"f"):-s309_(X,"f") .
s308_(X,"f");s309_(X,"f"):-s307_(X,"f") .

s300_(X,"f");s304_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"f") .
s310_(X,"t*"):-s283_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s310_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s310_(X,"f") .
s311_(X,"t*"):-s283_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"f"):-s311_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1942_(X,"t*"):-s311_(X,"f") .

s312_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s313_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s312_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s313_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s312_(X,"t*") .

s314_(X,"t*"):-s313_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s314_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s314_(X,"f") .
s315_(X,"t*"):-s313_(X,"t*") .
owl_Class_(X,"t"):-s315_(X,"t*") .
owl_Class_(X,"f"):-s315_(X,"f") .
s314_(X,"f");s315_(X,"f"):-s313_(X,"f") .

s316_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"t*") .
s317_(X,"f"):-s316_(X,"t*") .
s317_(X,"t*"):-s316_(X,"f") .
rdfs_range_(X,@new(s317,X,rdfs_range,1..1),"t"):-choose(s317,X,rdfs_range,1) .
choose(s317,X,rdfs_range,1);choose(s317,X,rdfs_range,0):-s317_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s318_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s317_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s318_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s317_(X,"t*") .
s319_(X,"f"):-s318_(X,"t*") .
s319_(X,"t*"):-s318_(X,"f") .

s320_(X,"t*"):-s319_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s320_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s320_(X,"f") .
s321_(X,"t*"):-s319_(X,"t*") .
owl_Class_(X,"t"):-s321_(X,"t*") .
owl_Class_(X,"f"):-s321_(X,"f") .
s320_(X,"f");s321_(X,"f"):-s319_(X,"f") .

s312_(X,"f");s316_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1943_(X,"f") .
s322_(X,"t*"):-s283_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"f"):-s322_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1940_(X,"t*"):-s322_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1950_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1944_(X,"f");s310_(X,"f");s311_(X,"f");s322_(X,"f"):-s283_(X,"f") .
s323_(X,"f"):-s282_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*"):-s323_(X,"t*") .

s324_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s325_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s324_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s325_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s324_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s325_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s325_(X,"f") .

s326_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"t*") .
s327_(X,"f"):-s326_(X,"t*") .
s327_(X,"t*"):-s326_(X,"f") .
rdfs_subPropertyOf_(X,@new(s327,X,rdfs_subPropertyOf,1..1),"t"):-choose(s327,X,rdfs_subPropertyOf,1) .
choose(s327,X,rdfs_subPropertyOf,1);choose(s327,X,rdfs_subPropertyOf,0):-s327_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s328_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s327_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s328_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s327_(X,"t*") .
s329_(X,"f"):-s328_(X,"t*") .
s329_(X,"t*"):-s328_(X,"f") .

owl_ObjectProperty_(X,"t"):-s329_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s329_(X,"f") .

s324_(X,"f");s326_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*"):-s323_(X,"t*") .

s330_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s331_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s330_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s331_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s330_(X,"t*") .

s332_(X,"t*"):-s331_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s332_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s332_(X,"f") .
s333_(X,"t*"):-s331_(X,"t*") .
owl_Class_(X,"t"):-s333_(X,"t*") .
owl_Class_(X,"f"):-s333_(X,"f") .
s332_(X,"f");s333_(X,"f"):-s331_(X,"f") .

s334_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"t*") .
s335_(X,"f"):-s334_(X,"t*") .
s335_(X,"t*"):-s334_(X,"f") .
rdfs_range_(X,@new(s335,X,rdfs_range,1..1),"t"):-choose(s335,X,rdfs_range,1) .
choose(s335,X,rdfs_range,1);choose(s335,X,rdfs_range,0):-s335_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s336_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s335_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s336_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s335_(X,"t*") .
s337_(X,"f"):-s336_(X,"t*") .
s337_(X,"t*"):-s336_(X,"f") .

s338_(X,"t*"):-s337_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s338_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s338_(X,"f") .
s339_(X,"t*"):-s337_(X,"t*") .
owl_Class_(X,"t"):-s339_(X,"t*") .
owl_Class_(X,"f"):-s339_(X,"f") .
s338_(X,"f");s339_(X,"f"):-s337_(X,"f") .

s330_(X,"f");s334_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*"):-s323_(X,"t*") .




s340_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*");s341_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f")} (C-0):-s340_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*")}=C,C>0 .
0 {s341_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t**")} 0:-s340_(X,"t*") .

s342_(X,"t*"):-s341_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s342_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s342_(X,"f") .
s343_(X,"t*"):-s341_(X,"t*") .
owl_Class_(X,"t"):-s343_(X,"t*") .
owl_Class_(X,"f"):-s343_(X,"f") .
s342_(X,"f");s343_(X,"f"):-s341_(X,"f") .

s344_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"t*") .
s345_(X,"f"):-s344_(X,"t*") .
s345_(X,"t*"):-s344_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,@new(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1..1),"t"):-choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1) .
choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,1);choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st,0):-s345_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*");s346_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f")} (C-0):-s345_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t*")}=C,C>0 .
1 {s346_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t**")} 1:-s345_(X,"t*") .
s347_(X,"f"):-s346_(X,"t*") .
s347_(X,"t*"):-s346_(X,"f") .

s348_(X,"t*"):-s347_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s348_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s348_(X,"f") .
s349_(X,"t*"):-s347_(X,"t*") .
owl_Class_(X,"t"):-s349_(X,"t*") .
owl_Class_(X,"f"):-s349_(X,"f") .
s348_(X,"f");s349_(X,"f"):-s347_(X,"f") .

s340_(X,"f");s344_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"f") .
s350_(X,"t*"):-s323_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s350_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s350_(X,"f") .
s351_(X,"t*"):-s323_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"f"):-s351_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1931_(X,"t*"):-s351_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1932_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd1933_(X,"f");s350_(X,"f");s351_(X,"f"):-s323_(X,"f") .
s283_(X,"t*");s323_(X,"t*"):-s282_(X,"t*") .
s352_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"f"):-s352_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"t*"):-s352_(X,"f") .
s353_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"f"):-s353_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1927_(X,"t*"):-s353_(X,"f") .
s354_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"f"):-s354_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1929_(X,"t*"):-s354_(X,"f") .
s355_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"f"):-s355_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1930_(X,"t*"):-s355_(X,"f") .
s356_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*"):-s356_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f"):-s356_(X,"f") .

s357_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s358_(X,"f"):-s357_(X,"t*") .
s358_(X,"t*"):-s357_(X,"f") .
rdfs_domain_(X,@new(s358,X,rdfs_domain,1..1),"t"):-choose(s358,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s358,X,rdfs_domain,1..2),"t"):-choose(s358,X,rdfs_domain,2) .
choose(s358,X,rdfs_domain,2);choose(s358,X,rdfs_domain,1);choose(s358,X,rdfs_domain,0):-s358_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s359_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s358_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s359_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s358_(X,"t*") .


s360_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s361_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s360_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s361_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s360_(X,"t*") .


s362_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s363_(X,"f"):-s362_(X,"t*") .
s363_(X,"t*"):-s362_(X,"f") .
rdfs_domain_(X,@new(s363,X,rdfs_domain,1..1),"t"):-choose(s363,X,rdfs_domain,1) .
choose(s363,X,rdfs_domain,1);choose(s363,X,rdfs_domain,0):-s363_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s364_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s363_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s364_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s363_(X,"t*") .
s365_(X,"f"):-s364_(X,"t*") .
s365_(X,"t*"):-s364_(X,"f") .


s357_(X,"f");s360_(X,"f");s362_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f") .
s366_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*"):-s366_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f"):-s366_(X,"f") .

s367_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s368_(X,"f"):-s367_(X,"t*") .
s368_(X,"t*"):-s367_(X,"f") .
rdfs_domain_(X,@new(s368,X,rdfs_domain,1..1),"t"):-choose(s368,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s368,X,rdfs_domain,1..2),"t"):-choose(s368,X,rdfs_domain,2) .
choose(s368,X,rdfs_domain,2);choose(s368,X,rdfs_domain,1);choose(s368,X,rdfs_domain,0):-s368_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s369_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s368_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s369_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s368_(X,"t*") .


s370_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s371_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s370_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s371_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s370_(X,"t*") .


s372_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s373_(X,"f"):-s372_(X,"t*") .
s373_(X,"t*"):-s372_(X,"f") .
rdfs_domain_(X,@new(s373,X,rdfs_domain,1..1),"t"):-choose(s373,X,rdfs_domain,1) .
choose(s373,X,rdfs_domain,1);choose(s373,X,rdfs_domain,0):-s373_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s374_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s373_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s374_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s373_(X,"t*") .
s375_(X,"f"):-s374_(X,"t*") .
s375_(X,"t*"):-s374_(X,"f") .


s367_(X,"f");s370_(X,"f");s372_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f") .
s376_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*"):-s376_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f"):-s376_(X,"f") .

s377_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s378_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s377_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s378_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s377_(X,"t*") .

s379_(X,"t*"):-s378_(X,"t*") .
owl_Class_(X,"t"):-s379_(X,"t*") .
owl_Class_(X,"f"):-s379_(X,"f") .
s380_(X,"t*"):-s378_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s380_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s380_(X,"f") .
s379_(X,"f");s380_(X,"f"):-s378_(X,"f") .

s381_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"t*") .
s382_(X,"f"):-s381_(X,"t*") .
s382_(X,"t*"):-s381_(X,"f") .
rdfs_domain_(X,@new(s382,X,rdfs_domain,1..1),"t"):-choose(s382,X,rdfs_domain,1) .
choose(s382,X,rdfs_domain,1);choose(s382,X,rdfs_domain,0):-s382_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s383_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s382_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s383_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s382_(X,"t*") .
s384_(X,"f"):-s383_(X,"t*") .
s384_(X,"t*"):-s383_(X,"f") .

s385_(X,"t*"):-s384_(X,"t*") .
owl_Class_(X,"t"):-s385_(X,"t*") .
owl_Class_(X,"f"):-s385_(X,"f") .
s386_(X,"t*"):-s384_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s386_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s386_(X,"f") .
s385_(X,"f");s386_(X,"f"):-s384_(X,"f") .

s377_(X,"f");s381_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1919_(X,"f") .
s387_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*"):-s387_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"f"):-s387_(X,"f") .

s388_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s389_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s388_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s389_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s388_(X,"t*") .


s390_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
s391_(X,"f"):-s390_(X,"t*") .
s391_(X,"t*"):-s390_(X,"f") .
rdfs_range_(X,@new(s391,X,rdfs_range,1..1),"t"):-choose(s391,X,rdfs_range,1) .
rdfs_range_(X,@new(s391,X,rdfs_range,1..2),"t"):-choose(s391,X,rdfs_range,2) .
choose(s391,X,rdfs_range,2);choose(s391,X,rdfs_range,1);choose(s391,X,rdfs_range,0):-s391_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s392_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s391_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s392_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s391_(X,"t*") .


s393_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"t*") .
s394_(X,"f"):-s393_(X,"t*") .
s394_(X,"t*"):-s393_(X,"f") .
rdfs_range_(X,@new(s394,X,rdfs_range,1..1),"t"):-choose(s394,X,rdfs_range,1) .
choose(s394,X,rdfs_range,1);choose(s394,X,rdfs_range,0):-s394_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s395_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s394_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s395_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s394_(X,"t*") .
s396_(X,"f"):-s395_(X,"t*") .
s396_(X,"t*"):-s395_(X,"f") .


s388_(X,"f");s390_(X,"f");s393_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1926_(X,"f") .
s49_(X,"f");s60_(X,"f");s61_(X,"f");s62_(X,"f");s132_(X,"f");s143_(X,"f");s213_(X,"f");s214_(X,"f");s215_(X,"f");s216_(X,"f");s227_(X,"f");s237_(X,"f");s238_(X,"f");s248_(X,"f");s258_(X,"f");s269_(X,"f");s270_(X,"f");s271_(X,"f");s282_(X,"f");s352_(X,"f");s353_(X,"f");s354_(X,"f");s355_(X,"f");s356_(X,"f");s366_(X,"f");s376_(X,"f");s387_(X,"f"):-d_PropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1951_(X,"t*"):-d_FunctionalPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1951_(X,"f"):-d_FunctionalPropertyShape_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1951
s397_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1951_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*");s398_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"f")} (C-0):-s397_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"f") .
0 {s398_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t**")} 0:-s397_(X,"t*") .

owl_FunctionalProperty_(X,"t"):-s398_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s398_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1951
s399_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1951_(X,"t*") .
s400_(X,"f"):-s399_(X,"t*") .
s400_(X,"t*"):-s399_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s400,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s400,X,rdfs_subPropertyOf,1) .
choose(s400,X,rdfs_subPropertyOf,1);choose(s400,X,rdfs_subPropertyOf,0):-s400_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*");s401_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"f")} (C-0):-s400_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*")}=C,C>0 .
1 {s401_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t**")} 1:-s400_(X,"t*") .
s402_(X,"f"):-s401_(X,"t*") .
s402_(X,"t*"):-s401_(X,"f") .

owl_FunctionalProperty_(X,"t"):-s402_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s402_(X,"f") .

s397_(X,"f");s399_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1951_(X,"f") .
s403_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1970_(X,"t*"):-s403_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1970_(X,"f"):-s403_(X,"f") .


s404_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"f"):-s404_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s404_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s404_(X,"f") .

% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd1970
s405_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,@new(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,1..1),"t"):-choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,1) .
choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,1);choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,0):-s405_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*");s406_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"f")} (C-0):-s405_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,X1,"f") .
1 {s406_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t**")} 1:-s405_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1970
s407_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_(X,"t*") .
s408_(X,"f"):-s407_(X,"t*") .
s408_(X,"t*"):-s407_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,@new(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,1..1),"t"):-choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,1) .
choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,1);choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st,0):-s408_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*");s409_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"f")} (C-0):-s408_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t*")}=C,C>0 .
1 {s409_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t**")} 1:-s408_(X,"t*") .
s410_(X,"f"):-s409_(X,"t*") .
s410_(X,"t*"):-s409_(X,"f") .


s404_(X,"f");s405_(X,"f");s407_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_(X,"f") .
s411_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1965_(X,"t*"):-s411_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1965_(X,"f"):-s411_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1965
s412_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*");s413_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"f")} (C-0):-s412_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,X1,"f") .
0 {s413_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t**")} 0:-s412_(X,"t*") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1965
s414_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_(X,"t*") .
s415_(X,"f"):-s414_(X,"t*") .
s415_(X,"t*"):-s414_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,@new(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,1..1),"t"):-choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,1) .
choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,1);choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,0):-s415_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*");s416_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"f")} (C-0):-s415_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*")}=C,C>0 .
1 {s416_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t**")} 1:-s415_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1965
s417_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_(X,"t*") .
s418_(X,"f"):-s417_(X,"t*") .
s418_(X,"t*"):-s417_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,@new(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,1..1),"t"):-choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,1) .
choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,1);choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st,0):-s418_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*");s419_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"f")} (C-0):-s418_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t*")}=C,C>0 .
1 {s419_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t**")} 1:-s418_(X,"t*") .
s420_(X,"f"):-s419_(X,"t*") .
s420_(X,"t*"):-s419_(X,"f") .


s412_(X,"f");s414_(X,"f");s417_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_(X,"f") .
s403_(X,"t*");s411_(X,"t*"):-d_DomainConsistencyShape_(X,"t*") .
s421_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1980_(X,"t*"):-s421_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1980_(X,"f"):-s421_(X,"f") .


% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd1980
s422_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,@new(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,1..1),"t"):-choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,1) .
choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,1);choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,0):-s422_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*");s423_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"f")} (C-0):-s422_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,X1,"f") .
1 {s423_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t**")} 1:-s422_(X,"t*") .


s424_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"f"):-s424_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s424_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s424_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1980
s425_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_(X,"t*") .
s426_(X,"f"):-s425_(X,"t*") .
s426_(X,"t*"):-s425_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,@new(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,1..1),"t"):-choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,1) .
choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,1);choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st,0):-s426_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*");s427_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"f")} (C-0):-s426_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t*")}=C,C>0 .
1 {s427_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t**")} 1:-s426_(X,"t*") .
s428_(X,"f"):-s427_(X,"t*") .
s428_(X,"t*"):-s427_(X,"f") .


s422_(X,"f");s424_(X,"f");s425_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_(X,"f") .
s429_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1975_(X,"t*"):-s429_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1975_(X,"f"):-s429_(X,"f") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1975
s430_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_(X,"t*") .
s431_(X,"f"):-s430_(X,"t*") .
s431_(X,"t*"):-s430_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,@new(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,1..1),"t"):-choose(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,1) .
choose(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,1);choose(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,0):-s431_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*");s432_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"f")} (C-0):-s431_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,X1,"f") .
1 {s432_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t**")} 1:-s431_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1975
s433_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*");s434_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"f")} (C-0):-s433_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*")}=C,C>0 .
0 {s434_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t**")} 0:-s433_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1975
s435_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_(X,"t*") .
s436_(X,"f"):-s435_(X,"t*") .
s436_(X,"t*"):-s435_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,@new(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,1..1),"t"):-choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,1) .
choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,1);choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st,0):-s436_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*");s437_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"f")} (C-0):-s436_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t*")}=C,C>0 .
1 {s437_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t**")} 1:-s436_(X,"t*") .
s438_(X,"f"):-s437_(X,"t*") .
s438_(X,"t*"):-s437_(X,"f") .


s430_(X,"f");s433_(X,"f");s435_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_(X,"f") .
s421_(X,"t*");s429_(X,"t*"):-d_RangeConsistencyShape_(X,"t*") .
s439_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s439_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s439_(X,"f") .
s440_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s440_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s440_(X,"f") .
s441_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"f"):-s441_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1913_(X,"t*"):-s441_(X,"f") .
s442_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s442_(X,"t*") .
owl_Class_(X,"f"):-s442_(X,"f") .
s443_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s443_(X,"t*") .
owl_Class_(X,"f"):-s443_(X,"f") .
s444_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s444_(X,"t*") .
owl_Class_(X,"f"):-s444_(X,"f") .
s439_(X,"f");s440_(X,"f");s441_(X,"f");s442_(X,"f");s443_(X,"f");s444_(X,"f"):-d_ClassShape_(X,"f") .

% Interpretation Rules

owl_inverseOf_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f") .
rdfs_domain_(X,Y,"t**"):-rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1956_st_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1956_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1956_st_(X,Y,"f") .
dc_contributor_(X,Y,"t**"):-dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1983_st_(X,Y,"t**"):-dc_contributor_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1983_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1983_st_(X,Y,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),not rdfs_subPropertyOf_inv_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1954_st_(X,Y,"f") .
owl_SymmetricProperty_(X,"t**"):-owl_SymmetricProperty_(X,"t*"),not owl_SymmetricProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1953_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1953_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1953_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1919_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1919_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1919_st_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
rdfs_Datatype_(X,"t**"):-rdfs_Datatype_(X,"t*"),not rdfs_Datatype_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1941_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1941_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1941_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1950_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1950_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1950_st_(X,Y,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
owl_unionOf_(X,Y,"t**"):-owl_unionOf_(X,Y,"t*"),not owl_unionOf_(X,Y,"f") .
rdf_rest_(X,Y,"t**"):-rdf_rest_(X,Y,"t*"),not rdf_rest_(X,Y,"f") .
rdf_rest_star_(X,Y,"t**"):-rdf_rest_star_(X,Y,"t*"),not rdf_rest_star_(X,Y,"f") .
rdf_first_(X,Y,"t**"):-rdf_first_(X,Y,"t*"),not rdf_first_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1943_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1943_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1943_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1939_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1939_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1939_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1932_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1932_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1932_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,X3,"f"),rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
owl_OntologyProperty_(X,"t**"):-owl_OntologyProperty_(X,"t*"),not owl_OntologyProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1926_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1926_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1926_st_(X,Y,"f") .
owl_AnnotationProperty_(X,"t**"):-owl_AnnotationProperty_(X,"t*"),not owl_AnnotationProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1951_st_(X,Y,"f") .
owl_FunctionalProperty_(X,"t**"):-owl_FunctionalProperty_(X,"t*"),not owl_FunctionalProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .

% Program Constraints

:-owl_inverseOf_(X,Y,"t"),owl_inverseOf_(X,Y,"f") .
:-rdfs_domain_(X,Y,"t"),rdfs_domain_(X,Y,"f") .
:-s1_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t**") .
:-s1_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1957_st_(X,Y,"f") .
:-s3_(X,"f") .
:-s7_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-s10_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t**") .
:-s10_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1960_st_(X,Y,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-dc_contributor_(X,Y,"t"),dc_contributor_(X,Y,"f") .
:-s26_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-rdfs_subPropertyOf_(X,Y,"t"),rdfs_subPropertyOf_(X,Y,"f") .
:-rdfs_subPropertyOf_inv_(X,Y,"t"),rdfs_subPropertyOf_inv_(X,Y,"f") .
:-owl_SymmetricProperty_(X,"t"),owl_SymmetricProperty_(X,"f") .
:-s43_(X,"f") .
:-s44_(X,"t*"),rdfs_range_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s44_(X,"t*"),rdfs_domain_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s48_(X,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-rdfs_Datatype_(X,"t"),rdfs_Datatype_(X,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-owl_unionOf_(X,Y,"t"),owl_unionOf_(X,Y,"f") .
:-rdf_rest_(X,Y,"t"),rdf_rest_(X,Y,"f") .
:-rdf_rest_star_(X,Y,"t"),rdf_rest_star_(X,Y,"f") .
:-rdf_rest_star_(X,X,"f") .
:-rdf_first_(X,Y,"t"),rdf_first_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1944_st_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1933_st_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1920_st_(X,Y,"f") .
:-s230_(X,"f") .
:-s232_(X,"f") .
:-s236_(X,"f") .
:-owl_OntologyProperty_(X,"t"),owl_OntologyProperty_(X,"f") .
:-s240_(X,"f") .
:-s243_(X,"f") .
:-s247_(X,"f") .
:-s251_(X,"f") .
:-s253_(X,"f") .
:-s257_(X,"f") .
:-owl_AnnotationProperty_(X,"t"),owl_AnnotationProperty_(X,"f") .
:-s359_(X,"f") .
:-s361_(X,"f") .
:-s365_(X,"f") .
:-s369_(X,"f") .
:-s371_(X,"f") .
:-s375_(X,"f") .
:-s389_(X,"f") .
:-s392_(X,"f") .
:-s396_(X,"f") .
:-owl_FunctionalProperty_(X,"t"),owl_FunctionalProperty_(X,"f") .
:-s404_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t**") .
:-s404_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1970_st_(X,Y,"f") .
:-s406_(X,"f") .
:-s410_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1965_st_(X,Y,"f") .
:-s413_(X,"f") .
:-s416_(X,"f") .
:-s420_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"f") .
:-s423_(X,"f") .
:-s424_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t**") .
:-s424_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd1980_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s428_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd1975_st_(X,Y,"f") .
:-s432_(X,"f") .
:-s434_(X,"f") .
:-s438_(X,"f") .

% Change Set Rules

add(owl_inverseOf(X,Y)):-owl_inverseOf_(X,Y,"t**"),not owl_inverseOf(X,Y) .
del(owl_inverseOf(X,Y)):-owl_inverseOf_(X,Y,"f"),owl_inverseOf(X,Y) .
add(rdfs_domain(X,Y)):-rdfs_domain_(X,Y,"t**"),not rdfs_domain(X,Y) .
del(rdfs_domain(X,Y)):-rdfs_domain_(X,Y,"f"),rdfs_domain(X,Y) .
add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
add(dc_contributor(X,Y)):-dc_contributor_(X,Y,"t**"),not dc_contributor(X,Y) .
del(dc_contributor(X,Y)):-dc_contributor_(X,Y,"f"),dc_contributor(X,Y) .
add(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"t**"),not rdfs_subPropertyOf(X,Y) .
del(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"f"),rdfs_subPropertyOf(X,Y) .
add(owl_SymmetricProperty(X)):-owl_SymmetricProperty_(X,"t**"),not owl_SymmetricProperty(X) .
del(owl_SymmetricProperty(X)):-owl_SymmetricProperty_(X,"f"),owl_SymmetricProperty(X) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(rdfs_Datatype(X)):-rdfs_Datatype_(X,"t**"),not rdfs_Datatype(X) .
del(rdfs_Datatype(X)):-rdfs_Datatype_(X,"f"),rdfs_Datatype(X) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
add(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"t**"),not owl_unionOf(X,Y) .
del(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"f"),owl_unionOf(X,Y) .
add(rdf_rest(X,Y)):-rdf_rest_(X,Y,"t**"),not rdf_rest(X,Y) .
del(rdf_rest(X,Y)):-rdf_rest_(X,Y,"f"),rdf_rest(X,Y) .
add(rdf_first(X,Y)):-rdf_first_(X,Y,"t**"),not rdf_first(X,Y) .
del(rdf_first(X,Y)):-rdf_first_(X,Y,"f"),rdf_first(X,Y) .
add(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"t**"),not owl_OntologyProperty(X) .
del(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"f"),owl_OntologyProperty(X) .
add(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"t**"),not owl_AnnotationProperty(X) .
del(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"f"),owl_AnnotationProperty(X) .
add(owl_FunctionalProperty(X)):-owl_FunctionalProperty_(X,"t**"),not owl_FunctionalProperty(X) .
del(owl_FunctionalProperty(X)):-owl_FunctionalProperty_(X,"f"),owl_FunctionalProperty(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

:-add(rdfs_subClassOf(X,Y)) .
#minimize { 5@3,X,Y: del(rdfs_subClassOfD(X,Y)) } .
:-add(rdfs_subPropertyOf(X,Y)) .
#minimize { 5@3,X,Y: del(rdfs_subPropertyOf(X,Y)) } .
#minimize { 2@3,X,Y: del(rdfs_domain(X,Y)) } .
#maximize { 1@3,X: add(owl_ObjectProperty(X)),rdf_Property(X) } .
:-add(owl_unionOf(X,Y)) .
:-add(rdf_first(X,Y)) .
:-del(rdf_rest(X,Y)) .
:-add(rdf_rest(X,Y)) .
:-del(owl_unionOf(X,Y)) .
:-del(rdf_first(X,Y)) .
:-del(rdfs_Datatype(X)) .
#maximize { 1@3,X: add(owl_DatatypeProperty(X)),owl_AnnotationProperty(X) } .
#minimize { 2@3,X,Y: del(rdfs_range(X,Y)) } .

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
