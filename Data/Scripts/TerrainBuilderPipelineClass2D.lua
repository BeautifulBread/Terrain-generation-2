function TerrainHeightmapBuilderPipelineClass2D()
    local self = {
        devices = {},
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
        print('-----------')
    end
    function self.Execute(options)
        options = options
        self.ListDevices()
        for i = 1, #self.devices do
            assert(self.devices[i])
            assert(self.devices[i].type)
            local perfReport = {}
            perfReport.startTime = time()
            options = self.devices[i](options)
            perfReport.finishTime = time()
            perfReport.totalTime = perfReport.finishTime - perfReport.startTime
            self.perfReports[self.devices[i].type] = perfReport
        end
        return options
    end
    return setmetatable(self, self)
end
-- TODO: custom Events
-- TODO: custom CoroutinesPlus
return TerrainHeightmapBuilderPipelineClass2D
