function UniformZDevice(mapSize, zOffset)
    assert(mapSize)
    zOffset = zOffset or 0
    local self = {
        type = 'UniformZDevice',
        width = mapSize.x,
        height = mapSize.y,
        zOffset = zOffset
    }
    function self.__call(_, options)
        options = options or {}
        if options.heightMap then
            local msg = 'Dimension mismatch '
            assert(self.width == #options.heightMap[1], msg)
            assert(self.height == #options.heightMap, msg)
        end
        local flatSurface = {}
        local MAX_ITERS_PER_TICK = 20000
        local iters = 0
        for i = 1, self.width do
            flatSurface[i] = {}
            for ii = 1, self.height do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    Task.Wait()
                end
                flatSurface[i][ii] = self.zOffset
                if options.heightMap then
                    flatSurface[i][ii] = flatSurface[i][ii] + options.heightMap[i][ii]
                end
            end
        end
        local ret = options
        ret.position = Vector3.ZERO
        ret.heightMap = flatSurface
        return ret
    end
    function self.__tostring()
        return self.type
    end
    return setmetatable(self, self)
end
return UniformZDevice
