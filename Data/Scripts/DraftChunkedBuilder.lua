function DraftChunkedBuilder(parent, options, asset, chunkSize, viewDistance)
    local self = {
        parent = parent,
        options = options,
        asset = asset,
        viewDistance = viewDistance or 4,
        chunkSize = chunkSize or 8
    }
    local function ConvertSpawnParamsToChunkData()
        local chunkData = {}
        local chunkSide = self.options.blockSize*self.chunkSize
        return chunkData
    end
    function self.Build()
        local SPACING = self.options.blockSize * 100
        -- draw Chunk gizmos
        for i = 0, self.viewDistance do
            for ii = 0, self.viewDistance do
                local posOffset = (Vector3.New(1, 0, 0) * i + Vector3.New(0, 1, 0) * ii) * SPACING * self.chunkSize
                CoreDebug.DrawBox(
                    self.parent:GetWorldPosition() + posOffset + (SPACING * self.chunkSize / 2) * Vector3.New(1, 1, 0),
                    Vector3.New(1, 1, 6.5) * SPACING / 2 * self.chunkSize,
                    {duration = 500, thickness = 3}
                )
            end
        end
        -- spawn Terrain
        local chunkData = ConvertSpawnParamsToChunkData(self.options)
    end
    return setmetatable(self, self)
end
return DraftChunkedBuilder
