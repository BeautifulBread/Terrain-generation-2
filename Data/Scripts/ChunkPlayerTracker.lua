local Imports = _G.Imports
local Settings = Imports.Settings.require()
local ChunkedTerrainInstance = Imports.Procedural.ChunkedTerrainInstance.require()
local TemporaryTerrainGenerator = Imports.Procedural.TemporaryTerrainGenerator.require()
function PlayerChunkDataClass(player, terrainParent)
    local pipeline = TemporaryTerrainGenerator.GeneratePipeline(terrainParent)
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
    local chunkCheckerForPlayer =
        Task.Spawn(
        function()
            local chunkCoordX, chunkCoordY = self.terrainInstance.WorldPositionToChunkCoords(player:GetWorldPosition())
            if not (chunkCoordX == self.chunkCoordX and chunkCoordY == self.chunkCoordY) then
                self.chunkCoordX = chunkCoordX
                self.chunkCoordY = chunkCoordY
                for i = -1, 1 do
                    for ii = -1, 1 do
                        terrainInstance.LoadChunk(chunkCoordX + i, chunkCoordY + ii)
                    end
                end
            end
        end
    )
    chunkCheckerForPlayer.repeatCount = -1
    chunkCheckerForPlayer.repeatInterval = 0
    return setmetatable(self, self)
end
function OnPlayerJoined(player)
    PlayerChunkDataClass(player, script.parent)
    -- TODO: onLeaveChunk event handle
end
if Environment.IsServer() then
    Game.playerJoinedEvent:Connect(OnPlayerJoined)
else
    Events.Connect('LocalPlayerJoined', OnPlayerJoined)
end
