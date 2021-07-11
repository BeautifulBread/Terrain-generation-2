local Imports = _G.Imports
local Tests = Imports.Tests.require()
local ProtectedCoroutine = Imports.Coroutines.ProtectedCoroutine.require()

function TestedFunc()
    ProtectedCoroutine.yield(6)
end
Tests.RunTest(
    'Coroutines.ProtectedCoroutine',
    function()
        local pc = ProtectedCoroutine.create(TestedFunc)
        local ret1, ret2 = ProtectedCoroutine.resume(pc)
        assert(ret2 == 6 and ret1 == true)
    end
)
