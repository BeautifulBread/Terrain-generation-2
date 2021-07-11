function CombinerDevice()
    local self = {
        type = 'CombinerDevice',
        mode = 'Add',
        inputKeys = {'input1', 'input2'}
    }
    local function ValidateInputs(options)
        assert(options)
        assert(options.input1)
        assert(options.input2)
        assert(#options.input1 == #options.input2)
        assert(#options.input1[1] == #options.input2[1])
    end
    local function ClearInputKeys(table)
        for i = 1, #table do
            table[self.inputKeys[i]] = nil
        end
    end
    function self.__call(_, options)
        ValidateInputs(options)
        local heightMap = {}
        if self.mode == 'Add' then
            local width, height = #options.input1[1], #options.input1
            for i = 1, height do
                heightMap[i] = {}
                for ii = 1, width do
                    heightMap[i][ii] = options.input1[i][ii] + options.input2[i][ii]
                end
            end
        end
        local ret = options
        ret.heightMap = heightMap
        ClearInputKeys(ret)
        return ret
    end
    return setmetatable(self, self)
end
return CombinerDevice
