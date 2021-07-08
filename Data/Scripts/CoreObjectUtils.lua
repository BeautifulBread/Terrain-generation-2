--[[ CoreObjectUtils.lua
    ## CoreObjectUtils.GetDescendantsTree(object)
        Gives you back the tree of all descendants. Each object has .object that points to its own coreObject and .children,
        which points to a table of child tables with the same properties.
        object: CoreObject
    ## CoreObjectUtils.FlattenDescendantTree(tree)
        Takes the tree and returns the array of all descendant CoreObjects.
        tree: table; return type of GetDescendantsTree
]]
local CoreObjectUtils = {}

function CoreObjectUtils.GetDescendantsTree(object)
    local res = {}
    for k, v in ipairs(object:GetChildren()) do
        res[k] = {object = v, children = CoreObjectUtils.GetDescendantsTree(v)}
    end
    return res
end
function CoreObjectUtils.FlattenDescendantTree(tree, prev)
    local objects = prev or {}
    for _, v in ipairs(tree) do
        objects[#objects + 1] = wv.object
        if #v.children ~= 0 then
            CoreObjectUtils.FlattenDescendantTree(v.children, objects)
        end
    end
    return objects
end
return CoreObjectUtils
