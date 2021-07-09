function UniformZDevice(width, height, zOffset)
    assert(width and height)
    zOffset = zOffset or 0
    local self = {
        type = 'UniformZDevice',
        width = width,
        height = height,
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
        for i = 1, self.width do
            flatSurface[i] = {}
            for ii = 1, self.height do
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
