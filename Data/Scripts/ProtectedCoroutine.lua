function ProtectedCoroutineClass(func)
    local self = {
        type = 'ProtectedCoroutineClass',
        func = func,
        coroutine = coroutine.create(func),
        lastParams = nil
    }
    return setmetatable(self, self)
end
local ProtectedCoroutine = {}
function ProtectedCoroutine.create(func)
    return ProtectedCoroutineClass(func)
end
function ProtectedCoroutine.resume(cr, ...)
    local params = ...
    assert(cr)
    local type = cr.type or type(coroutine)
    assert(
        cr.type == 'ProtectedCoroutineClass',
        'Type ' .. tostring(type) .. ' is not a valid ProtectedCoroutineClass instance'
    )
    cr.lastParams = cr.lastParams or params
    local success, i = coroutine.resume(cr.coroutine, params)
    if success == true then
        -- TODO: consider removing .lastParams
        cr.lastParams = i
    elseif i == 'Instruction limit exceeded. Your code may be in an infinite loop.' then
        cr.coroutine = coroutine.create(cr.func)
        Task.Wait()
        return ProtectedCoroutine.resume(cr)
    else
        cr.coroutine = coroutine.create(cr.func)
        return success, i
    end
    return success, i
end
function ProtectedCoroutine.resumeLooped(cr, ...)
    assert(cr)
    assert(cr.type == 'ProtectedCoroutineClass')
    local success, ret
    repeat
        success, ret = ProtectedCoroutine.resume(cr, ...)
    until success == false or ProtectedCoroutine.status(cr) == 'dead'
    return success, ret
end
function ProtectedCoroutine.yield(ret)
    coroutine.yield(ret)
end
function ProtectedCoroutine.status(cr)
    assert(type(cr) == 'table')
    assert(cr.type == 'ProtectedCoroutineClass')
    return coroutine.status(cr.coroutine)
end
return setmetatable(ProtectedCoroutine, ProtectedCoroutine)
