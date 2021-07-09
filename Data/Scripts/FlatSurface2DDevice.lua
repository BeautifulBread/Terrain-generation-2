local Imports = _G.Imports
local TableUtils = Imports.Utils.TableUtils.require()
function FlatSurface2DDevice(width, height, zOffset)
    assert(width and height)
    zOffset = zOffset or 0
    local self = {
        type = 'FlatSurface2DDevice',
        width = width,
        height = height,
        zOffset = zOffset
    }
    function self.__call(_,options)
        options = options or {}
        local flatSurface = {}
        for i = 1, self.width do
            flatSurface[i] = {}
            for ii = 1, self.height do
                flatSurface[i][ii] = self.zOffset
            end
        end
        -- TableUtils.PrintTable(options)
        -- local ret = {table.unpack(options)}
        -- TableUtils.PrintTable(ret)
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
return FlatSurface2DDevice
