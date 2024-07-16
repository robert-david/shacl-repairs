
% Graph Data

ex_Rectangle("ex_InvalidRectangle1") .
ex_height("ex_InvalidRectangle1","3") .
xsd_integer("3") .
ex_Rectangle("ex_InvalidRectangle2") .
ex_width("ex_InvalidRectangle2","2") .
xsd_integer("2") .
rdfs_Class("ex_Rectangle") .
sh_NodeShape("ex_Rectangle") .
rdfs_subClassOf("ex_Rectangle","rdfs_Resource") .
sh_and("ex_Rectangle","bnode_6e957a6331f648adaec55884eab70e68293") .
rdf_first("bnode_6e957a6331f648adaec55884eab70e68293","bnode_6e957a6331f648adaec55884eab70e68294") .
sh_property("bnode_6e957a6331f648adaec55884eab70e68294","bnode_6e957a6331f648adaec55884eab70e68295") .
sh_path("bnode_6e957a6331f648adaec55884eab70e68295","ex_width") .
sh_minCount("bnode_6e957a6331f648adaec55884eab70e68295","1") .
xsd_integer("1") .
rdf_rest("bnode_6e957a6331f648adaec55884eab70e68293","bnode_6e957a6331f648adaec55884eab70e68296") .
rdf_first("bnode_6e957a6331f648adaec55884eab70e68296","bnode_6e957a6331f648adaec55884eab70e68297") .
sh_property("bnode_6e957a6331f648adaec55884eab70e68297","bnode_6e957a6331f648adaec55884eab70e68298") .
sh_path("bnode_6e957a6331f648adaec55884eab70e68298","ex_height") .
sh_minCount("bnode_6e957a6331f648adaec55884eab70e68298","1") .
rdf_rest("bnode_6e957a6331f648adaec55884eab70e68296","rdf_nil") .
ex_Rectangle("ex_ValidRectangle1") .
ex_height("ex_ValidRectangle1","3") .
ex_width("ex_ValidRectangle1","2") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_6e957a6331f648adaec55884eab70e68299") .
rdf_first("bnode_6e957a6331f648adaec55884eab70e68299","http://repairs.shacl.org/and_001") .
rdf_rest("bnode_6e957a6331f648adaec55884eab70e68299","rdf_nil") .
sht_Validate("http://repairs.shacl.org/and_001") .
rdfs_label("http://repairs.shacl.org/and_001","Test of sh:and at node shape 001") .
xsd_string("Test of sh:and at node shape 001") .
mf_action("http://repairs.shacl.org/and_001","bnode_6e957a6331f648adaec55884eab70e68300") .
sht_dataGraph("bnode_6e957a6331f648adaec55884eab70e68300","http://repairs.shacl.org") .
sht_shapesGraph("bnode_6e957a6331f648adaec55884eab70e68300","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/and_001","bnode_6e957a6331f648adaec55884eab70e68301") .
sh_ValidationReport("bnode_6e957a6331f648adaec55884eab70e68301") .
sh_conforms("bnode_6e957a6331f648adaec55884eab70e68301","false") .
xsd_boolean("false") .
sh_result("bnode_6e957a6331f648adaec55884eab70e68301","bnode_6e957a6331f648adaec55884eab70e68302") .
sh_ValidationResult("bnode_6e957a6331f648adaec55884eab70e68302") .
sh_focusNode("bnode_6e957a6331f648adaec55884eab70e68302","ex_InvalidRectangle1") .
sh_resultSeverity("bnode_6e957a6331f648adaec55884eab70e68302","sh_Violation") .
sh_sourceConstraintComponent("bnode_6e957a6331f648adaec55884eab70e68302","sh_AndConstraintComponent") .
sh_sourceShape("bnode_6e957a6331f648adaec55884eab70e68302","ex_Rectangle") .
sh_value("bnode_6e957a6331f648adaec55884eab70e68302","ex_InvalidRectangle1") .
sh_result("bnode_6e957a6331f648adaec55884eab70e68301","bnode_6e957a6331f648adaec55884eab70e68303") .
sh_ValidationResult("bnode_6e957a6331f648adaec55884eab70e68303") .
sh_focusNode("bnode_6e957a6331f648adaec55884eab70e68303","ex_InvalidRectangle2") .
sh_resultSeverity("bnode_6e957a6331f648adaec55884eab70e68303","sh_Violation") .
sh_sourceConstraintComponent("bnode_6e957a6331f648adaec55884eab70e68303","sh_AndConstraintComponent") .
sh_sourceShape("bnode_6e957a6331f648adaec55884eab70e68303","ex_Rectangle") .
sh_value("bnode_6e957a6331f648adaec55884eab70e68303","ex_InvalidRectangle2") .
mf_status("http://repairs.shacl.org/and_001","sht_approved") .
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

