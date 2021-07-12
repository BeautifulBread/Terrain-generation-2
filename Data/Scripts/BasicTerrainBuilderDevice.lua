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
        local MAX_ITERATIONS_PER_TICK = 10000

        local width = #options.heightMap[1]
        local height = #options.heightMap

        local heightMap = options.heightMap -- is an optimization
        local iters = 0 -- to avoid instruction limit errors
        local spawnParams = {}
        for i = 1, height do
            spawnParams[i] = {}
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERATIONS_PER_TICK == 0 then
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
        MAX_ITERATIONS_PER_TICK = 1000
        local correctedSpawnParams = {}
        correctedSpawnParams[1] = {}
        correctedSpawnParams[height] = {}
        for i = 2, height-1 do
            correctedSpawnParams[i] = {}
            for ii = 2, width-1 do
                iters = iters + 1
                if iters % MAX_ITERATIONS_PER_TICK == 0 then
                    Task.Wait()
                end
                local thisParams = spawnParams[i][ii]
                local thisBottomZOffset = thisParams.position.z-SPACING/2
                local thisTopZOffset = thisParams.position.z+SPACING/2
                function GetTopZOffset(params)
                    return thisBottomZOffset-(params.position.z+SPACING/2)
                end
                local u = GetTopZOffset(spawnParams[i][ii+1])
                local b = GetTopZOffset(spawnParams[i][ii-1])
                local r = GetTopZOffset(spawnParams[i+1][ii])
                local l = GetTopZOffset(spawnParams[i-1][ii])
                local maxDiff = math.max(u,b,r,l)
                if maxDiff>0 then
                    -- thisParams.scale = thisParams.scale or Vector3.ONE*SPACING/100
                    -- thisParams.scale.z = thisParams.scale.z*(thisTopZoffset+)
                    correctedSpawnParams[i][ii] = {position = Vector3.New(thisParams.position)}
                    -- correctedSpawnParams[i][ii].position.z = CoreMath.Lerp(thisBottomZOffset-maxDiff,thisTopZOffset,0.5)
                    correctedSpawnParams[i][ii].position.z = thisBottomZOffset-maxDiff/2
                end
            end
        end
        -- spawning
        MAX_ITERATIONS_PER_TICK = 100
        for i = 1, height do
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERATIONS_PER_TICK == 0 then
                    Task.Wait()
                end
                local thisParams = correctedSpawnParams[i][ii] or spawnParams[i][ii]
                World.SpawnAsset(CUBE, thisParams)
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
