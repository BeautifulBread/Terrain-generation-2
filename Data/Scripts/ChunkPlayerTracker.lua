local Imports = _G.Imports
local Settings = Imports.Settings.require()
local ChunkedTerrainInstance = Imports.Procedural.ChunkedTerrainInstance.require()
local TemporaryTerrainGenerator = Imports.Procedural.TemporaryTerrainGenerator.require()

-- local terrainInstance = ChunkedTerrainInstance(terrainPipelineInstance, 16, 1, script.parent)
function PlayerChunkDataClass(player, terrainParent)
    local pipeline = TemporaryTerrainGenerator.GeneratePipeline(terrainParent)
    -- local terrainParent = script.parent:FindChildByName('Geom')
    local terrainInstance = ChunkedTerrainInstance(pipeline, 16, 1, terrainParent)
    local self = {
        currentChunk = nil,
        player = player,
        terrainParent = terrainParent,
        chunkCoordX = nil,
        chunkCoordY = nil,
        viewDistance = Settings.viewDistance,
        pipeline = pipeline,
        terrainInstance = terrainInstance
    }
    self.terrainInstance.LoadTerrain()
    local chunkCheckerForPlayer =
        Task.Spawn(
        function()
            local chunkSize = terrainInstance.chunkSize
            local blockSize = terrainInstance.blockSize
            local chunkSide = blockSize * 100 * chunkSize
            local ppos = player:GetWorldPosition() - self.terrainParent:GetWorldPosition()
            local chunkCoordX = math.floor(ppos.x // chunkSide + 1)
            local chunkCoordY = math.floor(ppos.y // chunkSide + 1)
            if not (chunkCoordX == self.chunkCoordX and chunkCoordY == self.chunkCoordY) then
                print(tostring(chunkCoordX) .. '|' .. tostring(chunkCoordY))
                self.chunkCoordX = chunkCoordX
                self.chunkCoordY = chunkCoordY
            end
        end
    )
    chunkCheckerForPlayer.repeatCount = -1
    chunkCheckerForPlayer.repeatInterval = 0
    return setmetatable(self, self)
end
function OnPlayerJoined(player)
    -- TODO:
    -- what chunk is the player on?

    -- check for when Player leaves the chunk
    PlayerChunkDataClass(player, script.parent)
    -- onLeaveChunk event handle
end
if Environment.IsServer() then
    Game.playerJoinedEvent:Connect(OnPlayerJoined)
else
    Events.Connect('LocalPlayerJoined', OnPlayerJoined)
end
-- print(Vector3.ONE == Vector3.ONE)
