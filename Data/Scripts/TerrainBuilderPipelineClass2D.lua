local Imports = _G.Imports

local CUBE = script:GetCustomProperty('cube')
local PerformanceReportClass = Imports.Profiling.PerformanceReportClass.require()
local TableUtils = Imports.Utils.TableUtils.require()
local AsyncOS = Imports.Coroutines.AsyncOS.require()
local async, await = AsyncOS.async, AsyncOS.await
function TerrainHeightmapBuilderPipelineClass2D()
    local self = {
        type = 'TerrainHeightmapBuilderPipelineClass2D',
        devices = {},
        remaps = {},
        perfReport = PerformanceReportClass('Terrain generation'),
        _associatedTasks = {}
    }
    function self.AddDevice(device)
        self.devices[#self.devices + 1] = device
        self._associatedTasks[#self.devices + 1] = nil
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
        self.perfReport.PrintReport()
    end
    function self.Remap(table)
        self.remaps[#self.devices] = table
    end
    function self.Execute(options)
        options = options or {}
        for i = 1, #self.devices do
            assert(self.devices[i])
            assert(self.devices[i].type)
            local perfReport = {}
            perfReport.type = self.devices[i].type
            perfReport.startTime = time()
            self._associatedTasks[i] =
                async(
                function()
                    return self.devices[i](options)
                end
            )
            options = await(self._associatedTasks[i])
            if self.remaps[i] then
                for k, v in pairs(self.remaps[i]) do
                    assert(options[v] == options[k] or not options[v], "You can't remap to an occupied key")
                    options[v] = options[k]
                    options[k] = nil
                end
            end

            perfReport.finishTime = time()
            self.perfReport.Entry(perfReport)
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
        return options
    end
    return setmetatable(self, self)
end
return TerrainHeightmapBuilderPipelineClass2D
