-- TODO: docs
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
        objects[#objects + 1] = v.object
        if #v.children ~= 0 then
            CoreObjectUtils.FlattenDescendantTree(v.children, objects)
        end
    end
    return objects
end
return CoreObjectUtils
