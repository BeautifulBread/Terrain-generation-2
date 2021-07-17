local function IdGenClass()
    local self = {
        lastId = "0"
    }
    function self.__call()
        self.lastId = tostring(tonumber(self.lastId)+1)
        return self.lastId
    end
    return setmetatable(self, self)
end
return IdGenClass