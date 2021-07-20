local Imports = _G.Imports
function PlayerChunkDataClass(player, chunkingParent)
    local self = {
        currentChunk = nil,
        player = player,
        chunkingParent = chunkingParent,
        chunkCoordX = nil,
        chunkCoordY = nil
    }
    local chunkCheckerForPlayer =
        Task.Spawn(
        function()
            local chunkSize = 12 -- TODO: abstract
            local blockSize = 1
            local chunkSide = blockSize * 100 * chunkSize
            local ppos = player:GetWorldPosition() - self.chunkingParent:GetWorldPosition()
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
