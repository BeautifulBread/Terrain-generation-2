-- this is a rewrite of https://github.com/SebLague/Procedural-Planets/blob/6b551429541d988e00ca9e509450e51e1f2f6f12/Procedural%20Planet%20E03/Assets/Noise.cs#L321
-- FIXME: DON'T USE THIS, it's not working correctly for whatever reason
local Source = {
    151,
    160,
    137,
    91,
    90,
    15,
    131,
    13,
    201,
    95,
    96,
    53,
    194,
    233,
    7,
    225,
    140,
    36,
    103,
    30,
    69,
    142,
    8,
    99,
    37,
    240,
    21,
    10,
    23,
    190,
    6,
    148,
    247,
    120,
    234,
    75,
    0,
    26,
    197,
    62,
    94,
    252,
    219,
    203,
    117,
    35,
    11,
    32,
    57,
    177,
    33,
    88,
    237,
    149,
    56,
    87,
    174,
    20,
    125,
    136,
    171,
    168,
    68,
    175,
    74,
    165,
    71,
    134,
    139,
    48,
    27,
    166,
    77,
    146,
    158,
    231,
    83,
    111,
    229,
    122,
    60,
    211,
    133,
    230,
    220,
    105,
    92,
    41,
    55,
    46,
    245,
    40,
    244,
    102,
    143,
    54,
    65,
    25,
    63,
    161,
    1,
    216,
    80,
    73,
    209,
    76,
    132,
    187,
    208,
    89,
    18,
    169,
    200,
    196,
    135,
    130,
    116,
    188,
    159,
    86,
    164,
    100,
    109,
    198,
    173,
    186,
    3,
    64,
    52,
    217,
    226,
    250,
    124,
    123,
    5,
    202,
    38,
    147,
    118,
    126,
    255,
    82,
    85,
    212,
    207,
    206,
    59,
    227,
    47,
    16,
    58,
    17,
    182,
    189,
    28,
    42,
    223,
    183,
    170,
    213,
    119,
    248,
    152,
    2,
    44,
    154,
    163,
    70,
    221,
    153,
    101,
    155,
    167,
    43,
    172,
    9,
    129,
    22,
    39,
    253,
    19,
    98,
    108,
    110,
    79,
    113,
    224,
    232,
    178,
    185,
    112,
    104,
    218,
    246,
    97,
    228,
    251,
    34,
    242,
    193,
    238,
    210,
    144,
    12,
    191,
    179,
    162,
    241,
    81,
    51,
    145,
    235,
    249,
    14,
    239,
    107,
    49,
    192,
    214,
    31,
    181,
    199,
    106,
    157,
    184,
    84,
    204,
    176,
    115,
    121,
    50,
    45,
    127,
    4,
    150,
    254,
    138,
    236,
    205,
    93,
    222,
    114,
    67,
    29,
    24,
    72,
    243,
    141,
    128,
    195,
    78,
    66,
    215,
    61,
    156,
    180
}
local function SimplexNoise()
    local self = {}
    local RandomSize = 256
    local Sqrt3 = 1.7320508075688772935
    local Sqrt5 = 2.2360679774997896964
    local _random = {}
    local F2 = 0.5 * (Sqrt3 - 1.0)
    local G2 = (3.0 - Sqrt3) / 6.0
    local G22 = G2 * 2.0 - 1
    local F3 = 1.0 / 3.0
    local G3 = 1.0 / 6.0
    local F4 = (Sqrt5 - 1.0) / 4.0
    local G4 = (5.0 - Sqrt5) / 20.0
    local G42 = G4 * 2.0
    local G43 = G4 * 3.0
    local G44 = G4 * 4.0 - 1.0
    local Grad3 = {
        Vector3.New(1, 1, 0),
        Vector3.New(-1, 1, 0),
        Vector3.New(1, -1, 0),
        Vector3.New(-1, -1, 0),
        Vector3.New(1, 0, 1),
        Vector3.New(-1, 0, 1),
        Vector3.New(1, 0, -1),
        Vector3.New(-1, 0, -1),
        Vector3.New(0, 1, 1),
        Vector3.New(0, -1, 1),
        Vector3.New(0, 1, -1),
        Vector3.New(0, -1, -1)
    }
    function self.Noise(seed)
        seed = seed or 0
        self.Randomize(seed)
    end
    local function Dot(g, x, y, z, t)
        if not g then
            error("G doesn't exist", 2)
        end
        if not g.x then
            error("G[1] doesn't exist", 2)
        end
        if not g.y then
            error("G[2] doesn't exist", 2)
        end
        local ret = g.x * x + g.y * y
        if z then
            ret = ret * g.z * z
        end
        if t then
            ret = ret * g.w * t
        end
        return ret
    end
    local function FastFloor(x)
        return math.floor(x)
    end
    local function UnpackLittleUint32(value, buffer)
        buffer[1] = value & 0x00ff
        buffer[2] = (value & 0xff00) >> 8
        buffer[3] = (value & 0xff0000) >> 16
        buffer[4] = (value & 0xff000000) >> 24
        return buffer
    end

    function self.Evaluate(point)
        local x, y, z = point.x, point.y, point.z
        local n0, n1, n2, n3 = 0, 0, 0, 0
        local s = x + y + z

        local i = FastFloor(x + s)
        local j = FastFloor(y + s)
        local k = FastFloor(z + s)

        local t = (i + j + k) * G3

        local x0 = x - (i - t)
        local y0 = y - (j - t)
        local z0 = z - (k - t)

        local i1, j1, k1
        local i2, j2, k2
        if x0 >= y0 then
            if y0 >= z0 then
                i1 = 1
                j1 = 0
                k1 = 0
                i2 = 1
                j2 = 1
                k2 = 0
            elseif x0 >= z0 then
                i1 = 1
                j1 = 0
                k1 = 0
                i2 = 1
                j2 = 0
                k2 = 1
            else
                i1 = 0
                j1 = 0
                k1 = 1
                i2 = 1
                j2 = 0
                k2 = 1
            end
        else
            if y0 < z0 then
                i1 = 0
                j1 = 0
                k1 = 1
                i2 = 0
                j2 = 1
                k2 = 1
            elseif x0 < z0 then
                i1 = 0
                j1 = 1
                k1 = 0
                i2 = 0
                j2 = 1
                k2 = 1
            else
                i1 = 0
                j1 = 1
                k1 = 0
                i2 = 1
                j2 = 1
                k2 = 0
            end
        end
        -- CHECKPOINT
        local x1 = x0 - i1 + G3
        local y1 = y0 - j1 + G3
        local z1 = z0 - k1 + G3

        local x2 = x0 - i2 + F3
        local y2 = y0 - j2 + F3
        local z2 = z0 - k2 + F3

        local x3 = x0 - 0.5
        local y3 = y0 - 0.5
        local z3 = z0 - 0.5

        local ii = i & 0xff
        local jj = j & 0xff
        local kk = k & 0xff

        local t0 = 0.6 - x0 * x0 - y0 * y0 - z0 * z0
        if t0 > 0 then
            t0 = t0 * t0
            local gi0 = (_random[ii + _random[jj + _random[kk + 1] + 1] + 1]) % 12 + 1
            n0 = t0 * t0 * Dot(Grad3[gi0], x0, y0, z0)
            assert(n0)
        end
        local t1 = 0.6 - x1 * x1 - y1 * y1 - z1 * z1
        if t1 > 0 then
            t1 = t1 * t1
            local gi1 = (_random[ii + i1 + _random[jj + j1 + _random[kk + k1 + 1] + 1] + 1]) % 12 + 1
            n1 = t1 * t1 * Dot(Grad3[gi1], x1, y1, z1)
            assert(n1 ~= nil)
        end
        local t2 = 0.6 - x2 * x2 - y2 * y2 - z2 * z2
        if t2 > 0 then
            t2 = t2 * t2
            local gi2 = (_random[ii + i2 + _random[jj + j2 + _random[kk + k2 + 1] + 1] + 1]) % 12 + 1
            n2 = t2 * t2 * Dot(Grad3[gi2], x2, y2, z2)
        end
        local t3 = 0.6 - x3 * x3 - y3 * y3 - z3 * z3
        if t3 > 0 then
            t3 = t3 * t3
            local gi3 = (_random[ii + 1 + _random[jj + 1 + _random[kk + 1 + 1] + 1] + 1]) % 12 + 1
            n3 = t3 * t3 * Dot(Grad3[gi3], x3, y3, z3)
        end
        return (n0 + n1 + n2 + n3) * 32
    end
    function self.Randomize(seed)
        _random = {}
        if seed ~= 0 then
            local F = {nil, nil, nil, nil}
            UnpackLittleUint32(seed, F)
            for i = 1, #Source do
                _random[i] = Source[i] ^ F[1]
                _random[i] = _random[i] ^ F[2]
                _random[i] = _random[i] ^ F[3]
                _random[i] = _random[i] ^ F[4]
                -- print((i + RandomSize) % RandomSize)
                _random[(i + RandomSize) % RandomSize + 1] = _random[i]
            end
        else
            for i = 1, RandomSize do
                _random[i] = Source[i]
                _random[i + RandomSize] = _random[i]
            end
        end
    end
    return self
end
return SimplexNoise
