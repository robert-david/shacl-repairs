
% Graph Data

ex_Rectangle("ex_InvalidRectangle1") .
ex_height("ex_InvalidRectangle1","3") .
xsd_integer("3") .
ex_Rectangle("ex_InvalidRectangle2") .
ex_width("ex_InvalidRectangle2","2") .
xsd_integer("2") .
rdfs_Class("ex_Rectangle") .
sh_NodeShape("ex_Rectangle") .
rdfs_Resource(X):-ex_Rectangle(X) .
sh_and("ex_Rectangle","node1hmcimj6lx273") .
rdf_first("node1hmcimj6lx273","node1hmcimj6lx274") .
sh_property("node1hmcimj6lx274","node1hmcimj6lx275") .
sh_path("node1hmcimj6lx275","ex_width") .
sh_minCount("node1hmcimj6lx275","1") .
xsd_integer("1") .
rdf_rest("node1hmcimj6lx273","node1hmcimj6lx276") .
rdf_first("node1hmcimj6lx276","node1hmcimj6lx277") .
sh_property("node1hmcimj6lx277","node1hmcimj6lx278") .
sh_path("node1hmcimj6lx278","ex_height") .
sh_minCount("node1hmcimj6lx278","1") .
rdf_rest("node1hmcimj6lx276","rdf_nil") .
ex_Rectangle("ex_ValidRectangle1") .
ex_height("ex_ValidRectangle1","3") .
ex_width("ex_ValidRectangle1","2") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hmcimj6lx279") .
rdf_first("node1hmcimj6lx279","http://repairs.shacl.org/and_001") .
rdf_rest("node1hmcimj6lx279","rdf_nil") .
sht_Validate("http://repairs.shacl.org/and_001") .
rdfs_label("http://repairs.shacl.org/and_001","Test of sh:and at node shape 001") .
xsd_string("Test of sh:and at node shape 001") .
mf_action("http://repairs.shacl.org/and_001","node1hmcimj6lx280") .
sht_dataGraph("node1hmcimj6lx280","http://repairs.shacl.org") .
sht_shapesGraph("node1hmcimj6lx280","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/and_001","node1hmcimj6lx281") .
sh_ValidationReport("node1hmcimj6lx281") .
sh_conforms("node1hmcimj6lx281","false") .
xsd_boolean("false") .
sh_result("node1hmcimj6lx281","node1hmcimj6lx282") .
sh_ValidationResult("node1hmcimj6lx282") .
sh_focusNode("node1hmcimj6lx282","ex_InvalidRectangle1") .
sh_resultSeverity("node1hmcimj6lx282","sh_Violation") .
sh_sourceConstraintComponent("node1hmcimj6lx282","sh_AndConstraintComponent") .
sh_sourceShape("node1hmcimj6lx282","ex_Rectangle") .
sh_value("node1hmcimj6lx282","ex_InvalidRectangle1") .
sh_result("node1hmcimj6lx281","node1hmcimj6lx283") .
sh_ValidationResult("node1hmcimj6lx283") .
sh_focusNode("node1hmcimj6lx283","ex_InvalidRectangle2") .
sh_resultSeverity("node1hmcimj6lx283","sh_Violation") .
sh_sourceConstraintComponent("node1hmcimj6lx283","sh_AndConstraintComponent") .
sh_sourceShape("node1hmcimj6lx283","ex_Rectangle") .
sh_value("node1hmcimj6lx283","ex_InvalidRectangle2") .
mf_status("http://repairs.shacl.org/and_001","sht_approved") .

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

