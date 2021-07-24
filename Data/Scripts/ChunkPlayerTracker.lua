local Imports = _G.Imports
local Settings = Imports.Settings.require()
local ChunkedTerrainInstance = Imports.Procedural.ChunkedTerrainInstance.require()
local TemporaryTerrainGenerator = Imports.Procedural.TemporaryTerrainGenerator.require()
function PlayerChunkDataClass(player, terrainParent)
    local pipeline = TemporaryTerrainGenerator.GeneratePipeline(terrainParent)
    local terrainInstance = ChunkedTerrainInstance(pipeline, 8, 1, terrainParent)
    local viewDistance = Settings.serverViewDistance
    if Environment.IsClient() or Environment.IsSinglePlayerPreview() then
        viewDistance = Settings.clientViewDistance
    end
    local self = {
        currentChunk = nil,
        player = player,
        terrainParent = terrainParent,
        chunkCoordX = nil,
        chunkCoordY = nil,
        viewDistance = viewDistance,
        pipeline = pipeline,
        terrainInstance = terrainInstance
    }
    local chunkCheckerForPlayer =
        Task.Spawn(
        function()
            local chunkCoordX, chunkCoordY = self.terrainInstance.WorldPositionToChunkCoords(player:GetWorldPosition())
            if not (chunkCoordX == self.chunkCoordX and chunkCoordY == self.chunkCoordY) then
                local oldX = self.chunkCoordX
                local oldY = self.chunkCoordY
                local isFirstPass = oldX == nil and oldY == nil
                self.chunkCoordX = chunkCoordX
                self.chunkCoordY = chunkCoordY
                if isFirstPass == false then
                    local sgnY = self.chunkCoordY - oldY
                    sgnY = sgnY / math.abs(self.chunkCoordY - oldY)
                    local sgnX = self.chunkCoordX - oldX
                    sgnX = sgnX / math.abs(self.chunkCoordX - oldX)
                    for x = -self.viewDistance, self.viewDistance do
                        terrainInstance.UnloadChunk(chunkCoordX + x, chunkCoordY - (sgnY * (self.viewDistance + 1)))
                    end
                    for y = -self.viewDistance, self.viewDistance do
                        terrainInstance.UnloadChunk(chunkCoordX - (sgnX * (self.viewDistance + 1)), chunkCoordY + y)
                    end
                end
                for i = -self.viewDistance, self.viewDistance do
                    for ii = -self.viewDistance, self.viewDistance do
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
