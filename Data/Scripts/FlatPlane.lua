local Imports = _G.Imports
-- local SPHERE = script:GetCustomProperty('sphere')
local CUBE = script:GetCustomProperty('TerrainCube')
local IBUILDER = World
local SNOISE = Imports.Math.Noise.require()
local realScale = 100
local parent = script:GetCustomProperty('TerrainGeom'):WaitForObject()
local function MakeGrid(maxx, maxy)
    local res = {}
    if maxy == nil then
        maxy = maxx
    end
    for x = 1, maxx do
        res[x] = {}
        for y = 1, maxy do
            res[x][y] = {
                position = script:GetWorldPosition() + Vector3.New(x * realScale, y * realScale, 0),
                parent = parent
            }
        end
    end
    return res
end
local function SpawnGrid(maxx, maxy)
    local grid = MakeGrid(maxx, maxy)
    local assets = {}
    for k, v in ipairs(grid) do
        for kk, vv in ipairs(v) do
            assets[#assets + 1] = World.SpawnAsset(SPHERE, vv)
        end
    end
end
-- SpawnGrid(100)
local function GetTileTransforms(grid)
    local tiles = {}
    for x = 1, #grid - 1 do
        tiles[x] = {}
        for y = 1, #grid[1] - 1 do
            tiles[x][y] = {
                position = (grid[x][y].position + grid[x][y + 1].position + grid[x + 1][y + 1].position +
                    grid[x + 1][y].position) /
                    4,
                rotation = Rotation.ZERO
            }
        end
    end
    return tiles
end
SNOISE.seed(25486491)
local function SpawnTiles()
    local grid = MakeGrid(100)
    local positions = GetTileTransforms(grid)
    local assets = {}

    local i = 0
    local maxIterationsPerTick = 100
    for _, v in ipairs(positions) do
        for _, vv in ipairs(v) do
            i = i + 1
            if i % maxIterationsPerTick == 0 then
                Task.Wait()
            end
            local ratio = 25
            modifiedPosition = (vv.position - script:GetWorldPosition()) / (realScale * ratio)
            assets[#assets + 1] =
                IBUILDER.SpawnAsset(
                CUBE,
                {
                    position = vv.position +
                        (SNOISE.make(modifiedPosition.x, modifiedPosition.y) + 1) / 2 * 2000 * Vector3.UP,
                    -- 600 * SNOISE:noise(vv.position.x/ratio, vv.position.y/ratio,200,2) * Vector3.UP,
                    -- position = vv.position,
                    rotation = vv.rotation,
                    scale = (realScale / 100) * Vector3.New(1, 1, 1),
                    parent = parent
                }
            )
            -- print(assets[#assets])
        end
    end
end
if Environment.IsClient() then
    print('This is a message from the client')
end
SpawnTiles()
