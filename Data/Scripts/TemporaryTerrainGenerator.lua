local Imports = _G.Imports
local TerrainHeightmapBuilderPipelineClass2D = Imports.Procedural.TerrainBuilderPipelineClass2D.require()
local FlatSurface2DDevice = Imports.Procedural.Devices.FlatSurface2DDevice.require()
local PerlinNoiseDevice = Imports.Procedural.Devices.PerlinNoiseDevice.require()
local FlatSurfaceSmoothingFilterDevice = Imports.Procedural.Devices.FlatSurfaceSmoothingFilterDevice.require()
local BasicTerrainBuilderDevice = Imports.Procedural.Devices.BasicTerrainBuilderDevice.require()
local terrainParent = script.parent:FindChildByName('Geom')

local pipeline = TerrainHeightmapBuilderPipelineClass2D()

pipeline.AddDevice(FlatSurface2DDevice(100, 100, 0))
pipeline.AddDevice(PerlinNoiseDevice(5034, 1000, Vector2.New(0.05, 0.05)))
pipeline.AddDevice(PerlinNoiseDevice(5000, 1000, Vector2.New(0.05, 0.05)))
pipeline.AddDevice(PerlinNoiseDevice(5987, 300, Vector2.New(0.01, 0.01)))
pipeline.AddDevice(FlatSurfaceSmoothingFilterDevice(20))
pipeline.AddDevice(BasicTerrainBuilderDevice(terrainParent))

print('Building terrain')
pipeline.Execute()
pipeline.ListPerformance()
