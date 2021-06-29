local Namespace = {}
--

--[[
    Global references to local for performance
]]
local rawset = rawset
local require = require
local setmetatable = setmetatable
local type = type
--

--[[
    Create a new namespace with metatable
    @param - a
]]
function Namespace.__call()
    return setmetatable({__keys = {}}, Namespace)
end
--

--[[
    Indicates if the namespace key exist or not, and require
    @param - b
]] function Namespace:__index(b)
    local k = self.__keys[b]

    if k ~= nil then
        local r = require(k)
        rawset(self, k, r)

        return r
    end
end
--

--[[
    Assign new value to the table, if not string deffered require
    @param - k
    @param - v
]] function Namespace:__newindex(
    k,
    v)
    local t = type(v)

    if t ~= 'string' then
        rawset(self, k, v)
        return
    end

    self.__keys[k] = v
end
--

--[[
    Check if array or object/table has value or not
    @param table - object/array
    @param value - string

    @return bool returns true or false
]] function Namespace.HasValue(
    table,
    x)
    for k, v in pairs(table) do
        if v == x then
            return true
        end
    end
    return false
end
--

--[[
    Check if array or object/table has key or not
    @param table - object/array
    @param value - string

    @return bool returns true or false
]] function Namespace.HasKey(
    table,
    key)
    return table[key] ~= nil
end
--

--[[
    Check if array or object/table has value or not
    @param target - Core Object
    @param parent - Core Object

    @return - Mixed returns created namespace
]] function Namespace.__(
    target,
    parent)
    for _, obj in ipairs(target:GetChildren()) do
        if obj:IsA('Script') and obj:GetCustomProperty('self') then
            parent[obj.name] = obj:GetCustomProperty('self')
            for x, y in pairs(obj:GetCustomProperties()) do
                if x ~= 'self' then
                    parent[obj.name][x] = y
                end
            end
        elseif obj:IsA('Folder') then
            parent[obj.name] = Namespace(parent)
            Namespace.__(obj, parent[obj.name])
        elseif obj:IsA('NetworkContext') then
            parent[obj.name] = Namespace()
            Namespace.__(obj, parent[obj.name])
        end
    end
    return parent
end

return setmetatable(Namespace, Namespace)
