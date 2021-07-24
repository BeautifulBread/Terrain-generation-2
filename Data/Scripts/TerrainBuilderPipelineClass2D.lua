local Imports = _G.Imports
local PerformanceReportClass = Imports.Profiling.PerformanceReportClass.require()
local TableUtils = Imports.Utils.TableUtils.require()
local AsyncOS = Imports.Coroutines.AsyncOS.require()
local async, await = AsyncOS.async, AsyncOS.await
function TerrainBuilderPipelineClass2D(parent)
    local self = {
        type = 'TerrainBuilderPipelineClass2D',
        parent = parent,
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
    function self.ExecuteForArea(startX, startY, width, height, options)
        options = options or {}
        for i = 1, #self.devices do
            assert(self.devices[i])
            assert(self.devices[i].type)
            local perfReport = {}
            perfReport.type = self.devices[i].type
            perfReport.startTime = time()
            -- self._associatedTasks[i] =
            --     async(
            --     function()
            --         local opts = self.devices[i].ExecuteForArea(options, startX, startY, width, height)
            --         return opts
            --     end
            -- )
            -- options = await(self._associatedTasks[i])
            options = self.devices[i].ExecuteForArea(options,startX,startY,width,height)
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
        assert(options.spawnParams)
        return options
        -- TODO: caching
    end
    return setmetatable(self, self)
end
return TerrainBuilderPipelineClass2D
