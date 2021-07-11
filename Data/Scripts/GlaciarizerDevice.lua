function FlatSurfaceSmoothingFilterDevice(hDelta)
    local self = {
        type = 'FlatSurfaceSmoothingFilterDevice',
        hDelta = hDelta
    }
    function self.__call(_, options)
        assert(
            options,
            [[You've failed to pass options to BasicTerrainBuilderDevice! Mandatory options:
            heighMap: table]]
        )
        assert(options.heightMap, 'There was no heightMap supplied to BasicTerrainBuilderDevice')
        assert(type(options.heightMap) == 'table', "You've passed invalid heightMap to BasicTerrainBuilderDevice")
        local MAX_ITERATIONS_PER_TICK = 2000
        local iters = 0
        local width = #options.heightMap[1]
        local height = #options.heightMap
        local function FlattenHorizontalPass(newMap)
            local ret = true
            for i = 1, height do
                for ii = 1, width - 1 do
                    iters = iters + 1
                    if iters % MAX_ITERATIONS_PER_TICK == 0 then
                        Task.Wait()
                    end
                    local diff = newMap[i][ii] - newMap[i][ii + 1]
                    if diff <= self.hDelta and diff >= -self.hDelta then
                        ret = false
                        newMap[i][ii + 1] = newMap[i][ii]
                    end
                end
            end
            return ret
        end
        local function FlattenVerticalPass(newMap)
            local ret = true
            for i = 1, height - 1 do
                for ii = 1, width do
                    iters = iters + 1
                    if iters % MAX_ITERATIONS_PER_TICK == 0 then
                        Task.Wait()
                    end
                    local diff = newMap[i][ii] - newMap[i + 1][ii]
                    if diff <= self.hDelta and diff >= -self.hDelta then
                        ret = false
                        print(tostring(diff) .. '\t' .. tostring(i) .. '|' .. tostring(ii))
                        newMap[i + 1][ii] = newMap[i][ii]
                    end
                end
            end
            return ret
        end

        -- copy heightMap
        local newMap = {}
        for i = 1, height do
            newMap[i] = {}
            for ii = 1, width do
                newMap[i][ii] = options.heightMap[i][ii]
            end
        end
        -- filter heightMap
        FlattenHorizontalPass(newMap)
        FlattenVerticalPass(newMap)
        -- options = {table.unpack(options)}
        options.heightMap = newMap
        return options
    end
    return setmetatable(self, self)
end
return FlatSurfaceSmoothingFilterDevice
