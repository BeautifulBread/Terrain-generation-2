local Imports = _G.Imports
local TerrainHeightmapBuilderPipelineClass2D = Imports.Procedural.TerrainBuilderPipelineClass2D.require()
local FlatSurface2DDevice = Imports.Procedural.Devices.FlatSurface2DDevice.require()
local BasicTerrainBuilderDevice = Imports.Procedural.Devices.BasicTerrainBuilderDevice.require()
local terrainParent = script.parent

local pipeline = TerrainHeightmapBuilderPipelineClass2D()

local flatDevice = FlatSurface2DDevice(100, 100, 0)
assert(flatDevice)
pipeline.AddDevice(flatDevice)

local builderDevice = BasicTerrainBuilderDevice(terrainParent)
assert(builderDevice)
pipeline.AddDevice(builderDevice)

print('Building terrain')
pipeline.Execute()
