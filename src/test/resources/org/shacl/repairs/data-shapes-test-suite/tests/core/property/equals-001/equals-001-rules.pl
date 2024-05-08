
% Graph Data

ex_property1("ex_InvalidResource1","A") .
xsd_string("A") .
ex_property2("ex_InvalidResource1","B") .
xsd_string("B") .
ex_property1("ex_InvalidResource2","A") .
ex_property2("ex_InvalidResource3","A") .
ex_property1("ex_InvalidResource4","A") .
ex_property1("ex_InvalidResource4","B") .
ex_property2("ex_InvalidResource4","A") .
sh_NodeShape("ex_TestShape") .
sh_property("ex_TestShape","ex_TestShape_property1") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_InvalidResource2") .
sh_targetNode("ex_TestShape","ex_InvalidResource3") .
sh_targetNode("ex_TestShape","ex_InvalidResource4") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource2") .
sh_path("ex_TestShape_property1","ex_property1") .
sh_equals("ex_TestShape_property1","ex_property2") .
ex_property1("ex_ValidResource1","A") .
ex_property2("ex_ValidResource1","A") .
ex_property1("ex_ValidResource2","A") .
ex_property1("ex_ValidResource2","B") .
ex_property2("ex_ValidResource2","A") .
ex_property2("ex_ValidResource2","B") .
rdf_Property("ex_property1") .
rdf_Property("ex_property2") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1htc69oiix9") .
rdf_first("node1htc69oiix9","http://repairs.shacl.org/equals_001") .
rdf_rest("node1htc69oiix9","rdf_nil") .
sht_Validate("http://repairs.shacl.org/equals_001") .
rdfs_label("http://repairs.shacl.org/equals_001","Test of sh:equals at property shape 001") .
xsd_string("Test of sh:equals at property shape 001") .
mf_action("http://repairs.shacl.org/equals_001","node1htc69oiix10") .
sht_dataGraph("node1htc69oiix10","http://repairs.shacl.org") .
sht_shapesGraph("node1htc69oiix10","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/equals_001","node1htc69oiix11") .
sh_ValidationReport("node1htc69oiix11") .
sh_conforms("node1htc69oiix11","false") .
xsd_boolean("false") .
sh_result("node1htc69oiix11","node1htc69oiix12") .
sh_ValidationResult("node1htc69oiix12") .
sh_focusNode("node1htc69oiix12","ex_InvalidResource1") .
sh_resultPath("node1htc69oiix12","ex_property1") .
sh_resultSeverity("node1htc69oiix12","sh_Violation") .
sh_sourceConstraintComponent("node1htc69oiix12","sh_EqualsConstraintComponent") .
sh_sourceShape("node1htc69oiix12","ex_TestShape_property1") .
sh_value("node1htc69oiix12","A") .
sh_result("node1htc69oiix11","node1htc69oiix13") .
sh_ValidationResult("node1htc69oiix13") .
sh_focusNode("node1htc69oiix13","ex_InvalidResource1") .
sh_resultPath("node1htc69oiix13","ex_property1") .
sh_resultSeverity("node1htc69oiix13","sh_Violation") .
sh_sourceConstraintComponent("node1htc69oiix13","sh_EqualsConstraintComponent") .
sh_sourceShape("node1htc69oiix13","ex_TestShape_property1") .
sh_value("node1htc69oiix13","B") .
sh_result("node1htc69oiix11","node1htc69oiix14") .
sh_ValidationResult("node1htc69oiix14") .
sh_focusNode("node1htc69oiix14","ex_InvalidResource2") .
sh_resultPath("node1htc69oiix14","ex_property1") .
sh_resultSeverity("node1htc69oiix14","sh_Violation") .
sh_sourceConstraintComponent("node1htc69oiix14","sh_EqualsConstraintComponent") .
sh_sourceShape("node1htc69oiix14","ex_TestShape_property1") .
sh_value("node1htc69oiix14","A") .
sh_result("node1htc69oiix11","node1htc69oiix15") .
sh_ValidationResult("node1htc69oiix15") .
sh_focusNode("node1htc69oiix15","ex_InvalidResource3") .
sh_resultPath("node1htc69oiix15","ex_property1") .
sh_resultSeverity("node1htc69oiix15","sh_Violation") .
sh_sourceConstraintComponent("node1htc69oiix15","sh_EqualsConstraintComponent") .
sh_sourceShape("node1htc69oiix15","ex_TestShape_property1") .
sh_value("node1htc69oiix15","A") .
sh_result("node1htc69oiix11","node1htc69oiix16") .
sh_ValidationResult("node1htc69oiix16") .
sh_focusNode("node1htc69oiix16","ex_InvalidResource4") .
sh_resultPath("node1htc69oiix16","ex_property1") .
sh_resultSeverity("node1htc69oiix16","sh_Violation") .
sh_sourceConstraintComponent("node1htc69oiix16","sh_EqualsConstraintComponent") .
sh_sourceShape("node1htc69oiix16","ex_TestShape_property1") .
sh_value("node1htc69oiix16","B") .
mf_status("http://repairs.shacl.org/equals_001","sht_approved") .

