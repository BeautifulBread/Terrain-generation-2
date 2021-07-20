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
        loadedChunks = {}
    }
    -- DEPRECATED:
    function self.LoadTerrain()
        local options = self.pipeline.Execute()
        self.pipeline.ListPerformance()
        DraftChunkedBuilder(self.terrainParent, options, CUBE).Build(16)
        -- BasicBuilderClass(options, CUBE).Build()
    end

    function self.LoadChunk(x, y)
        if self.loadedChunks[y] and self.loadedChunks[y][x] then
            return
        end
        -- TODO:
    end
    function self.UnloadChunk(x, y)
        if not self.loadedChunks[y] or not self.loadedChunks[y][x] then
            return
        end
        -- TODO:
    end
    function self.WorldPositionToChunkCoords(pos)

    end
    return setmetatable(self, self)
end
return ChunkedTerrainInstance
