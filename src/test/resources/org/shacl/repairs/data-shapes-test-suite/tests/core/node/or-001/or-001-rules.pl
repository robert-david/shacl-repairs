
% Graph Data

ex_RectangleWithArea("ex_InvalidRectangle1") .
ex_height("ex_InvalidRectangle1","3") .
xsd_integer("3") .
ex_RectangleWithArea("ex_InvalidRectangle2") .
rdfs_Class("ex_RectangleWithArea") .
sh_NodeShape("ex_RectangleWithArea") .
rdfs_Resource(X):-ex_RectangleWithArea(X) .
sh_or("ex_RectangleWithArea","node1g835dclmx363") .
rdf_first("node1g835dclmx363","node1g835dclmx364") .
sh_property("node1g835dclmx364","node1g835dclmx365") .
sh_path("node1g835dclmx365","ex_height") .
sh_minCount("node1g835dclmx365","1") .
xsd_integer("1") .
sh_property("node1g835dclmx364","node1g835dclmx366") .
sh_path("node1g835dclmx366","ex_width") .
sh_minCount("node1g835dclmx366","1") .
rdf_rest("node1g835dclmx363","node1g835dclmx367") .
rdf_first("node1g835dclmx367","node1g835dclmx368") .
sh_property("node1g835dclmx368","node1g835dclmx369") .
sh_path("node1g835dclmx369","ex_area") .
sh_minCount("node1g835dclmx369","1") .
rdf_rest("node1g835dclmx367","rdf_nil") .
ex_RectangleWithArea("ex_ValidRectangle1") .
ex_height("ex_ValidRectangle1","3") .
ex_width("ex_ValidRectangle1","2") .
xsd_integer("2") .
ex_RectangleWithArea("ex_ValidRectangle2") .
ex_area("ex_ValidRectangle2","6") .
xsd_integer("6") .
ex_height("ex_ValidRectangle2","3") .
ex_width("ex_ValidRectangle2","2") .
ex_RectangleWithArea("ex_ValidRectangle3") .
ex_area("ex_ValidRectangle3","6") .
ex_height("ex_ValidRectangle3","3") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1g835dclmx370") .
rdf_first("node1g835dclmx370","http://repairs.shacl.org/or_001") .
rdf_rest("node1g835dclmx370","rdf_nil") .
sht_Validate("http://repairs.shacl.org/or_001") .
rdfs_label("http://repairs.shacl.org/or_001","Test of sh:or at node shape 001") .
xsd_string("Test of sh:or at node shape 001") .
mf_action("http://repairs.shacl.org/or_001","node1g835dclmx371") .
sht_dataGraph("node1g835dclmx371","http://repairs.shacl.org") .
sht_shapesGraph("node1g835dclmx371","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/or_001","node1g835dclmx372") .
sh_ValidationReport("node1g835dclmx372") .
sh_conforms("node1g835dclmx372","false") .
xsd_boolean("false") .
sh_result("node1g835dclmx372","node1g835dclmx373") .
sh_ValidationResult("node1g835dclmx373") .
sh_focusNode("node1g835dclmx373","ex_InvalidRectangle1") .
sh_resultSeverity("node1g835dclmx373","sh_Violation") .
sh_sourceConstraintComponent("node1g835dclmx373","sh_OrConstraintComponent") .
sh_sourceShape("node1g835dclmx373","ex_RectangleWithArea") .
sh_value("node1g835dclmx373","ex_InvalidRectangle1") .
sh_result("node1g835dclmx372","node1g835dclmx374") .
sh_ValidationResult("node1g835dclmx374") .
sh_focusNode("node1g835dclmx374","ex_InvalidRectangle2") .
sh_resultSeverity("node1g835dclmx374","sh_Violation") .
sh_sourceConstraintComponent("node1g835dclmx374","sh_OrConstraintComponent") .
sh_sourceShape("node1g835dclmx374","ex_RectangleWithArea") .
sh_value("node1g835dclmx374","ex_InvalidRectangle2") .
mf_status("http://repairs.shacl.org/or_001","sht_approved") .

% Shape Targets

targetNode("ex_InvalidRectangle2",ex_RectangleWithArea) .
targetNode("ex_InvalidRectangle1",ex_RectangleWithArea) .
targetNode("ex_ValidRectangle3",ex_RectangleWithArea) .
targetNode("ex_ValidRectangle1",ex_RectangleWithArea) .
targetNode("ex_ValidRectangle2",ex_RectangleWithArea) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_RectangleWithArea_("ex_InvalidRectangle2","t*"):-actualTarget("ex_InvalidRectangle2",ex_RectangleWithArea) .
ex_RectangleWithArea_("ex_InvalidRectangle1","t*"):-actualTarget("ex_InvalidRectangle1",ex_RectangleWithArea) .
ex_RectangleWithArea_("ex_ValidRectangle3","t*"):-actualTarget("ex_ValidRectangle3",ex_RectangleWithArea) .
ex_RectangleWithArea_("ex_ValidRectangle1","t*"):-actualTarget("ex_ValidRectangle1",ex_RectangleWithArea) .
ex_RectangleWithArea_("ex_ValidRectangle2","t*"):-actualTarget("ex_ValidRectangle2",ex_RectangleWithArea) .

% Annotation Rules

ex_area_(X,Y,"t*"):-ex_area(X,Y) .
ex_area_(X,Y,"t*"):-ex_area_(X,Y,"t") .
ex_height_(X,Y,"t*"):-ex_height(X,Y) .
ex_height_(X,Y,"t*"):-ex_height_(X,Y,"t") .
ex_width_(X,Y,"t*"):-ex_width(X,Y) .
ex_width_(X,Y,"t*"):-ex_width_(X,Y,"t") .