ex_height_(X,Y,"t*"):-ex_height(X,Y) .
ex_height_(X,Y,"t*"):-ex_height_(X,Y,"t") .
node1hmcimj6lx289_st_(X,Y,"t*"):-node1hmcimj6lx289_(X,_),ex_height_(X,Y,"t*") .
ex_width_(X,Y,"t*"):-ex_width(X,Y) .
ex_width_(X,Y,"t*"):-ex_width_(X,Y,"t") .
node1hmcimj6lx286_st_(X,Y,"t*"):-node1hmcimj6lx286_(X,_),ex_width_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_Rectangle_(X,"t*") .
node1hmcimj6lx289_(X,"t*"):-s0_(X,"t*") .
node1hmcimj6lx289_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for node1hmcimj6lx289
s1_(X,"t*"):-node1hmcimj6lx289_(X,"t*") .
ex_height_(X,@new(s1,X,ex_height,1..1),"t"):-choose(s1,X,ex_height,1) .
choose(s1,X,ex_height,1);choose(s1,X,ex_height,0):-s1_(X,"t*") .
(C-0) {ex_height_(X,Y,"f"):ex_height_(X,Y,"t*");s2_(Y,"f"):ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_height_(X,Y,"t*")}=C,C>0 .
ex_height_(X,Y,"f"):-s1_(X,"f"),ex_height_(X,Y,"t*"),ex_height_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_height_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for node1hmcimj6lx289
s3_(X,"t*"):-node1hmcimj6lx289_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_height_(X,@new(s4,X,ex_height,1..1),"t"):-choose(s4,X,ex_height,1) .
choose(s4,X,ex_height,1);choose(s4,X,ex_height,0):-s4_(X,"t*") .
(C-0) {ex_height_(X,Y,"f"):ex_height_(X,Y,"t*");s5_(Y,"f"):ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_height_(X,Y,"t*")}=C,C>0 .
ex_height_(X,Y,"f"):-s4_(X,"f"),ex_height_(X,Y,"t*"),ex_height_(X,Y,"f") .
1 {s5_(Y,"t*"):ex_height_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hmcimj6lx289_(X,"f") .
s7_(X,"t*"):-ex_Rectangle_(X,"t*") .
node1hmcimj6lx286_(X,"t*"):-s7_(X,"t*") .
node1hmcimj6lx286_(X,"f"):-s7_(X,"f") .

% sh:minCount 1 for node1hmcimj6lx286
s8_(X,"t*"):-node1hmcimj6lx286_(X,"t*") .
ex_width_(X,@new(s8,X,ex_width,1..1),"t"):-choose(s8,X,ex_width,1) .
choose(s8,X,ex_width,1);choose(s8,X,ex_width,0):-s8_(X,"t*") .
(C-0) {ex_width_(X,Y,"f"):ex_width_(X,Y,"t*");s9_(Y,"f"):ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_width_(X,Y,"t*")}=C,C>0 .
ex_width_(X,Y,"f"):-s8_(X,"f"),ex_width_(X,Y,"t*"),ex_width_(X,Y,"f") .
1 {s9_(Y,"t*"):ex_width_(X,Y,"t**")} 1:-s8_(X,"t*") .


% universal for node1hmcimj6lx286
s10_(X,"t*"):-node1hmcimj6lx286_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_width_(X,@new(s11,X,ex_width,1..1),"t"):-choose(s11,X,ex_width,1) .
choose(s11,X,ex_width,1);choose(s11,X,ex_width,0):-s11_(X,"t*") .
(C-0) {ex_width_(X,Y,"f"):ex_width_(X,Y,"t*");s12_(Y,"f"):ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_width_(X,Y,"t*")}=C,C>0 .
ex_width_(X,Y,"f"):-s11_(X,"f"),ex_width_(X,Y,"t*"),ex_width_(X,Y,"f") .
1 {s12_(Y,"t*"):ex_width_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-node1hmcimj6lx286_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_Rectangle_(X,"f") .

% Interpretation Rules

ex_height_(X,Y,"t**"):-ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f") .
node1hmcimj6lx289_st_(X,Y,"t**"):-ex_height_(X,Y,"t**"),node1hmcimj6lx289_st_(X,Y,"t*"),not node1hmcimj6lx289_st_(X,Y,"f") .
ex_width_(X,Y,"t**"):-ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f") .
node1hmcimj6lx286_st_(X,Y,"t**"):-ex_width_(X,Y,"t**"),node1hmcimj6lx286_st_(X,Y,"t*"),not node1hmcimj6lx286_st_(X,Y,"f") .

% Program Constraints

:-ex_height_(X,Y,"t"),ex_height_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-ex_width_(X,Y,"t"),ex_width_(X,Y,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

add(ex_height(X,Y)):-ex_height_(X,Y,"t**"),not ex_height(X,Y) .
del(ex_height(X,Y)):-ex_height_(X,Y,"f"),ex_height(X,Y) .
add(ex_width(X,Y)):-ex_width_(X,Y,"t**"),not ex_width(X,Y) .
del(ex_width(X,Y)):-ex_width_(X,Y,"f"),ex_width(X,Y) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
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
