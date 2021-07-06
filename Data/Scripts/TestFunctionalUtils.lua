local Imports = _G['Imports']
local Tests = Imports.Tests.require()
local FunctionalUtils = Imports.Utils.FunctionalUtils.require()
local JSON = Imports.Utils.JSON.require()

Tests.RunTest(
    'FunctionalUtils.Map',
    function()
        local table = {0, 1, 2, 3, 4, 5}
        local function func(_, _, elem)
            return elem
        end
        FunctionalUtils.Map(table, func)
        return true
    end
)
Tests.RunTest(
    'FunctionalUtils.Filter',
    function()
        local table = {0, 1, 2, 3, 4, 5}
        local function func(_, _, elem)
            if elem % 2 == 0 then
                return true
            else
                return false
            end
        end
        local res = FunctionalUtils.Filter(table, func)
        JSON.Stringify(res)
        return true
    end
)
Tests.RunTest(
    'FunctionalUtils.Reduce',
    function()
        local table = {0, 1, 2, 3, 4, 5}
        local function func(_, _, elem, cumulativeSum)
            return elem + cumulativeSum
        end
        local res = FunctionalUtils.Reduce(table, func)
        JSON.Stringify(res)
        return true
    end
)
