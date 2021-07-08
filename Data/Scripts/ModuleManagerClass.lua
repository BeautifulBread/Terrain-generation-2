local function ImportFileClass(coreObject)
    if not coreObject then
        return nil
    end
    local self = {
        type = 'ImportFileClass',
        coreObject = coreObject,
        children = {},
        name = coreObject.name,
        required = nil
    }
    for _, v in ipairs(self.coreObject:GetChildren()) do
        self.children[v.name] = ImportFileClass(v)
    end
    function self.require()
        if self.coreObject.type ~= 'Script' then
            error("You can't require non-scripts")
        end
        self.required = self.required or require(self.coreObject:GetCustomProperty('self'))
        return self.required
    end
    function self:__index(a)
        if self.children[a] == nil then
            return
        end
        return self.children[a]
    end
    return setmetatable(self, self)
end
function ModuleManagerClass(...)
    local self = {
        parents = {},
        parentRootFileObjects = {},
        path = {}
    }
    function self.AddToPath(fileName)
        assert(
            fileName.type == 'ImportFileClass',
            'Invalid file name type ' .. fileName.type .. ' or non-existent script !!'
        )
        self.path[fileName.coreObject.name] = fileName
    end
    function self:__tostring()
        if Environment.IsServer() then
            print('Parent folders:')
            for k, v in pairs(self.parents) do
                print(k)
            end
            print('-------')
        end
    end
    function self:__call(...)
        for _, parent in ipairs({...}) do
            assert(Object.IsValid(parent) == true)
            self.parents[parent.name] = parent
        end
        for name, parent in pairs(self.parents) do
            if self.parentRootFileObjects[name] == nil then
                self.parentRootFileObjects[name] = ImportFileClass(parent)
            end
        end
        return self
    end
    function self:__index(a)
        local res = self.parentRootFileObjects[a]
        for _, v in pairs(self.path) do
            if v[a] ~= nil then
                assert(res == nil, "There's multiple files in path with the same name of " .. tostring(a))
                res = v[a]
            end
        end
        assert(res, 'Nothing with the name of ' .. a .. ' was found by module manager')
        return res
    end
    self = setmetatable(self, self)
    self(...)
    return self
end
return ModuleManagerClass
