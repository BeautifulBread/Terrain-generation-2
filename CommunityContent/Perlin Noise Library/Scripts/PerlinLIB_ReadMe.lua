--[[
    PerlinLIB
    
    A perlin noise script for 3D perlin noise in the Core Game Engine.
    Just set the z to 1 or some other constant value if you want 2D perlin noise.
    Original code here: https://stackoverflow.com/questions/33425333/lua-perlin-noise-generation-getting-bars-rather-than-squares
    Code was slightly modified to work a bit better and also add a scale paramater by aphrim.

    example usage:

    local API = require(script:GetCustomProperty('PerlinLIB'))
    local x = 1
    local y = 1
    local z = 1
    local scale = 1
    print(API:noise(x,y,z, scale))

]]