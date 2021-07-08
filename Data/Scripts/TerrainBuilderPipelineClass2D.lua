function TerrainHeightmapBuilderPipelineClass2D()
    local self = {
        devices = {}
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
    function self.Execute(options)
        options = options
        self.ListDevices()
        for i = 1, #self.devices do
            assert(self.devices[i])
            options = self.devices[i](options)
        end
        return options
    end
    return setmetatable(self, self)
end
-- TODO: custom Events
-- TODO: custom CoroutinesPlus
return TerrainHeightmapBuilderPipelineClass2D
