local mergedModel = script:GetCustomProperty('mergedModel')
function DraftChunkedBuilder(parent, options, asset, chunkSize, viewDistance)
    assert(parent)
    assert(options)
    assert(type(options) == 'table')
    assert(options.spawnParams)
    assert(asset)
    local self = {
        parent = parent,
        options = options,
        asset = asset,
        viewDistance = viewDistance or 4,
        chunkSize = chunkSize or 12,
        chunkModels = {}
    }
    function self.ConvertSpawnParamsToChunkData()
        assert(self.options)
        assert(self.options.spawnParams)
        assert(self.options.height)
        assert(self.options.width)
        local chunkData = {}
        local chunkSide = self.options.blockSize * 100 * self.chunkSize
        for i = 0, self.options.height do
            if self.options.spawnParams[i] and #self.options.spawnParams[i] ~= 0 then
                for ii = 1, #self.options.spawnParams[i] do
                    assert(self.options.spawnParams[i][ii])
                    local spos = self.options.spawnParams[i][ii].position
                    local chunkCoordX = math.floor(spos.x // chunkSide + 1)
                    local chunkCoordY = math.floor(spos.y // chunkSide + 1)
                    chunkData[chunkCoordY] = chunkData[chunkCoordY] or {}
                    chunkData[chunkCoordY][chunkCoordX] = chunkData[chunkCoordY][chunkCoordX] or {}
                    chunkData[chunkCoordY][chunkCoordX][#chunkData[chunkCoordY][chunkCoordX] + 1] =
                        self.options.spawnParams[i][ii]
                end
            end
        end
        assert(#chunkData ~= 0)
        return chunkData
    end
    function self.Build()
        local SPACING = self.options.blockSize * 100
        -- spawn Terrain
        local chunkData = self.ConvertSpawnParamsToChunkData(self.options)
        local iters = 0
        local MAX_ITERS_PER_TICK = 100
        for ky, y in ipairs(chunkData) do
            for kx, x in ipairs(y) do
                -- build merged model for the chunk
                -- self.chunkModels[y] = self.chunkModels[y] or {}
                -- if not self.chunkModels[y][x] then
                --     local posOffset = (Vector3.New(1, 0, 0) * ky + Vector3.New(0, 1, 0) * kx) * SPACING * self.chunkSize
                --     assert(posOffset)
                --     local pos =
                --         self.parent:GetWorldPosition() + posOffset +
                --         (SPACING * self.chunkSize / 2) * Vector3.New(1, 1, 0)
                --     assert(pos)
                --     self.chunkModels[y][x] = World.SpawnAsset(mergedModel, {position = pos})
                -- end
                -- local currentlyChunk = self.chunkModels[y][x]
                for i = 1, #x do
                    iters = iters + 1
                    if iters % MAX_ITERS_PER_TICK == 0 then
                        if iters > 10000 then
                            MAX_ITERS_PER_TICK = 40
                        end
                        Task.Wait()
                    end
                    local thisParams = x[i]
                    -- thisParams.position = thisParams.position-(currentlyChunk:GetPosition()-self.parent:GetWorldPosition())
                    -- thisParams.parent = currentlyChunk
                    World.SpawnAsset(self.asset, thisParams)
                end
            end
        end
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
    end
    return setmetatable(self, self)
end
return DraftChunkedBuilder