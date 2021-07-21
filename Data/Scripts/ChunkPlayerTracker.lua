local Imports = _G.Imports
local Settings = Imports.Settings.require()
local ChunkedTerrainInstance = Imports.Procedural.ChunkedTerrainInstance.require()
local TemporaryTerrainGenerator = Imports.Procedural.TemporaryTerrainGenerator.require()

-- local terrainInstance = ChunkedTerrainInstance(terrainPipelineInstance, 16, 1, script.parent)
function PlayerChunkDataClass(player, terrainParent)
    local pipeline = TemporaryTerrainGenerator.GeneratePipeline(terrainParent)
    -- local terrainParent = script.parent:FindChildByName('Geom')
    local terrainInstance = ChunkedTerrainInstance(pipeline, 12, 1, terrainParent)
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
            local chunkCoordX, chunkCoordY = self.terrainInstance.WorldPositionToChunkCoords(player:GetWorldPosition())
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
