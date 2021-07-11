function AvgBasedSmoothingDevice(tolerance)
    local self = {
        type = 'AvgBasedSmoothingDevice',
        tolerance = tolerance
    }
    -- return: table; {height, weight, {x, y}, {x, y}, ...}
    local function RecurseSmooth(table, startX, startY, returnCache)
        for x = startX - 1, startX + 1 do
            for y = startY - 1, startY + 1 do
                if math.abs(table[startY][startX] - table[y][x]) < self.tolerance then
                    local next = RecurseSmooth(table, x, y, returnCache)
                end
            end
        end
    end
    function self.__call(_, options)
        assert(
            options,
            [[You've failed to pass options to BasicTerrainBuilderDevice! Mandatory options:
            heighMap: table]]
        )
        assert(options.heightMap, 'There was no heightMap supplied to BasicTerrainBuilderDevice')
        assert(type(options.heightMap) == 'table', "You've passed invalid heightMap to BasicTerrainBuilderDevice")
        local MAX_ITERATIONS_PER_TICK = 20000
        local iters = 0

        local width = #options.heightMap[1]
        local height = #options.heightMap
        local newMap = {}
        local numOfAvgd = 0
        local avgDiff = 0
        for i = 1, height do
            newMap[i] = {}
            for ii = 1, width do
                -- DEBUG: set everything to an average of their neighbours
                newMap[i][ii] = options.heightMap[i][ii]
                if ii < width and ii > 1 and i < height and i > 1 then
                    numOfAvgd = numOfAvgd + 1
                    local avg = 0
                    for yy = i - 1, i + 1 do
                        for xx = ii - 1, ii + 1 do
                            iters = iters + 1
                            if iters % MAX_ITERATIONS_PER_TICK == 0 then
                                Task.Wait()
                            end
                            avg = avg + options.heightMap[yy][xx]
                        end
                    end
                    avgDiff = (avgDiff * (numOfAvgd - 1) + math.abs(newMap[i][ii] - (avg / 9))) / numOfAvgd
                    newMap[i][ii] = avg / 9
                end
            end
        end
        -- print(numOfAvgd)
        -- print(avgDiff)
        local ret = options
        ret.heightMap = newMap
        return ret
    end
    return setmetatable(self, self)
end
return AvgBasedSmoothingDevice