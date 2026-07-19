
% Graph Data

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

targetNode("d_ben",d_StudentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_StudentShape_("d_ben","t*"):-actualTarget("d_ben",d_StudentShape) .

% Annotation Rules

d_hasStudent_(X,Y,"t*"):-d_hasStudent(X,Y) .
d_hasStudent_(X,Y,"t*"):-d_hasStudent_(X,Y,"t") .
d_hasStudent_(Y,X,"t"):-d_hasStudent_inv_(X,Y,"t") .
d_hasStudent_inv_(X,Y,"t*"):-d_hasStudent_(Y,X,"t*") .
d_hasStudent_(Y,X,"f"):-d_hasStudent_inv_(X,Y,"f") .
d_hasStudent_inv_(X,Y,"f"):-d_hasStudent_(Y,X,"f") .
bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*"):-bnode_4bd575412daa4bdebe574c6d60ecb43f131_(X,_),d_hasStudent_inv_(X,Y,"t*") .

% Repair Rules

bnode_4bd575412daa4bdebe574c6d60ecb43f131_(X,"t*"):-d_StudentShape_(X,"t*") .
bnode_4bd575412daa4bdebe574c6d60ecb43f131_(X,"f"):-d_StudentShape_(X,"f") .

% sh:minCount 1 for bnode_4bd575412daa4bdebe574c6d60ecb43f131
s0_(X,"t*"):-bnode_4bd575412daa4bdebe574c6d60ecb43f131_(X,"t*") .
d_hasStudent_inv_(X,@new(s0,X,d_hasStudent_inv_,1..1),"t"):-choose(s0,X,d_hasStudent,1) .
choose(s0,X,d_hasStudent,1);choose(s0,X,d_hasStudent,0):-s0_(X,"t*") .
(C-0) {bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"f"):bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*");s1_(Y,"f"):bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*"),not bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*")}=C,C>0 .
d_hasStudent_(Y,X,"f"):-d_hasStudent_inv_(X,Y,"t*"),bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"f") .
1 {s1_(Y,"t*"):bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for bnode_4bd575412daa4bdebe574c6d60ecb43f131
s2_(X,"t*"):-bnode_4bd575412daa4bdebe574c6d60ecb43f131_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
d_hasStudent_inv_(X,@new(s3,X,d_hasStudent_inv_,1..1),"t"):-choose(s3,X,d_hasStudent,1) .
choose(s3,X,d_hasStudent,1);choose(s3,X,d_hasStudent,0):-s3_(X,"t*") .
(C-0) {bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"f"):bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*");s4_(Y,"f"):bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*"),not bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-bnode_4bd575412daa4bdebe574c6d60ecb43f131_(X,"f") .

% Interpretation Rules

d_hasStudent_(X,Y,"t**"):-d_hasStudent_(X,Y,"t*"),not d_hasStudent_(X,Y,"f") .
d_hasStudent_inv_(X,Y,"t**"):-d_hasStudent_inv_(X,Y,"t*"),not d_hasStudent_inv_(X,Y,"f") .
bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t**"):-d_hasStudent_inv_(X,Y,"t**"),bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"t*"),not bnode_4bd575412daa4bdebe574c6d60ecb43f131_st_(X,Y,"f") .

% Program Constraints

:-d_hasStudent_(X,Y,"t"),d_hasStudent_(X,Y,"f") .
:-d_hasStudent_inv_(X,Y,"t"),d_hasStudent_inv_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(d_hasStudent(X,Y)):-d_hasStudent_(X,Y,"t**"),not d_hasStudent(X,Y) .
del(d_hasStudent(X,Y)):-d_hasStudent_(X,Y,"f"),d_hasStudent(X,Y) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Program Functions

#show actualTarget/2 .
#show skipTarget/2 .
#show add/1 .
#show del/1 .

#script (lua)
-- Pure Lua SHA-256 implementation (Lua 5.3+ required)

local function rrotate(x, n)
    return ((x >> n) | (x << (32 - n))) & 0xffffffff
end

local function sha256(msg)

    local k = {
        0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
        0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
        0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
        0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
        0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
        0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
        0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
        0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
    }

    local h = {
        0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,
        0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19
    }

    local ml = #msg * 8
    msg = msg .. string.char(0x80)

    while (#msg % 64) ~= 56 do
        msg = msg .. string.char(0)
    end

    for i = 7, 0, -1 do
        msg = msg .. string.char((ml >> (i*8)) & 0xff)
    end

    for chunk = 1, #msg, 64 do
        local w = {}

        for i = 0, 15 do
            local a,b,c,d = string.byte(msg, chunk+i*4, chunk+i*4+3)
            w[i] = ((a<<24)|(b<<16)|(c<<8)|d) & 0xffffffff
        end

        for i = 16, 63 do
            local s0 = rrotate(w[i-15],7) ~ rrotate(w[i-15],18) ~ (w[i-15] >> 3)
            local s1 = rrotate(w[i-2],17) ~ rrotate(w[i-2],19) ~ (w[i-2] >> 10)
            w[i] = (w[i-16] + s0 + w[i-7] + s1) & 0xffffffff
        end

        local a,b,c,d,e,f,g,hv = table.unpack(h)

        for i = 0, 63 do
            local S1 = rrotate(e,6) ~ rrotate(e,11) ~ rrotate(e,25)
            local ch = (e & f) ~ ((~e) & g)
            local temp1 = (hv + S1 + ch + k[i+1] + w[i]) & 0xffffffff
            local S0 = rrotate(a,2) ~ rrotate(a,13) ~ rrotate(a,22)
            local maj = (a & b) ~ (a & c) ~ (b & c)
            local temp2 = (S0 + maj) & 0xffffffff

            hv = g
            g = f
            f = e
            e = (d + temp1) & 0xffffffff
            d = c
            c = b
            b = a
            a = (temp1 + temp2) & 0xffffffff
        end

        h[1] = (h[1] + a) & 0xffffffff
        h[2] = (h[2] + b) & 0xffffffff
        h[3] = (h[3] + c) & 0xffffffff
        h[4] = (h[4] + d) & 0xffffffff
        h[5] = (h[5] + e) & 0xffffffff
        h[6] = (h[6] + f) & 0xffffffff
        h[7] = (h[7] + g) & 0xffffffff
        h[8] = (h[8] + hv) & 0xffffffff
    end

    return string.format("%08x%08x%08x%08x%08x%08x%08x%08x",
        h[1],h[2],h[3],h[4],h[5],h[6],h[7],h[8])
end

-- UID generator
function new(a,b,c,d)
    local combined = table.concat({tostring(a),tostring(b),tostring(c),tostring(d)}, "|")
    return tostring('new_' .. tostring(sha256(combined)))
end
#end .


#script (lua)
function gt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>y then return "t" else return "f" end
end

function lt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<y then return "t" else return "f" end
end

function geq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>=y then return "t" else return "f" end
end

function leq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<=y then return "t" else return "f" end
end

function getNumbers(X,Y)
local x,_ = string.gsub(tostring(X),"\"","")
local y,_ = string.gsub(tostring(Y),"\"","")
local xn = tonumber(x)
local yn = tonumber(y)
return xn,yn
end

function isNew(X)
return string.match(tostring(X), '^"new')
end
#end .
