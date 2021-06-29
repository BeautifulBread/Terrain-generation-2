local Imports = _G.Imports
local Tests = Imports.Tests
local CoreObjectUtils = Imports.Utils.CoreObjectUtils
-- assert(CoreObjectUtils ~=nil)

Tests.RunTest(
    'CoreObjectUtils.GetDescendantTree',
    function()
        local descendants = CoreObjectUtils.GetDescendantsTree(script)
        assert(type(descendants) == 'table')
        assert(#descendants == 1)
        assert(descendants[1].object ~= nil and descendants[1].children ~= nil)
        assert(#descendants[1].children == 1)
        -- TODO: do something with the descendant
        return true
    end
)
