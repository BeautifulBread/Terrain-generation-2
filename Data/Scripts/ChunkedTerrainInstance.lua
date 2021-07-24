local Imports = _G.Imports
-- local BasicBuilderClass = Imports.Procedural.BasicBuilderClass.require()
local DraftChunkedBuilder = Imports.Procedural.DraftChunkedBuilder.require()
local CUBE = script:GetCustomProperty('cube')
function ChunkedTerrainInstance(pipeline, chunkSize, blockSize, terrainParent)
    local self = {
        type = 'ChunkedTerrainInstance',
        chunkSize = chunkSize,
        blockSize = blockSize,
        terrainParent = terrainParent,
        pipeline = pipeline,
        builder = nil,
        loadedChunks = {}
    }
    self.builder = DraftChunkedBuilder(self.terrainParent, CUBE, self.chunkSize, self.blockSize, self.blockSize)

    function self.LoadChunk(x, y)
        if self.loadedChunks[y] and self.loadedChunks[y][x] then
            return
        end
        local options = self.pipeline.ExecuteForArea(x * chunkSize, y * self.chunkSize, self.chunkSize, self.chunkSize)
        local propList =
            self.builder.BuildArea(options, x * self.chunkSize, y * self.chunkSize, self.chunkSize, self.chunkSize)
        self.loadedChunks[y] = self.loadedChunks[y] or {}
        self.loadedChunks[y][x] = propList
    end
    function self.UnloadChunk(x, y)
        if not self.loadedChunks[y] or not self.loadedChunks[y][x] then
            return
        end
        local listToUnload = self.loadedChunks[y][x]
        Task.Spawn(
            function()
                for i = 1, #listToUnload do
                    listToUnload[i]:Destroy()
                end
            end
        )
        self.loadedChunks[y][x] = nil
    end
    function self.WorldPositionToChunkCoords(pos)
        local ppos = pos - self.terrainParent:GetWorldPosition()
        local chunkCoordY = math.floor(ppos.y // (self.chunkSize * self.blockSize * 100))
        local chunkCoordX = math.floor(ppos.x // (self.chunkSize * self.blockSize * 100))
        return chunkCoordX, chunkCoordY
    end
    return setmetatable(self, self)
end
return ChunkedTerrainInstance
