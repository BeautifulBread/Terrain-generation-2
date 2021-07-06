local Imports = _G.Imports
local TestFramework = Imports.Tests.require()
local TableUtils = require(script:GetCustomProperty('TableUtils')) or error()

TestFramework.RunTest(
    'TableUtils.Keys',
    function()
        local res = {hello = 1, 2, 3, 4, bye = 5}
        res = TableUtils.Keys(res)
        assert(res)
        for k, v in pairs(res) do
            assert(v)
            -- print(v)
        end
        return true
    end
)
TestFramework.RunTest(
    'TableUtils.Join',
    function()
        local a, b = {bye = 156, 1, 2, 3, 4, 5}, {4, 5, 6, 7, hello = 9}
        local res = TableUtils.Join(a, b)
        for k, v in pairs(res) do
            assert(k ~= nil)
            assert(v ~= nil)
            -- print(k)
        end
        return true
    end
)
TestFramework.RunTest(
    'TableUtils.DeepCompare.EmptyTables',
    function()
        local a = {}
        local b = {}
        local res = TableUtils.DeepCompare(a, b)
        return res
    end
)
TestFramework.RunTest(
    'TableUtils.DeepCompare.RealUsage',
    function()
        local a = {5, hello = 7, {{7}}}
        local b = {5, hello = 7, {{7}}}
        local res = TableUtils.DeepCompare(a, b)
        return res
    end
)
TestFramework.RunTest(
    'TableUtils.Append & ComponentWiseCompare',
    function()
        local a = {1, 3, 5, 7, 9}
        local b = {2, 4, 6, 8, 10}
        local res = TableUtils.Append(a, b)
        if TableUtils.ComponentWiseCompare(res, {1, 3, 5, 7, 9, 2, 4, 6, 8, 10}) then
            return true
        else
            return false
        end
    end
)
TestFramework.RunTest(
    'TableUtils.ReverseTable',
    function()
        local table = {'hello', 'bye', 8}
        assert(table)
        local res = TableUtils.ReverseTable(table)
        for k, v in pairs(res) do
            if table[v] ~= k then
                return 'TableUtils.ReverseTable', false
            end
        end
        return true
    end
)
