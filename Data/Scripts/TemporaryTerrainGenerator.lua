local Imports = _G.Imports
local TerrainHeightmapBuilderPipelineClass2D = Imports.Procedural.TerrainBuilderPipelineClass2D.require()
local UniformZDevice = Imports.Procedural.Devices.UniformZDevice.require()
local PerlinNoiseDevice = Imports.Procedural.Devices.PerlinNoiseDevice.require()
local FlatSurfaceSmoothingFilterDevice = Imports.Procedural.Devices.FlatSurfaceSmoothingFilterDevice.require()
local BasicTerrainBuilderDevice = Imports.Procedural.Devices.BasicTerrainBuilderDevice.require()
local AvgBasedSmoothingDevice = Imports.Procedural.Devices.AvgBasedSmoothingDevice.require()
local CombinerDevice = Imports.Procedural.Devices.CombinerDevice.require()
local terrainParent = script.parent:FindChildByName('Geom')

local pipeline = TerrainHeightmapBuilderPipelineClass2D()

pipeline.AddDevice(PerlinNoiseDevice(Vector2.New(100, 100), 5034, 1000, Vector2.New(0.05, 0.05)))
pipeline.AddDevice(UniformZDevice(100, 100, 150))
pipeline.Remap({heightMap = 'input1'})

-- pipeline.AddDevice(FlatSurface2DDevice(100, 100, 0))
pipeline.AddDevice(PerlinNoiseDevice(Vector2.New(100, 100), 5000, 1000, Vector2.New(0.05, 0.05)))
pipeline.AddDevice(PerlinNoiseDevice(Vector2.New(100, 100), 5987, 300, Vector2.New(0.01, 0.01)))
pipeline.Remap({heightMap = 'input2'})

pipeline.AddDevice(CombinerDevice())

pipeline.AddDevice(AvgBasedSmoothingDevice(1))
-- pipeline.AddDevice(FlatSurfaceSmoothingFilterDevice(20))
pipeline.AddDevice(BasicTerrainBuilderDevice(terrainParent))

print('Building terrain')
pipeline.Execute()
pipeline.ListPerformance()
