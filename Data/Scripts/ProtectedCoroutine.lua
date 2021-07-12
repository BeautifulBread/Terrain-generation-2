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
    local success, i = coroutine.resume(cr.coroutine, params)
    -- FIXME: plain lua coroutine calls can mess you up
    if success == true then
        -- TODO: consider removing .lastParams
        cr.lastParams = i
    else
        if not cr.lastParams then
            cr.lastParams = params
        end
        cr.coroutine = coroutine.create(cr.func)
        Task.Wait()
    end
    return success, i
end
function ProtectedCoroutine.resumeProtected(cr, ...)
    -- TODO: test
    assert(cr)
    assert(cr.type == 'ProtectedCoroutineClass')
    local success, ret
    repeat
        success, ret = ProtectedCoroutine.resume(cr, ...)
    until success == true
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
