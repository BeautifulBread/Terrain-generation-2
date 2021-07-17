local Imports = _G.Imports
local AsyncOS = Imports.Coroutines.AsyncOS.require()
local async = AsyncOS.async
local await = AsyncOS.await
Task.Wait(3.5)
function CountTo200K()
    local count = 0
    for _ = 1, 200000 do
        count = count + 1
    end
    return count
end

do
    -- asynchronous action usage:
    local task = async(CountTo200K)
    local result = await(task)
    assert(result == 200000)
end
-- showcase multiple asynchronous tasks running
local timeTest = time()
local tasks = {}
for i = 1, 1000 do -- creates tasks
    local task = async(CountTo200K)
    tasks[i] = task
end
for i = 1, 500 do -- collects the results
    local result = await(tasks[i])
    assert(result == 200000)
end
local asyncTest = time() - timeTest

-- vanilla for loop reference(shows you the performance boost of this thing)
for _ = 1, 500 do
    local result = CountTo200K()
    Task.Wait() -- because of the instruction limit errors. If that error could be disabled, both variants would be much faster
    assert(result == 200000)
end
print('Asynchronous module performance benchmark:')
print('Async variant finished in ' .. tostring(asyncTest) .. ' seconds')
print('Vanilla variant finished in ' .. tostring(time() - timeTest) .. ' seconds')
