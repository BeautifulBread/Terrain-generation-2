function BasicTerrainBuilderDevice(spawnedObjectsParent, scale)
    assert(not scale or type(scale) == 'number')
    local self = {
        type = 'BasicTerrainBuilderDevice',
        spawnedObjectsParent = spawnedObjectsParent,
        scale = scale or 1,
        inputKeys = {'heightMap'},
        outputKeys = {'spawnParams', 'width', 'height'}
    }
    function self.__call(_, options)
        -- input validation
        assert(
            options,
            [[You've failed to pass options to BasicTerrainBuilderDevice! Mandatory options:
            heighMap: table]]
        )
        assert(options.heightMap, 'There was no heightMap supplied to BasicTerrainBuilderDevice')
        if #options.heightMap == 0 then
            return {heightMap = {}}
        end
        assert(type(options.heightMap) == 'table', "You've passed invalid heightMap to BasicTerrainBuilderDevice")
        options.position = options.position or Vector3.ZERO
        assert(
            type(options.position) == 'userdata' and options.position.type == 'Vector3',
            "You've passed invalid position argument to BasicTerrainBuilderDevice"
        )

        -- actual building
        local SPACING = self.scale * 100
        local width = #options.heightMap[1]
        local height = #options.heightMap

        local heightMap = options.heightMap -- is an optimization
        local iters = 0 -- to avoid instruction limit errors
        local MAX_ITERS_PER_TICK = 10000
        local spawnParams = {}
        for i = 1, height do
            spawnParams[i] = {}
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    Task.Wait()
                end
                local zOffset = heightMap[i][ii]
                local position = Vector3.New(ii * SPACING, i * SPACING, zOffset)
                spawnParams[i][ii] = {
                    parent = self.spawnedObjectsParent,
                    position = position + options.position,
                    scale = Vector3.ONE * self.scale
                }
            end
        end
        local correctedSpawnParams = {}
        correctedSpawnParams[1] = {}
        correctedSpawnParams[height] = {}
        iters = iters % MAX_ITERS_PER_TICK
        MAX_ITERS_PER_TICK = 5000
        for i = 1, height do
            correctedSpawnParams[i] = {}
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    Task.Wait()
                end
                local neighbours = {}
                neighbours.u = spawnParams[i][ii + 1]
                neighbours.d = spawnParams[i][ii - 1]
                if spawnParams[i + 1] then
                    neighbours.r = spawnParams[i + 1][ii]
                end
                if spawnParams[i - 1] then
                    neighbours.l = spawnParams[i - 1][ii]
                end
                local offsets = {}
                for k, v in pairs(neighbours) do
                    offsets[k] = spawnParams[i][ii].position.z - v.position.z
                end
                local maxOffset = 0
                for _, v in pairs(offsets) do
                    assert(v)
                    if v > maxOffset then
                        maxOffset = v
                    end
                end
                assert(maxOffset and type(maxOffset) == 'number', type(maxOffset))
                if maxOffset > SPACING then
                    correctedSpawnParams[i][ii] = {
                        position = spawnParams[i][ii].position,
                        scale = spawnParams[i][ii].scale,
                        parent = spawnParams[i][ii].parent
                    }
                    correctedSpawnParams[i][ii].position.z =
                        correctedSpawnParams[i][ii].position.z - (maxOffset - SPACING) / 2
                    correctedSpawnParams[i][ii].scale.z =
                        correctedSpawnParams[i][ii].scale.z + math.max(0, (maxOffset - SPACING) / SPACING)
                end
            end
        end
        -- for i=1,height do
        --     for k,v in ipairs(correctedSpawnParams[i]) do
        --         spawnParams[i][k] = v
        --     end
        -- end
        iters = iters % MAX_ITERS_PER_TICK
        MAX_ITERS_PER_TICK = 8000
        for i = 1, height do
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    Task.Wait()
                end
                -- spawnParams[i][ii] = correctedSpawnParams[i][ii] or spawnParams[i][ii]
                if correctedSpawnParams[i][ii] then
                    spawnParams[i][ii] = correctedSpawnParams[i][ii]
                end
            end
        end
        options.width = width
        options.height = height
        options.spawnParams = spawnParams
        return options
    end
    function self.__tostring()
        return self.type
    end
    return setmetatable(self, self)
end
return BasicTerrainBuilderDevice