% Shape Targets

targetNode("ex_InvalidResource2",ex_TestShape) .
targetNode("ex_InvalidResource3",ex_TestShape) .
targetNode("ex_InvalidResource1",ex_TestShape) .
targetNode("ex_InvalidResource4",ex_TestShape) .
targetNode("ex_ValidResource1",ex_TestShape) .
targetNode("ex_ValidResource2",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_InvalidResource2","t*"):-actualTarget("ex_InvalidResource2",ex_TestShape) .
ex_TestShape_("ex_InvalidResource3","t*"):-actualTarget("ex_InvalidResource3",ex_TestShape) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .
ex_TestShape_("ex_InvalidResource4","t*"):-actualTarget("ex_InvalidResource4",ex_TestShape) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .
ex_TestShape_("ex_ValidResource2","t*"):-actualTarget("ex_ValidResource2",ex_TestShape) .

% Annotation Rules

ex_property1_(X,Y,"t*"):-ex_property1(X,Y) .
ex_property1_(X,Y,"t*"):-ex_property1_(X,Y,"t") .
ex_TestShape_property1_st_(X,Y,"t*"):-ex_TestShape_property1_(X,_),ex_property1_(X,Y,"t*") .
ex_property2_(X,Y,"t*"):-ex_property2(X,Y) .
ex_property2_(X,Y,"t*"):-ex_property2_(X,Y,"t") .

% Repair Rules

ex_TestShape_property1_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_property1_(X,"f"):-ex_TestShape_(X,"f") .

ex_property2_(X,Y,"t"):-ex_TestShape_property1_(X,"t*"),ex_property1_(X,Y,"t*") .
ex_property1_(X,Y,"t"):-ex_TestShape_property1_(X,"t*"),ex_property2_(X,Y,"t*") .
1 {ex_property1_(X,Y,"f");ex_property2_(X,Y,"f")} 1:-ex_TestShape_property1_(X,"f"),ex_property1_(X,Y,"t*"),ex_property2_(X,Y,"t*") .

% sh:minCount 0 for ex_TestShape_property1
s0_(X,"t*"):-ex_TestShape_property1_(X,"t*") .
choose(s0,X,ex_property1,0):-s0_(X,"t*") .
(C-0) {ex_property1_(X,Y,"f"):ex_property1_(X,Y,"t*");s1_(Y,"f"):ex_property1_(X,Y,"t*"),not ex_property1_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property1_(X,Y,"t*")}=C,C>0 .
ex_property1_(X,Y,"f"):-s0_(X,"f"),ex_property1_(X,Y,"t*"),ex_property1_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_property1_(X,Y,"t**")} 0:-s0_(X,"t*") .


% universal for ex_TestShape_property1
s2_(X,"t*"):-ex_TestShape_property1_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property1_(X,@new(s3,X,ex_property1,1..1),"t"):-choose(s3,X,ex_property1,1) .
choose(s3,X,ex_property1,1);choose(s3,X,ex_property1,0):-s3_(X,"t*") .
(C-0) {ex_property1_(X,Y,"f"):ex_property1_(X,Y,"t*");s4_(Y,"f"):ex_property1_(X,Y,"t*"),not ex_property1_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_property1_(X,Y,"t*")}=C,C>0 .
ex_property1_(X,Y,"f"):-s3_(X,"f"),ex_property1_(X,Y,"t*"),ex_property1_(X,Y,"f") .
1 {s4_(Y,"t*"):ex_property1_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-ex_TestShape_property1_(X,"f") .

% Interpretation Rules

ex_property1_(X,Y,"t**"):-ex_property1_(X,Y,"t*"),not ex_property1_(X,Y,"f") .
ex_TestShape_property1_st_(X,Y,"t**"):-ex_property1_(X,Y,"t**"),ex_TestShape_property1_st_(X,Y,"t*"),not ex_TestShape_property1_st_(X,Y,"f") .
ex_property2_(X,Y,"t**"):-ex_property2_(X,Y,"t*"),not ex_property2_(X,Y,"f") .

% Program Constraints

:-ex_property1_(X,Y,"t"),ex_property1_(X,Y,"f") .
:-ex_property2_(X,Y,"t"),ex_property2_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(ex_property1(X,Y)):-ex_property1_(X,Y,"t**"),not ex_property1(X,Y) .
del(ex_property1(X,Y)):-ex_property1_(X,Y,"f"),ex_property1(X,Y) .
add(ex_property2(X,Y)):-ex_property2_(X,Y,"t**"),not ex_property2(X,Y) .
del(ex_property2(X,Y)):-ex_property2_(X,Y,"f"),ex_property2(X,Y) .
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
