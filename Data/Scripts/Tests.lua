local Imports = _G.Imports
local ProtectedCoroutine = Imports.Coroutines.ProtectedCoroutine.require()
Tests = {}
function Tests.RunTest(testName, func)
    assert(type(testName) == 'string', 'testName must be a string')
    assert(
        type(func) == 'function',
        [[
        test function must be of type function.
        NOTE:If you\'re trying to use a metatable call, wrap it in an anonymous function.
            ]]
    )
    Tests.scheduledTests = Tests.scheduledTests or {}
    Tests.scheduledTests[#Tests.scheduledTests + 1] = {testName = testName, func = func}
end
function Tests.RunAllTests()
    if Environment.IsPreview() then
        print('tests:')
        print('-----------')
        Tests.scheduledTests = Tests.scheduledTests or {}
        for i = 1, #Tests.scheduledTests do
            -- TODO: better formatting
            local currentTest = Tests.scheduledTests[i]
            local cr = ProtectedCoroutine.create(currentTest.func)
            local res, msg = ProtectedCoroutine.resume(cr)
            -- checks validity of the test name
            local stringNameRepr = tostring(currentTest.testName) or ''
            assert(
                stringNameRepr ~= '' or type(currentTest.testName) == 'string',
                stringNameRepr .. 'is not a valid test name'
            )
            assert(type(res) == 'boolean', 'test ' .. currentTest.testName .. ' must return string, boolean')
            -- log test results
            local dumpText = 'test: ' .. stringNameRepr .. string.rep(' ', 50 - #stringNameRepr)
            if res == false then
                print(dumpText .. '\tUNSUCCESSFUL' .. '\n' .. msg)
            else
                print(dumpText .. '\tSUCCESSFUL')
            end
        end
        print('-----------')
        print()
    else
        print('skipping tests.')
    end
end
return Tests
