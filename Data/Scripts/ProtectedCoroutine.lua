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
    local params = {...}
    if not cr.type or cr.type ~= 'ProtectedCoroutineClass' then
        local type = cr.type or type(coroutine)
        return error('Type ' .. type .. ' is not a valid ProtectedCoroutineClass instance', 2)
    end
    if coroutine.status(cr.coroutine) ~= 'suspended' then
        return error('Coroutine has status of ' .. coroutine.status(cr.coroutine), 2)
    end
    local success, i = coroutine.resume(cr.coroutine, params)
    -- FIXME: plain lua coroutine calls can mess you up
    if success == true then
        cr.lastParams = i
    else
        if not cr.lastParams then
            cr.lastParams = params
        end
        -- print(tostring(success).."|"..tostring(time() - timer).."|"..tostring(prevI))
        cr.coroutine = coroutine.create(cr.func)
        Task.Wait()
    end
    return success, i
end
function ProtectedCoroutine.yield(ret)
    coroutine.yield(ret)
end
return setmetatable(ProtectedCoroutine, ProtectedCoroutine)