% Repair Rules

s0_(X,"f"):-ex_RectangleWithArea_(X,"f") .
node1g835dclmx381_(X,"t*"):-s0_(X,"t*") .
node1g835dclmx381_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for node1g835dclmx381
s1_(X,"t*"):-node1g835dclmx381_(X,"t*") .
ex_area_(X,@new(s1,X,ex_area,1..1),"t"):-choose(s1,X,ex_area,1) .
choose(s1,X,ex_area,1);choose(s1,X,ex_area,0):-s1_(X,"t*") .
(C-0) {ex_area_(X,Y,"f"):ex_area(X,Y);s2_(Y,"f"):ex_area_(X,Y,"t*"),not ex_area_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_area_(X,Y,"t*")}=C,C>0 .
1 {s2_(Y,"t*"):ex_area_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for node1g835dclmx381
s3_(X,"t*"):-node1g835dclmx381_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_area_(X,@new(s4,X,ex_area,1..1),"t"):-choose(s4,X,ex_area,1) .
choose(s4,X,ex_area,1);choose(s4,X,ex_area,0):-s4_(X,"t*") .
(C-0) {ex_area_(X,Y,"f"):ex_area(X,Y);s5_(Y,"f"):ex_area_(X,Y,"t*"),not ex_area_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_area_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_area_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1g835dclmx381_(X,"f") .
s7_(X,"f"):-ex_RectangleWithArea_(X,"f") .
node1g835dclmx377_(X,"t*"):-s7_(X,"t*") .

% sh:minCount 1 for node1g835dclmx377
s8_(X,"t*"):-node1g835dclmx377_(X,"t*") .
ex_height_(X,@new(s8,X,ex_height,1..1),"t"):-choose(s8,X,ex_height,1) .
choose(s8,X,ex_height,1);choose(s8,X,ex_height,0):-s8_(X,"t*") .
(C-0) {ex_height_(X,Y,"f"):ex_height(X,Y);s9_(Y,"f"):ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_height_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):ex_height_(X,Y,"t**")} 1:-s8_(X,"t*") .


% universal for node1g835dclmx377
s10_(X,"t*"):-node1g835dclmx377_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_height_(X,@new(s11,X,ex_height,1..1),"t"):-choose(s11,X,ex_height,1) .
choose(s11,X,ex_height,1);choose(s11,X,ex_height,0):-s11_(X,"t*") .
(C-0) {ex_height_(X,Y,"f"):ex_height(X,Y);s12_(Y,"f"):ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_height_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):ex_height_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-node1g835dclmx377_(X,"f") .
node1g835dclmx378_(X,"t*"):-s7_(X,"t*") .

% sh:minCount 1 for node1g835dclmx378
s14_(X,"t*"):-node1g835dclmx378_(X,"t*") .
ex_width_(X,@new(s14,X,ex_width,1..1),"t"):-choose(s14,X,ex_width,1) .
choose(s14,X,ex_width,1);choose(s14,X,ex_width,0):-s14_(X,"t*") .
(C-0) {ex_width_(X,Y,"f"):ex_width(X,Y);s15_(Y,"f"):ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_width_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):ex_width_(X,Y,"t**")} 1:-s14_(X,"t*") .


% universal for node1g835dclmx378
s16_(X,"t*"):-node1g835dclmx378_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
ex_width_(X,@new(s17,X,ex_width,1..1),"t"):-choose(s17,X,ex_width,1) .
choose(s17,X,ex_width,1);choose(s17,X,ex_width,0):-s17_(X,"t*") .
(C-0) {ex_width_(X,Y,"f"):ex_width(X,Y);s18_(Y,"f"):ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:ex_width_(X,Y,"t*")}=C,C>0 .
1 {s18_(Y,"t*"):ex_width_(X,Y,"t**")} 1:-s17_(X,"t*") .
s19_(X,"f"):-s18_(X,"t*") .
s19_(X,"t*"):-s18_(X,"f") .


s14_(X,"f");s16_(X,"f"):-node1g835dclmx378_(X,"f") .
node1g835dclmx377_(X,"f");node1g835dclmx378_(X,"f"):-s7_(X,"f") .
s0_(X,"t*");s7_(X,"t*"):-ex_RectangleWithArea_(X,"t*") .

% Interpretation Rules

ex_area_(X,Y,"t**"):-ex_area_(X,Y,"t*"),not ex_area_(X,Y,"f") .
ex_height_(X,Y,"t**"):-ex_height_(X,Y,"t*"),not ex_height_(X,Y,"f") .
ex_width_(X,Y,"t**"):-ex_width_(X,Y,"t*"),not ex_width_(X,Y,"f") .

% Program Constraints

:-ex_area_(X,Y,"t"),ex_area_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-ex_height_(X,Y,"t"),ex_height_(X,Y,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .
:-ex_width_(X,Y,"t"),ex_width_(X,Y,"f") .
:-s15_(X,"f") .
:-s19_(X,"f") .

% Change Set Rules

add(ex_area(X,Y)):-ex_area_(X,Y,"t**"),not ex_area(X,Y) .
del(ex_area(X,Y)):-ex_area_(X,Y,"f"),ex_area(X,Y) .
add(ex_height(X,Y)):-ex_height_(X,Y,"t**"),not ex_height(X,Y) .
del(ex_height(X,Y)):-ex_height_(X,Y,"f"),ex_height(X,Y) .
add(ex_width(X,Y)):-ex_width_(X,Y,"t**"),not ex_width(X,Y) .
del(ex_width(X,Y)):-ex_width_(X,Y,"f"),ex_width(X,Y) .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
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
