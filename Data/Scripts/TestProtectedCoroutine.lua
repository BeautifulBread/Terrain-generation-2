local Imports = _G.Imports
local Tests = Imports.Tests.require()
local ProtectedCoroutine = Imports.Coroutines.ProtectedCoroutine.require()
-- local TableUtils = Imports.Utils.TableUtils.require()

local i = 0
function TestedFunc(...)
    local params = {...}
    local ret2 = params[1]
    if i == 0 then
        ret2 = ProtectedCoroutine.yield(6)
    end
    while i < 3 do
        i = i + 1
        error()
    end
    assert(ret2)
    return ret2 * 2
end
Tests.RunTest(
    'Coroutines.ProtectedCoroutine',
    function()
        local pc = ProtectedCoroutine.create(TestedFunc)
        local ret1, ret2 = ProtectedCoroutine.resume(pc, 6)
        assert(ret2)
        assert(
            ret2 == 6 and ret1 == true,
            'ret1 is ' .. tostring(ret1) .. ', true expected;\tret2 is ' .. tostring(ret2) .. ', 12 expected'
        )
        ProtectedCoroutine.resumeLooped(pc, ret2)
        ProtectedCoroutine.resume(pc, ret2)
        ProtectedCoroutine.resume(pc, ret2)
        local newRet1, newRet2 = ProtectedCoroutine.resume(pc, ret2)
        assert(
            newRet2 == 12 and newRet1 == true,
            'newRet1 is ' ..
                tostring(newRet1) .. ', true expected;\tnewRet2 is ' .. tostring(newRet2) .. ', 12 expected'
        )
    end
)