targetNode("ex_InvalidRectangle2",ex_Rectangle) .
targetNode("ex_ValidRectangle1",ex_Rectangle) .
targetNode("ex_InvalidRectangle1",ex_Rectangle) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_Rectangle_("ex_InvalidRectangle2","t*"):-actualTarget("ex_InvalidRectangle2",ex_Rectangle) .
ex_Rectangle_("ex_ValidRectangle1","t*"):-actualTarget("ex_ValidRectangle1",ex_Rectangle) .
ex_Rectangle_("ex_InvalidRectangle1","t*"):-actualTarget("ex_InvalidRectangle1",ex_Rectangle) .

% Annotation Rules

ex_width_(X,Y,"t*"):-ex_width(X,Y) .
ex_width_(X,Y,"t*"):-ex_width_(X,Y,"t") .
bnode_6e957a6331f648adaec55884eab70e68306_st_(X,Y,"t*"):-bnode_6e957a6331f648adaec55884eab70e68306_(X,_),ex_width_(X,Y,"t*") .
ex_height_(X,Y,"t*"):-ex_height(X,Y) .
ex_height_(X,Y,"t*"):-ex_height_(X,Y,"t") .
bnode_6e957a6331f648adaec55884eab70e68309_st_(X,Y,"t*"):-bnode_6e957a6331f648adaec55884eab70e68309_(X,_),ex_height_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_Rectangle_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68306_(X,"t*"):-s0_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68306_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for bnode_6e957a6331f648adaec55884eab70e68306
s1_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68306_(X,"t*") .
ex_width_(X,@new(s1,X,ex_width,1..1),"t"):-choose(s1,X,ex_width,1) .
choose(s1,X,ex_width,1);choose(s1,X,ex_width,0):-s1_(X,"t*") .
(C-0) {ex_width_(X,Y,"f"):ex_width_(X,Y,"t*");s2_(Y,"f"):ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_width_(X,Y,"t*")}=C,C>0 .
ex_width_(X,Y,"f"):-ex_width_(X,Y,"t*"),ex_width_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_width_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for bnode_6e957a6331f648adaec55884eab70e68306
s3_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68306_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_width_(X,@new(s4,X,ex_width,1..1),"t"):-choose(s4,X,ex_width,1) .
choose(s4,X,ex_width,1);choose(s4,X,ex_width,0):-s4_(X,"t*") .
(C-0) {ex_width_(X,Y,"f"):ex_width_(X,Y,"t*");s5_(Y,"f"):ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_width_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_width_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68306_(X,"f") .
s7_(X,"t*"):-ex_Rectangle_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68309_(X,"t*"):-s7_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68309_(X,"f"):-s7_(X,"f") .

% sh:minCount 1 for bnode_6e957a6331f648adaec55884eab70e68309
s8_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68309_(X,"t*") .
ex_height_(X,@new(s8,X,ex_height,1..1),"t"):-choose(s8,X,ex_height,1) .
choose(s8,X,ex_height,1);choose(s8,X,ex_height,0):-s8_(X,"t*") .
(C-0) {ex_height_(X,Y,"f"):ex_height_(X,Y,"t*");s9_(Y,"f"):ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_height_(X,Y,"t*")}=C,C>0 .
ex_height_(X,Y,"f"):-ex_height_(X,Y,"t*"),ex_height_(X,Y,"f") .
1 {s9_(Y,"t*"):ex_height_(X,Y,"t**")} 1:-s8_(X,"t*") .


% universal for bnode_6e957a6331f648adaec55884eab70e68309
s10_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68309_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_height_(X,@new(s11,X,ex_height,1..1),"t"):-choose(s11,X,ex_height,1) .
choose(s11,X,ex_height,1);choose(s11,X,ex_height,0):-s11_(X,"t*") .
(C-0) {ex_height_(X,Y,"f"):ex_height_(X,Y,"t*");s12_(Y,"f"):ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_height_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):ex_height_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68309_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_Rectangle_(X,"f") .

% Interpretation Rules

ex_width_(X,Y,"t**"):-ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f") .
bnode_6e957a6331f648adaec55884eab70e68306_st_(X,Y,"t**"):-ex_width_(X,Y,"t**"),bnode_6e957a6331f648adaec55884eab70e68306_st_(X,Y,"t*"),not bnode_6e957a6331f648adaec55884eab70e68306_st_(X,Y,"f") .
ex_height_(X,Y,"t**"):-ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f") .
bnode_6e957a6331f648adaec55884eab70e68309_st_(X,Y,"t**"):-ex_height_(X,Y,"t**"),bnode_6e957a6331f648adaec55884eab70e68309_st_(X,Y,"t*"),not bnode_6e957a6331f648adaec55884eab70e68309_st_(X,Y,"f") .

% Program Constraints

:-ex_width_(X,Y,"t"),ex_width_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-ex_height_(X,Y,"t"),ex_height_(X,Y,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

add(ex_width(X,Y)):-ex_width_(X,Y,"t**"),not ex_width(X,Y) .
del(ex_width(X,Y)):-ex_width_(X,Y,"f"),ex_width(X,Y) .
add(ex_height(X,Y)):-ex_height_(X,Y,"t**"),not ex_height(X,Y) .
del(ex_height(X,Y)):-ex_height_(X,Y,"f"),ex_height(X,Y) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@5,X,S: skipTarget(X,S) } .

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
