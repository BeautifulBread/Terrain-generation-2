--[[    FunctionalUtils.lua
## FunctionalUtils.Map(table,func)
    Executes func on every element of table and returns the result (Doesn't mutate table itself).
    table: table
    func: Function
        table: table
        key: string
        value: any
## FunctionalUtils.Filter(table,func)
    Executes func for every element of table, returns a table of all elements that func returned true for
    (Doesn't mutate table itself).
    table: table
    func: Function
        table: table
        key: string
        value: any
## FunctionalUtils.Reduce(table,func,cumulativeSum)
    Executes func for every element of table, assigns it to cumulativeSum. Returns the cumulativeSum
    (Doesn't mutate table itself).
    Returns the cumulativeSum.
    table: table
    func: Function
        table: table
        key: string
        value: any
        cumulativeSum: any
]]
FunctionalUtils = {}
function FunctionalUtils.Map(table, func)
    assert(type(table) == 'table')
    assert(type(func) == 'function')
    local res = {}
    for k, v in pairs(table) do
        -- print(tostring(k).."\t:\t"..tostring(v))
        res[k] = func(table, k, v)
    end
    return res
end
function FunctionalUtils.Filter(table, func)
    assert(type(table) == 'table')
    assert(type(func) == 'function')
    local res = {}
    for k, v in pairs(table) do
        if func(table, k, v) == true then
            res[k] = v
        end
    end
    return res
end
function FunctionalUtils.Reduce(table, func, cumulativeSum)
    assert(type(table) == 'table')
    assert(type(func) == 'function')
    cumulativeSum = cumulativeSum or 0
    for k, v in pairs(table) do
        cumulativeSum = func(table, k, v, cumulativeSum)
    end
    return cumulativeSum
end
return FunctionalUtils
