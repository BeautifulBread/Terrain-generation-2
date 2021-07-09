local Imports = _G.Imports
local TableUtils = Imports.Utils.TableUtils.require()
function CombinerDevice()
    local self = {
        type = 'CombinerDevice',
        mode = 'Add'
    }
    function self.__call(_,options)
        -- TableUtils.PrintTable(options)
        assert(options)
        assert(options.combinerInput1)
        assert(options.combinerInput2)
        assert(#options.combinerInput1 == #options.combinerInput2)
        assert(#options.combinerInput1[1] == #options.combinerInput2[1])
        local heightMap = {}
        if self.mode == 'Add' then
            local width, height = #options.combinerInput1[1], #options.combinerInput1
            for i = 1, height do
                heightMap[i] = {}
                for ii = 1, width do
                    heightMap[i][ii] = options.combinerInput1[i][ii] + options.combinerInput2[i][ii]
                end
            end
        end
        -- local ret = {table.unpack(options)}
        local ret = options
        ret.heightMap = heightMap
        return ret
    end
    return setmetatable(self, self)
end
return CombinerDevice
