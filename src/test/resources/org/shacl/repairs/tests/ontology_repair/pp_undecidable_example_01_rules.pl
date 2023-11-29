
% Graph Data

rdf_Property("_element") .
rdfs_label("_element","element") .
xsd_string("element") .
rdfs_comment("_element","Indicates that the file contains the target element.") .
rdf_langString("Indicates that the file contains the target element.") .
rdfs_range("_element","rdfs_Resource") .
rdfs_domain("_element","_doctype") .
owl_DatatypeProperty("_referenceObject") .
rdf_Property("_referenceObject") .
rdfs_subPropertyOf("_referenceObject","_element") .
rdfs_label("_referenceObject","referenceObject") .
xsd_string("referenceObject") .
rdfs_comment("_referenceObject","Describes a reference object that is part of a DITA file.") .
rdf_langString("Describes a reference object that is part of a DITA file.") .
rdfs_domain("_referenceObject","_doctype") .
rdfs_range("_referenceObject","_referenceObject") .
owl_DatatypeProperty("_keyword") .
rdf_Property("_keyword") .
rdfs_subPropertyOf("_keyword","_element") .
rdfs_seeAlso("_keyword","http://docs.oasis_open.org/dita/v1.2/os/spec/langref/keyword.html") .
rdfs_comment("_keyword","The keyword element identifies a keyword or token, such as a single value from an enumerated list, the name of a command or parameter, product name, or a lookup key for a message.") .
rdf_langString("The keyword element identifies a keyword or token, such as a single value from an enumerated list, the name of a command or parameter, product name, or a lookup key for a message.") .
rdfs_range("_keyword","xsd_string") .
rdfs_range("_keyword","_keyword") .
rdfs_label("_keyword","keyword") .
xsd_string("keyword") .

% Shape Targets

targetNode("_keyword",_relation) .
targetNode("_referenceObject",_relation) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_relation_("_keyword","t*"):-actualTarget("_keyword",_relation) .
_relation_("_referenceObject","t*"):-actualTarget("_referenceObject",_relation) .

% Annotation Rules

rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
node1gr36r165x6_st_(X,Y,"t*"):-node1gr36r165x6_(X,_),rdfs_range_(X,Y,"t*") .

% Repair Rules

node1gr36r165x6_(X,"t*"):-_relation_(X,"t*") .
node1gr36r165x6_(X,"f"):-_relation_(X,"f") .

% sh:minCount 0 for node1gr36r165x6
s0_(X,"t*"):-node1gr36r165x6_(X,"t*") .
choose(s0,X,rdfs_range,0):-s0_(X,"t*") .
(C-0) {node1gr36r165x6_st_(X,Y,"f"):node1gr36r165x6_st_(X,Y,"t*");s1_(Y,"f"):node1gr36r165x6_st_(X,Y,"t*"),not node1gr36r165x6_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1gr36r165x6_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s0_(X,"f"),rdfs_range_(X,Y,"t*"),node1gr36r165x6_st_(X,Y,"f") .
0 {s1_(Y,"t*"):node1gr36r165x6_st_(X,Y,"t**")} 0:-s0_(X,"t*") .

s2_(X,"f"):-s1_(X,"f") .
s3_(X,"f"):-s1_(X,"f") .
s2_(X,"t*");s3_(X,"t*"):-s1_(X,"t*") .

% universal for node1gr36r165x6
s4_(X,"t*"):-node1gr36r165x6_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
rdfs_range_(X,@new(s5,X,rdfs_range,1..1),"t"):-choose(s5,X,rdfs_range,1) .
choose(s5,X,rdfs_range,1);choose(s5,X,rdfs_range,0):-s5_(X,"t*") .
(C-0) {node1gr36r165x6_st_(X,Y,"f"):node1gr36r165x6_st_(X,Y,"t*");s6_(Y,"f"):node1gr36r165x6_st_(X,Y,"t*"),not node1gr36r165x6_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:node1gr36r165x6_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-s5_(X,"f"),rdfs_range_(X,Y,"t*"),node1gr36r165x6_st_(X,Y,"f") .
1 {s6_(Y,"t*"):node1gr36r165x6_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .

s8_(X,"f"):-s7_(X,"f") .
s9_(X,"f"):-s7_(X,"f") .
s8_(X,"t*");s9_(X,"t*"):-s7_(X,"t*") .

s0_(X,"f");s4_(X,"f"):-node1gr36r165x6_(X,"f") .

% Interpretation Rules

rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
node1gr36r165x6_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),node1gr36r165x6_st_(X,Y,"t*"),not node1gr36r165x6_st_(X,Y,"f") .

% Program Constraints

:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .

% Change Set Rules

add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
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
