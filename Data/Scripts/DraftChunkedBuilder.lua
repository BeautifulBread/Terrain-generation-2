-- local mergedModel = script:GetCustomProperty('mergedModel')
function DraftChunkedBuilder(parent, asset, chunkSize, blockSize, viewDistance)
    assert(parent)
    assert(asset)
    local self = {
        parent = parent,
        asset = asset,
        viewDistance = viewDistance or error('', 2),
        chunkSize = chunkSize or error('', 2),
        blockSize = blockSize or error('',2),
        chunkModels = {}
    }
    function self.ConvertSpawnParamsToChunkData(options)
        assert(options)
        assert(options.spawnParams)
        local chunkData = {}
        local chunkSide = self.blockSize * 100 * self.chunkSize
        for i in ipairs(options.spawnParams) do
            if options.spawnParams[i] and #options.spawnParams[i] ~= 0 then
                for ii in ipairs(options.spawnParams[i]) do
                    assert(options.spawnParams[i][ii])
                    local spos = options.spawnParams[i][ii].position
                    local chunkCoordX = math.floor(spos.x // chunkSide + 1)
                    local chunkCoordY = math.floor(spos.y // chunkSide + 1)
                    chunkData[chunkCoordY] = chunkData[chunkCoordY] or {}
                    chunkData[chunkCoordY][chunkCoordX] = chunkData[chunkCoordY][chunkCoordX] or {}
                    chunkData[chunkCoordY][chunkCoordX][#chunkData[chunkCoordY][chunkCoordX] + 1] =
                        options.spawnParams[i][ii]
                end
            end
        end
        assert(#chunkData ~= 0)
        return chunkData
    end
    function self.BuildArea(options, startX, startY, width, height)
        assert(options)
        assert(type(options) == 'table', type(options))
        assert(options.spawnParams)
        local iters = 0
        local MAX_ITERS_PER_TICK = 28
        local spawnParams = options.spawnParams
        local correctionParams = options.correctionParams
        for i = startY, startY + height do
            for ii = startX, startX + width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    Task.Wait()
                end
                if spawnParams[i] and spawnParams[i][ii] then
                    local thisParams = spawnParams[i][ii]
                    World.SpawnAsset(self.asset, thisParams)
                    if correctionParams and correctionParams[i] and correctionParams[i][ii] then
                        assert(#correctionParams[i][ii] ~= 0)
                        for k = 1, #correctionParams[i][ii] do
                            if iters % MAX_ITERS_PER_TICK == 0 then
                                Task.Wait()
                            end
                            World.SpawnAsset(self.asset, correctionParams[i][ii][k])
                        end
                    end
                end
            end
        end
        return
    end
    return setmetatable(self, self)
end
return DraftChunkedBuilder
