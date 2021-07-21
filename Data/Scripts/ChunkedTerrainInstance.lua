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
    self.builder = DraftChunkedBuilder(self.terrainParent, CUBE, self.chunkSize, self.blockSize)
    -- DEPRECATED:
    function self.LoadTerrain()
        local options = self.pipeline.Execute()
        print(type(options))
        self.builder.Build(options)
        self.pipeline.ListPerformance()
        -- BasicBuilderClass(options, CUBE).Build()
    end

    function self.LoadChunk(x, y)
        if self.loadedChunks[y] and self.loadedChunks[y][x] then
            return
        end
        self.pipeline.ExecuteOnArea(x * self.chunkSize, y * self.chunkSize, self.chunkSize, self.chunkSize)
        -- TODO:
    end
    function self.UnloadChunk(x, y)
        if not self.loadedChunks[y] or not self.loadedChunks[y][x] then
            return
        end
        -- TODO:
    end
    function self.WorldPositionToChunkCoords(pos)
        local ppos = pos - self.terrainParent:GetWorldPosition()
        local chunkCoordY = math.floor(ppos.y // (self.chunkSize * self.blockSize * 100) + 1)
        local chunkCoordX = math.floor(ppos.x // (self.chunkSize * self.blockSize * 100) + 1)
        return chunkCoordX, chunkCoordY
    end
    return setmetatable(self, self)
end
return ChunkedTerrainInstance
