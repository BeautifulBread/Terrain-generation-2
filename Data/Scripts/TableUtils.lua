--[[ TableUtils.lua
    ## TableUtils.PrintTable(table)
        Prints a table in an elegant format.
    return: nil
    ## TableUtils.Keys(table)
        Returns a table of keys of the argument.
        table: table
    return: table
    ## TableUtils.Join(a, b)
        Returns a table with all entries of both tables. Keys contained in both have the value of a.
        a: table
        b: table
    return: table
    ## TableUtils.DeepCompare(a, b)
        Compares a and b recursively for any 'table' values.
        a: table
        b: table
    return: boolean
    ## TableUtils.Append(a,b)
        Returns b appended to the end of a. Doesn't mutate a and b.
        a: table
        b:table
    return: table
    ## TableUtils.ReverseTable(table)
        Returns a table with reversed table key and value pairs.
        table: table
    return: table
]]
TableUtils = {}
function TableUtils.PrintTable(table)
    if not table then
        return error('Table is nil!', 2)
    end
    if type(table) ~= 'table' then
        error('This is not a table', 2)
    end
    print('contents of a table:')
    print('-----------')
    for k, v in pairs(table) do
        print(tostring(k) .. string.rep(' ', math.max(50 - #k, 0)) .. ':\t' .. tostring(v))
    end
    print('-----------')
end
function TableUtils.Keys(table)
    assert(type(table) == 'table')
    local res = {}
    for k in pairs(table) do
        res[#res + 1] = k
    end
    return res
end
function TableUtils.Join(a, b)
    assert(type(a) == 'table', 'arguments must be tables, not ' .. tostring(type(a)))
    assert(type(b) == 'table', 'arguments must be tables, not ' .. tostring(type(a)))
    local res = {}
    for k, v in pairs(a) do
        res[k] = v
    end
    for k, v in pairs(b) do
        -- if res[k] then error(tostring(k).." is contained in both joined tables")end
        res[k] = res[k] or v
    end
    return res
end

function TableUtils.DeepCompare(a, b)
    assert(type(a) == 'table', 'arguments must be tables, not ' .. tostring(type(a)))
    assert(type(b) == 'table', 'arguments must be tables, not ' .. tostring(type(a)))
    local joined = TableUtils.Join(a, b)
    for k in pairs(joined) do
        if type(a[k]) ~= type(b[k]) then
            return false
        end
        if type(a[k]) == 'table' then
            if TableUtils.DeepCompare(a[k], b[k]) == false then
                return false
            end
        elseif a[k] ~= b[k] then
            return false
        end
    end
    return true
end
function TableUtils.Append(a, b)
    assert(type(a) == 'table')
    assert(type(b) == 'table')
    -- TODO: docs
    local res = {}
    for i = 1, #a do
        res[i] = a[i]
    end
    for i = 1, #b do
        res[i + #a] = b[i]
    end
    return res
end
function TableUtils.ComponentWiseCompare(a, b)
    assert(type(a) == 'table')
    assert(type(b) == 'table')
    local res = TableUtils.Join(a, b)
    for k in pairs(res) do
        if a[k] ~= b[k] then
            return false
        end
    end
    return true
end
function TableUtils.ReverseTable(table)
    assert(type(table) == 'table')
    local res = {}
    for k, v in pairs(table) do
        assert(
            type(v) == 'string' or type(v) == 'number',
            'Value of type ' .. tostring(type(v)) .. " can't be used as a table key"
        )
        res[v] = k
    end
    return res
end
return TableUtils
