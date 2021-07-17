local Imports = _G.Imports
local IdGenClass = Imports.Utils.IdGenClass.require()
-- Scheduler class
function AsyncOSScheduler(threadCount)
    -- returned object:
    local self = {
        type = 'AsyncOSScheduler',
        threadCount = threadCount,
        threads = {},
        yielded = {},
        tasks = {}
    }

    -- functions:
    function self._ThreadLoop()
        for id, task in pairs(self.tasks) do
            if not task.yielded and not task.executingThread then
                task.executingThread = Task.GetCurrent().id
                task.yielded = task.func()
                self.yielded[id] = task
                self.tasks[id] = nil
                return
            end
        end
    end
    function self._SpawnThread()
        local thread =
            Task.Spawn(
            function()
                repeat
                    self._ThreadLoop()
                    Task.Wait()
                until false
            end
        )
        return thread
    end

    -- setup:
    for _ = 1, self.threadCount do
        local thread = self._SpawnThread()
        self.threads[thread.id] = thread
    end
    return setmetatable(self, self)
end

-- API
local AsyncOS = {
    scheduler = AsyncOSScheduler(12),
    IdGenerator = IdGenClass()
}
function AsyncOS.async(func)
    local task = {
        id = AsyncOS.IdGenerator(),
        type = 'AsyncTask',
        yielded = nil,
        executingThread = nil,
        func = func
    }
    AsyncOS.scheduler.tasks[task.id] = task
    return task.id
end
function AsyncOS.await(taskId)
    if not taskId then
        error('taskId is invalid', 2)
    end
    local task = AsyncOS.scheduler.yielded[taskId]
    while not task do
        Task.Wait()
        task = AsyncOS.scheduler.yielded[taskId]
    end
    AsyncOS.scheduler.yielded[taskId] = nil
    return task.yielded
end
return setmetatable(AsyncOS, AsyncOS)
