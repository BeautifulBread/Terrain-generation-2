local Imports = _G.Imports

local CUBE = script:GetCustomProperty('cube')
local TableUtils = Imports.Utils.TableUtils.require()
local AsyncOS = Imports.Coroutines.AsyncOS.require()
local async, await = AsyncOS.async, AsyncOS.await
function TerrainHeightmapBuilderPipelineClass2D()
    local self = {
        type = 'TerrainHeightmapBuilderPipelineClass2D',
        devices = {},
        remaps = {},
        perfReports = {}
    }
    function self.AddDevice(device)
        self.devices[#self.devices + 1] = {device = device, associatedTask = nil}
    end
    function self.ListDevices()
        print('devices:')
        print('-----------')
        for i = 1, #self.devices do
            print(self.devices[i])
        end
        print('-----------')
        print()
    end
    function self.ListRemaps()
        print('remaps:')
        print('-----------')
        for k, v in pairs(self.remaps) do
            print(tostring(k))
            TableUtils.PrintTable(v)
        end
        print('-----------')
        print()
    end
    function self.ListPerformance()
        print('terrain generation timings:')
        print('-----------')
        for i = 1, #self.devices do
            local index = self.devices[i].device.type
            -- FIXME: useself.devices[i].perfReport instead
            local report = tostring(CoreMath.Round(self.perfReports[index].totalTime, 6) * 1000)
            local text =
                index ..
                string.rep(' ', math.max(50 - #index, 1)) ..
                    report .. string.rep(' ', math.max(10 - #report, 1)) .. 'ms'
            print(text)
        end
        print()
        print(
            'Terrain generation took ' ..
                tostring(CoreMath.Round(self.perfReports[self.type].totalTime, 6) * 1000) .. ' ms'
        )
        print('-----------')
        print()
    end
    function self.Remap(table)
        self.remaps[#self.devices] = table
    end
    function self.Execute(options)
        options = options or {}
        local totalPerfReport = {}
        totalPerfReport.startTime = time()
        for i = 1, #self.devices do
            assert(self.devices[i].device)
            assert(self.devices[i].device.type)
            local perfReport = {}
            perfReport.startTime = time()
            self.devices[i].associatedTask =
                async(
                function()
                    return self.devices[i].device(options)
                end
            )
            options = await(self.devices[i].associatedTask)
            if self.remaps[i] then
                for k, v in pairs(self.remaps[i]) do
                    assert(options[v] == options[k] or not options[v], "You can't remap to an occupied key")
                    options[v] = options[k]
                    options[k] = nil
                end
            end

            perfReport.finishTime = time()
            perfReport.totalTime = perfReport.finishTime - perfReport.startTime
            -- assert(not self.perfReports[self.devices[i].type]) -- FIXME:
            self.perfReports[self.devices[i].device.type] = perfReport
            Task.Wait()
        end

        -- FIXME: spawning here? OOFFF
        local spawnParams = options.spawnParams
        local iters = 0
        local MAX_ITERS_PER_TICK = 100
        for i = 1, options.height do
            for ii = 1, options.width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    if iters > 10000 then
                        MAX_ITERS_PER_TICK = 40
                    end
                    Task.Wait()
                end
                local thisParams = spawnParams[i][ii]
                World.SpawnAsset(CUBE, thisParams)
            end
        end
        totalPerfReport.finishTime = time()
        totalPerfReport.totalTime = totalPerfReport.finishTime - totalPerfReport.startTime
        self.perfReports[self.type] = totalPerfReport
        return options
    end
    return setmetatable(self, self)
end
return TerrainHeightmapBuilderPipelineClass2D
