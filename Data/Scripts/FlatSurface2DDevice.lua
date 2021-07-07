function FlatSurface2DDevice(width, height, zOffset)
    assert(width and height)
    zOffset = zOffset or 0
    local self = {
        type = 'FlatSurface2DDevice',
        width = width,
        height = height,
        zOffset = zOffset
    }
    function self.__call()
        local flatSurface = {}
        for i = 1, self.width do
            flatSurface[i] = {}
            for ii = 1, self.height do
                flatSurface[i][ii] = self.zOffset
            end
        end
        flatSurface = setmetatable(flatSurface, flatSurface)
        print('flat surface generated')
        return {heightMap = flatSurface, position = Vector3.ZERO}
    end
    function self.__tostring()
        return self.type
    end
    return setmetatable(self, self)
end
return FlatSurface2DDevice
