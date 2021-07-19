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
            -- assert(task)
            self.tasks[id] = nil
            if not task.yielded and not task.executingThread then
                task.executingThread = Task.GetCurrent().id
                task.yielded = task.func()
                self.yielded[id] = task
                return
            else
                error()
            end
        end
    end
    -- FIXME: this is an empty abstraction
    function self._SpawnThread()
        local thread =
            Task.Spawn(
            function()
                self._ThreadLoop()
            end
        )
        thread.repeatCount = -1
        thread.repeatInterval = 0
        return thread
    end

    -- setup:
    -- Task.Spawn(
    --     function()
    for i = 1, self.threadCount do
        -- if not self.threads[i] then
        -- TODO: deal with crashes
        local thread = self._SpawnThread()
        self.threads[i] = thread
        -- end
    end
    --     end
    -- )
    return setmetatable(self, self)
end

-- API
local AsyncOS = {
    scheduler = AsyncOSScheduler(12),
    IdGenerator = IdGenClass()
}
-- i=0
function AsyncOS.async(func)
    local task = {
        id = AsyncOS.IdGenerator(),
        type = 'AsyncTask',
        yielded = nil,
        executingThread = nil,
        func = func
    }
    AsyncOS.scheduler.tasks[task.id] = task
    -- i = i+1
    -- print(type(task.id))
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
