function TerrainHeightmapBuilderPipelineClass2D()
    local self = {
        devices = {}
    }
    function self.AddDevice(device)
        devices[#devices + 1] = device
    end
    function self.ListDevices()
        for i = #self.devices, 1 do
            print(self.devices[i])
        end
    end
    function self.BuildHeightMap()
    end
    return setmetatable(self, self)
end
return TerrainHeightmapBuilderPipelineClass2D
