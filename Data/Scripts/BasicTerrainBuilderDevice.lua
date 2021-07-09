local CUBE = script:GetCustomProperty('cube')
function BasicTerrainBuilderDevice(spawnedObjectsParent, scale)
    assert(not scale or type(scale) == 'number')
    local self = {
        type = 'BasicTerrainBuilderDevice',
        spawnedObjectsParent = spawnedObjectsParent,
        scale = scale or 1
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
        local MAX_ITERATIONS_PER_TICK = 100

        local width = #options.heightMap[1]
        local height = #options.heightMap

        local heightMap = options.heightMap -- is an optimization
        local iters = 0 -- to avoid instruction limit errors
        for i = 1, height do
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERATIONS_PER_TICK == 0 then
                    Task.Wait()
                end
                local zOffset = heightMap[i][ii]
                local position = Vector3.New(ii * SPACING, i * SPACING, zOffset)
                World.SpawnAsset(
                    CUBE,
                    {
                        parent = self.spawnedObjectsParent,
                        position = position + options.position,
                        scale = Vector3.ONE * self.scale
                    }
                )
            end
        end
        return
    end
    function self.__tostring()
        return self.type
    end
    return setmetatable(self, self)
end
return BasicTerrainBuilderDevice
