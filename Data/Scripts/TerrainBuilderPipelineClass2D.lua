local Imports = _G.Imports
local TableUtils = Imports.Utils.TableUtils.require()
function TerrainHeightmapBuilderPipelineClass2D()
    local self = {
        type = 'TerrainHeightmapBuilderPipelineClass2D',
        devices = {},
        remaps = {},
        perfReports = {}
    }
    function self.AddDevice(device)
        self.devices[#self.devices + 1] = device
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
            local index = self.devices[i].type
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
            assert(self.devices[i])
            assert(self.devices[i].type)
            local perfReport = {}
            perfReport.startTime = time()
            options = self.devices[i](options)
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
            self.perfReports[self.devices[i].type] = perfReport
            Task.Wait()
        end
        totalPerfReport.finishTime = time()
        totalPerfReport.totalTime = totalPerfReport.finishTime - totalPerfReport.startTime
        self.perfReports[self.type] = totalPerfReport
        return options
    end
    return setmetatable(self, self)
end
return TerrainHeightmapBuilderPipelineClass2D
