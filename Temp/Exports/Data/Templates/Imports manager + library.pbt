Assets {
  Id: 8773553641872164077
  Name: "Imports manager + library"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4103380563365118000
      Objects {
        Id: 4103380563365118000
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 3084018047747701294
            }
            ReferencedAssets {
              Id: 7638048984163506959
            }
            ReferencedAssets {
              Id: 5027466373211250011
            }
          }
        }
      }
    }
    Assets {
      Id: 5027466373211250011
      Name: "ScriptFolder"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 6127463511379346490
          Objects {
            Id: 6127463511379346490
            Name: "ScriptFolder"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 10673794878616746981
            ChildIds: 9284123401573773708
            UnregisteredParameters {
              Overrides {
                Name: "cs:self"
                AssetReference {
                  Id: 2394074719941360336
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2394074719941360336
              }
            }
          }
          Objects {
            Id: 10673794878616746981
            Name: "Terrain Generator Sample"
            Transform {
              Location {
                X: -455
                Y: -230
                Z: -1365
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 6127463511379346490
            ChildIds: 1936163289547068984
            ChildIds: 5149795236477952669
            ChildIds: 11291433408293447122
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              Type: RuntimeStatic
            }
          }
          Objects {
            Id: 1936163289547068984
            Name: "TemporaryTerrainGenerator"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10673794878616746981
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 4829217015423507923
              }
            }
          }
          Objects {
            Id: 5149795236477952669
            Name: "Geom"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10673794878616746981
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Geom"
            }
          }
          Objects {
            Id: 11291433408293447122
            Name: "TerrainCube"
            Transform {
              Location {
                X: 455
                Y: 230
                Z: 1660
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10673794878616746981
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 12104061898319540445
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            CoreMesh {
              MeshAsset {
                Id: 14294653498337044303
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableDistanceFieldLighting: true
              DisableCastShadows: true
              DisableReceiveDecals: true
              DisableAngularMotionBlur: true
              StaticMesh {
                Physics {
                  Mass: 100
                  LinearDamping: 0.01
                }
                BoundsScale: 1
              }
            }
          }
          Objects {
            Id: 9284123401573773708
            Name: "async Sample"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 6127463511379346490
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 3928677769441614418
              }
            }
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      Marketplace {
        Description: "This is a module manager inspired by Bau\'s namespace manager. Allows you to import modules without using properties every time.\r\n-----------------\r\nChangelog:\r\nv1.0 plain module manager\r\nv1.1 added utility classes\r\nv1.2 added procedural generation\r\nv1.3 added asynchronous programming module"
      }
      DirectlyPublished: true
    }
    Assets {
      Id: 3928677769441614418
      Name: "async Sample"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal AsyncOS = Imports.Coroutines.AsyncOS.require()\r\nlocal async = AsyncOS.async\r\nlocal await = AsyncOS.await\r\nfunction CountTo200K()\r\n    local count = 0\r\n    for _ = 1, 200000 do\r\n        count = count + 1\r\n    end\r\n    return count\r\nend\r\n\r\ndo\r\n    -- asynchronous action usage:\r\n    local task = async(CountTo200K)\r\n    local result = await(task)\r\n    assert(result == 200000)\r\nend\r\n-- showcase multiple asynchronous tasks running\r\nlocal timeTest = time()\r\nlocal tasks = {}\r\nfor i = 1, 1000 do -- creates tasks\r\n    local task = async(CountTo200K)\r\n    tasks[i] = task\r\nend\r\nfor i = 1, 500 do -- collects the results\r\n    local result = await(tasks[i])\r\n    assert(result == 200000)\r\nend\r\nlocal asyncTest = time() - timeTest\r\n\r\n-- vanilla for loop reference(shows you the performance boost of this thing)\r\nfor _ = 1, 500 do\r\n    local result = CountTo200K()\r\n    Task.Wait() -- because of the instruction limit errors. If that error could be disabled, both variants would be much faster\r\n    assert(result == 200000)\r\nend\r\nprint(\'Asynchronous module performance benchmark:\')\r\nprint(\'Async variant finished in \' .. tostring(asyncTest) .. \' seconds\')\r\nprint(\'Vanilla variant finished in \' .. tostring(time() - timeTest) .. \' seconds\')\r\n"
      }
    }
    Assets {
      Id: 12104061898319540445
      Name: "Asphalt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gen_asphault_001"
      }
    }
    Assets {
      Id: 14294653498337044303
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 4829217015423507923
      Name: "TemporaryTerrainGenerator"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal TerrainHeightmapBuilderPipelineClass2D = Imports.Procedural.TerrainBuilderPipelineClass2D.require()\r\nlocal UniformZDevice = Imports.Procedural.Devices.UniformZDevice.require()\r\nlocal PerlinNoiseDevice = Imports.Procedural.Devices.PerlinNoiseDevice.require()\r\n-- local FlatSurfaceSmoothingFilterDevice = Imports.Procedural.Devices.FlatSurfaceSmoothingFilterDevice.require()\r\nlocal BasicTerrainBuilderDevice = Imports.Procedural.Devices.BasicTerrainBuilderDevice.require()\r\nlocal AvgBasedSmoothingDevice = Imports.Procedural.Devices.AvgBasedSmoothingDevice.require()\r\nlocal CombinerDevice = Imports.Procedural.Devices.CombinerDevice.require()\r\nlocal terrainParent = script.parent:FindChildByName(\'Geom\')\r\n\r\nlocal pipeline = TerrainHeightmapBuilderPipelineClass2D()\r\n\r\nlocal mapSize = Vector2.New(100, 100)\r\npipeline.AddDevice(PerlinNoiseDevice(mapSize, 5034, 1000, Vector2.New(0.05, 0.05)))\r\npipeline.AddDevice(UniformZDevice(mapSize, 150))\r\npipeline.Remap({heightMap = \'input1\'})\r\n\r\n-- pipeline.AddDevice(FlatSurface2DDevice(100, 100, 0))\r\npipeline.AddDevice(PerlinNoiseDevice(mapSize, 5000, 1000, Vector2.New(0.05, 0.05)))\r\npipeline.AddDevice(PerlinNoiseDevice(mapSize, 5987, 300, Vector2.New(0.01, 0.01)))\r\npipeline.Remap({heightMap = \'input2\'})\r\n\r\npipeline.AddDevice(CombinerDevice())\r\npipeline.AddDevice(AvgBasedSmoothingDevice(1))\r\n-- pipeline.AddDevice(FlatSurfaceSmoothingFilterDevice(20))\r\npipeline.AddDevice(BasicTerrainBuilderDevice(terrainParent))\r\n\r\npipeline.Execute()\r\npipeline.ListPerformance()\r\n"
      }
      VirtualFolderPath: "temp"
    }
    Assets {
      Id: 2394074719941360336
      Name: "ScriptFolder"
      PlatformAssetType: 3
      TextAsset {
        Text: "local scriptsFolder = script\r\nlocal Imports = _G.Imports(scriptsFolder)\r\nImports.AddToPath(Imports[script.name])\r\n"
      }
      VirtualFolderPath: "Manager"
    }
    Assets {
      Id: 7638048984163506959
      Name: "Module manager LEAVE ON TOP!"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 15843999788333761405
          Objects {
            Id: 15843999788333761405
            Name: "Module manager LEAVE ON TOP!"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 18443153964109940849
            ChildIds: 10630627334119222682
            ChildIds: 14154213628789679330
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Module manager LEAVE ON TOP!"
            }
          }
          Objects {
            Id: 18443153964109940849
            Name: "README"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15843999788333761405
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2199742542750292755
              }
            }
          }
          Objects {
            Id: 10630627334119222682
            Name: "ModuleManagerClass"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15843999788333761405
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 13389117644191556253
              }
            }
          }
          Objects {
            Id: 14154213628789679330
            Name: "ModuleManagerInitializer"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15843999788333761405
            ChildIds: 7544596369200731252
            ChildIds: 9435291018768795153
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "ModuleManagerInitializer"
            }
          }
          Objects {
            Id: 7544596369200731252
            Name: "ModuleManagerInitializerScript"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14154213628789679330
            UnregisteredParameters {
              Overrides {
                Name: "cs:managerCoreObject"
                ObjectReference {
                  SubObjectId: 10630627334119222682
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 10244325090742440390
              }
            }
          }
          Objects {
            Id: 9435291018768795153
            Name: "ClientContext"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14154213628789679330
            ChildIds: 4233176209643493649
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
            }
          }
          Objects {
            Id: 4233176209643493649
            Name: "ModuleManagerInitializerScript"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9435291018768795153
            UnregisteredParameters {
              Overrides {
                Name: "cs:managerCoreObject"
                ObjectReference {
                  SubObjectId: 10630627334119222682
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 10244325090742440390
              }
            }
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      Marketplace {
        Description: "This is a module manager inspired by Bau\'s namespace manager. Allows you to import modules without using properties every time.\r\n-----------------\r\nChangelog:\r\nv1.0 plain module manager\r\nv1.1 added utility classes"
      }
      DirectlyPublished: true
    }
    Assets {
      Id: 10244325090742440390
      Name: "ModuleManagerInitializerScript"
      PlatformAssetType: 3
      TextAsset {
        Text: "local ImportManagerClass = require(script:GetCustomProperty(\'ImportManagerClass\'))\r\n_G.Imports = ImportManagerClass()\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:ImportManagerClass"
            AssetReference {
              Id: 13389117644191556253
            }
          }
          Overrides {
            Name: "cs:managerCoreObject"
            ObjectReference {
            }
          }
        }
      }
      VirtualFolderPath: "Manager"
    }
    Assets {
      Id: 13389117644191556253
      Name: "ModuleManagerClass"
      PlatformAssetType: 3
      TextAsset {
        Text: "local function ImportFileClass(coreObject)\r\n    if not coreObject then\r\n        return nil\r\n    end\r\n    local self = {\r\n        type = \'ImportFileClass\',\r\n        coreObject = coreObject,\r\n        children = {},\r\n        name = coreObject.name,\r\n        required = nil\r\n    }\r\n    for _, v in ipairs(self.coreObject:GetChildren()) do\r\n        self.children[v.name] = ImportFileClass(v)\r\n    end\r\n    function self.require()\r\n        if self.coreObject.type ~= \'Script\' then\r\n            error(\"You can\'t require non-scripts\")\r\n        end\r\n        -- FIXME: readable error if self reference doesn\'t exist\r\n        self.required = self.required or require(self.coreObject:GetCustomProperty(\'self\'))\r\n        return self.required\r\n    end\r\n    function self:__index(a)\r\n        if self.children[a] == nil then\r\n            return\r\n        end\r\n        return self.children[a]\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nfunction ModuleManagerClass(...)\r\n    local self = {\r\n        parents = {},\r\n        parentRootFileObjects = {},\r\n        path = {}\r\n    }\r\n    function self.AddToPath(fileName)\r\n        assert(\r\n            fileName.type == \'ImportFileClass\',\r\n            \'Invalid file name type \' .. fileName.type .. \' or non-existent script !!\'\r\n        )\r\n        self.path[fileName.coreObject.name] = fileName\r\n    end\r\n    function self:__tostring()\r\n        if Environment.IsServer() then\r\n            print(\'Parent folders:\')\r\n            for k, v in pairs(self.parents) do\r\n                print(k)\r\n            end\r\n            print(\'-------\')\r\n        end\r\n    end\r\n    function self:__call(...)\r\n        for _, parent in ipairs({...}) do\r\n            assert(Object.IsValid(parent) == true)\r\n            self.parents[parent.name] = parent\r\n        end\r\n        for name, parent in pairs(self.parents) do\r\n            if self.parentRootFileObjects[name] == nil then\r\n                self.parentRootFileObjects[name] = ImportFileClass(parent)\r\n            end\r\n        end\r\n        return self\r\n    end\r\n    function self:__index(a)\r\n        local res = self.parentRootFileObjects[a]\r\n        for _, v in pairs(self.path) do\r\n            if v[a] ~= nil then\r\n                assert(res == nil, \"There\'s multiple files in path with the same name of \" .. tostring(a))\r\n                res = v[a]\r\n            end\r\n        end\r\n        assert(res, \'Nothing with the name of \' .. a .. \' was found by module manager\')\r\n        return res\r\n    end\r\n    self = setmetatable(self, self)\r\n    self(...)\r\n    return self\r\nend\r\nreturn ModuleManagerClass\r\n"
      }
      VirtualFolderPath: "Manager"
    }
    Assets {
      Id: 2199742542750292755
      Name: "README"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[ README.lua !!\r\n1. Put \'Module manager LEAVE ON TOP!\' at the top of your hierarchy.\r\n\r\n2. Put \'ScriptFolder\' into hierarchy\r\n\r\n3. Put you scripts into the \'ScriptFolder\'\r\n\r\nI added \'Import Showcase Script\' to showcase how this works.(after 3.)\r\n\r\n4. Define a \'self\' asset property on your script that points to itself\r\n\r\n5. To require a file:\r\nlocal RequireExample = _G.Imports.ScriptName.require();\r\n\r\n]]"
      }
      VirtualFolderPath: "Manager"
    }
    Assets {
      Id: 3084018047747701294
      Name: "Library"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 13947849939794823213
          Objects {
            Id: 13947849939794823213
            Name: "Library"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 12585898241356728914
            ChildIds: 215510664278319802
            ChildIds: 12983369876096197350
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Library"
            }
          }
          Objects {
            Id: 12585898241356728914
            Name: "Library"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13947849939794823213
            ChildIds: 2576193408133478485
            ChildIds: 15305174889249002728
            ChildIds: 2151499200051853798
            ChildIds: 15578743045634390222
            ChildIds: 12364901478275426651
            UnregisteredParameters {
              Overrides {
                Name: "cs:self"
                AssetReference {
                  Id: 2394074719941360336
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2394074719941360336
              }
            }
          }
          Objects {
            Id: 2576193408133478485
            Name: "Utils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12585898241356728914
            ChildIds: 3585689377798636273
            ChildIds: 8806403705638410645
            ChildIds: 6555458331100432234
            ChildIds: 5866165192271227305
            ChildIds: 13918123495286390275
            ChildIds: 4951648758014939185
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Utils_1"
            }
          }
          Objects {
            Id: 3585689377798636273
            Name: "CoreObjectUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2576193408133478485
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1157754754195071624
              }
            }
          }
          Objects {
            Id: 8806403705638410645
            Name: "FunctionalUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2576193408133478485
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2894573475697960457
              }
            }
          }
          Objects {
            Id: 6555458331100432234
            Name: "TableUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2576193408133478485
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1518469903413645625
              }
            }
          }
          Objects {
            Id: 5866165192271227305
            Name: "JSON"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2576193408133478485
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 9963136647964533062
              }
            }
          }
          Objects {
            Id: 13918123495286390275
            Name: "KeyCodes"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2576193408133478485
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 5153807603410020566
              }
            }
          }
          Objects {
            Id: 4951648758014939185
            Name: "IdGenClass"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2576193408133478485
            UnregisteredParameters {
              Overrides {
                Name: "cs:self"
                AssetReference {
                  Id: 13595965561543294678
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 13595965561543294678
              }
            }
          }
          Objects {
            Id: 15305174889249002728
            Name: "Math"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12585898241356728914
            ChildIds: 17546773369391715811
            ChildIds: 10084674268542125842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Math_1"
            }
          }
          Objects {
            Id: 17546773369391715811
            Name: "TerrainClass"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15305174889249002728
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 3296650807390737022
              }
            }
          }
          Objects {
            Id: 10084674268542125842
            Name: "Noise"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15305174889249002728
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2651619979252803131
              }
            }
          }
          Objects {
            Id: 2151499200051853798
            Name: "Tests"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12585898241356728914
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 13897313495961290138
              }
            }
          }
          Objects {
            Id: 15578743045634390222
            Name: "Procedural"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12585898241356728914
            ChildIds: 6386780660800616518
            ChildIds: 12411916480163894522
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Procedural"
            }
          }
          Objects {
            Id: 6386780660800616518
            Name: "TerrainBuilderPipelineClass2D"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15578743045634390222
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 11090181159666109438
              }
            }
          }
          Objects {
            Id: 12411916480163894522
            Name: "Devices"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15578743045634390222
            ChildIds: 14528813829197176015
            ChildIds: 14948237714115578569
            ChildIds: 633432722523824820
            ChildIds: 13461236099660601714
            ChildIds: 18015735832684453212
            ChildIds: 3543680060976191709
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Devices"
            }
          }
          Objects {
            Id: 14528813829197176015
            Name: "UniformZDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12411916480163894522
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6941183492192852755
              }
            }
          }
          Objects {
            Id: 14948237714115578569
            Name: "PerlinNoiseDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12411916480163894522
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 9694963515334186802
              }
            }
          }
          Objects {
            Id: 633432722523824820
            Name: "GlaciarizerDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12411916480163894522
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6224569963153153531
              }
            }
          }
          Objects {
            Id: 13461236099660601714
            Name: "BasicTerrainBuilderDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12411916480163894522
            UnregisteredParameters {
              Overrides {
                Name: "cs:cube"
                AssetReference {
                  Id: 5521646414114951371
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 11374823075921796682
              }
            }
          }
          Objects {
            Id: 18015735832684453212
            Name: "CombinerDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12411916480163894522
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 16998235696422759417
              }
            }
          }
          Objects {
            Id: 3543680060976191709
            Name: "AvgBasedSmoothingDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12411916480163894522
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 11987746568227697410
              }
            }
          }
          Objects {
            Id: 12364901478275426651
            Name: "Coroutines"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12585898241356728914
            ChildIds: 3635414212865754629
            ChildIds: 12968157827814693886
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Coroutines_1"
            }
          }
          Objects {
            Id: 3635414212865754629
            Name: "ProtectedCoroutine"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12364901478275426651
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 3805377299843485219
              }
            }
          }
          Objects {
            Id: 12968157827814693886
            Name: "AsyncOS"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12364901478275426651
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6773622399723789186
              }
            }
          }
          Objects {
            Id: 215510664278319802
            Name: "TestCases"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13947849939794823213
            ChildIds: 12550669380677451101
            ChildIds: 286637224015827031
            ChildIds: 11136380106570024793
            ChildIds: 13226187077023130081
            ChildIds: 2479389667911318183
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "TestCases"
            }
          }
          Objects {
            Id: 12550669380677451101
            Name: "TestCoreObjectUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 215510664278319802
            ChildIds: 408333840617547389
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 10367504187709301285
              }
            }
          }
          Objects {
            Id: 408333840617547389
            Name: "Ability"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12550669380677451101
            ChildIds: 3359879514562802596
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Ability {
              IsEnabled: true
              CastPhaseSettings {
                Duration: 0.15
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:aim"
                }
              }
              ExecutePhaseSettings {
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:aim"
                }
              }
              RecoveryPhaseSettings {
                Duration: 0.1
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:none"
                }
              }
              CooldownPhaseSettings {
                Duration: 3
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:none"
                }
              }
              Animation: "1hand_melee_slash_left"
              KeyBinding_v2 {
                Value: "mc:egameaction:primaryaction"
              }
            }
          }
          Objects {
            Id: 3359879514562802596
            Name: "Ability"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 408333840617547389
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Ability {
              IsEnabled: true
              CastPhaseSettings {
                Duration: 0.15
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:aim"
                }
              }
              ExecutePhaseSettings {
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:aim"
                }
              }
              RecoveryPhaseSettings {
                Duration: 0.1
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:none"
                }
              }
              CooldownPhaseSettings {
                Duration: 3
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:none"
                }
              }
              Animation: "1hand_melee_slash_left"
              KeyBinding_v2 {
                Value: "mc:egameaction:primaryaction"
              }
            }
          }
          Objects {
            Id: 286637224015827031
            Name: "TestTableUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 215510664278319802
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 12107956134505979727
              }
            }
          }
          Objects {
            Id: 11136380106570024793
            Name: "TestFunctionalUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 215510664278319802
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 4666698430106189318
              }
            }
          }
          Objects {
            Id: 13226187077023130081
            Name: "TestProtectedCoroutine"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 215510664278319802
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6319812083547444735
              }
            }
          }
          Objects {
            Id: 2479389667911318183
            Name: "TestRunner"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 215510664278319802
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 9005593744338386053
              }
            }
          }
          Objects {
            Id: 12983369876096197350
            Name: "ClientContext"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13947849939794823213
            ChildIds: 3397754014346150565
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
            }
          }
          Objects {
            Id: 3397754014346150565
            Name: "Library"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12983369876096197350
            ChildIds: 17037931853476942676
            ChildIds: 9705017331873264098
            ChildIds: 6092634463256539957
            ChildIds: 12694203301689570482
            ChildIds: 13490492815044097198
            UnregisteredParameters {
              Overrides {
                Name: "cs:self"
                AssetReference {
                  Id: 2394074719941360336
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2394074719941360336
              }
            }
          }
          Objects {
            Id: 17037931853476942676
            Name: "Utils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3397754014346150565
            ChildIds: 716078851377722548
            ChildIds: 4500636957144470103
            ChildIds: 11633562201895819583
            ChildIds: 17013865299326947871
            ChildIds: 16019965760006909752
            ChildIds: 11870645995571338809
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Utils_1"
            }
          }
          Objects {
            Id: 716078851377722548
            Name: "CoreObjectUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17037931853476942676
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1157754754195071624
              }
            }
          }
          Objects {
            Id: 4500636957144470103
            Name: "FunctionalUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17037931853476942676
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2894573475697960457
              }
            }
          }
          Objects {
            Id: 11633562201895819583
            Name: "TableUtils"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17037931853476942676
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1518469903413645625
              }
            }
          }
          Objects {
            Id: 17013865299326947871
            Name: "JSON"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17037931853476942676
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 9963136647964533062
              }
            }
          }
          Objects {
            Id: 16019965760006909752
            Name: "KeyCodes"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17037931853476942676
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 5153807603410020566
              }
            }
          }
          Objects {
            Id: 11870645995571338809
            Name: "IdGenClass"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17037931853476942676
            UnregisteredParameters {
              Overrides {
                Name: "cs:self"
                AssetReference {
                  Id: 13595965561543294678
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 13595965561543294678
              }
            }
          }
          Objects {
            Id: 9705017331873264098
            Name: "Math"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3397754014346150565
            ChildIds: 667841365303892735
            ChildIds: 4100230484103795518
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Math_1"
            }
          }
          Objects {
            Id: 667841365303892735
            Name: "TerrainClass"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9705017331873264098
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 3296650807390737022
              }
            }
          }
          Objects {
            Id: 4100230484103795518
            Name: "Noise"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9705017331873264098
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 2651619979252803131
              }
            }
          }
          Objects {
            Id: 6092634463256539957
            Name: "Tests"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3397754014346150565
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 13897313495961290138
              }
            }
          }
          Objects {
            Id: 12694203301689570482
            Name: "Procedural"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3397754014346150565
            ChildIds: 11482100025159979797
            ChildIds: 3549887704729762842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Procedural"
            }
          }
          Objects {
            Id: 11482100025159979797
            Name: "TerrainBuilderPipelineClass2D"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12694203301689570482
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 11090181159666109438
              }
            }
          }
          Objects {
            Id: 3549887704729762842
            Name: "Devices"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12694203301689570482
            ChildIds: 2603458262382623850
            ChildIds: 12807649918636940906
            ChildIds: 10844816393298559675
            ChildIds: 12906198658864753735
            ChildIds: 15624055009070490800
            ChildIds: 17267543760372461832
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Devices"
            }
          }
          Objects {
            Id: 2603458262382623850
            Name: "UniformZDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3549887704729762842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6941183492192852755
              }
            }
          }
          Objects {
            Id: 12807649918636940906
            Name: "PerlinNoiseDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3549887704729762842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 9694963515334186802
              }
            }
          }
          Objects {
            Id: 10844816393298559675
            Name: "GlaciarizerDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3549887704729762842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6224569963153153531
              }
            }
          }
          Objects {
            Id: 12906198658864753735
            Name: "BasicTerrainBuilderDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3549887704729762842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 11374823075921796682
              }
            }
          }
          Objects {
            Id: 15624055009070490800
            Name: "CombinerDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3549887704729762842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 16998235696422759417
              }
            }
          }
          Objects {
            Id: 17267543760372461832
            Name: "AvgBasedSmoothingDevice"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3549887704729762842
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 11987746568227697410
              }
            }
          }
          Objects {
            Id: 13490492815044097198
            Name: "Coroutines"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3397754014346150565
            ChildIds: 1991302472494728767
            ChildIds: 1034400446025081644
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Coroutines_1"
            }
          }
          Objects {
            Id: 1991302472494728767
            Name: "ProtectedCoroutine"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13490492815044097198
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 3805377299843485219
              }
            }
          }
          Objects {
            Id: 1034400446025081644
            Name: "AsyncOS"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13490492815044097198
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6773622399723789186
              }
            }
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      Marketplace {
        Description: "This is a module manager inspired by Bau\'s namespace manager. Allows you to import modules without using properties every time.\r\n-----------------\r\nChangelog:\r\nv1.0 plain module manager\r\nv1.1 added utility classes\r\nv1.2 added procedural generation\r\nv1.3 added asynchronous programming module"
      }
      DirectlyPublished: true
    }
    Assets {
      Id: 9005593744338386053
      Name: "TestRunner"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal Tests = Imports.Tests.require()\r\nTask.Wait()\r\nTask.Spawn(Tests.RunAllTests)\r\n"
      }
    }
    Assets {
      Id: 6319812083547444735
      Name: "TestProtectedCoroutine"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal Tests = Imports.Tests.require()\r\nlocal ProtectedCoroutine = Imports.Coroutines.ProtectedCoroutine.require()\r\n-- local TableUtils = Imports.Utils.TableUtils.require()\r\n\r\nlocal i = 0\r\nfunction TestedFunc(...)\r\n    local params = {...}\r\n    local ret2 = params[1]\r\n    if i == 0 then\r\n        ret2 = ProtectedCoroutine.yield(6)\r\n    end\r\n    while i < 3 do\r\n        i = i + 1\r\n        error()\r\n    end\r\n    assert(ret2)\r\n    return ret2 * 2\r\nend\r\nTests.RunTest(\r\n    \'Coroutines.ProtectedCoroutine\',\r\n    function()\r\n        local pc = ProtectedCoroutine.create(TestedFunc)\r\n        local ret1, ret2 = ProtectedCoroutine.resume(pc, 6)\r\n        assert(ret2)\r\n        assert(\r\n            ret2 == 6 and ret1 == true,\r\n            \'ret1 is \' .. tostring(ret1) .. \', true expected;\\tret2 is \' .. tostring(ret2) .. \', 12 expected\'\r\n        )\r\n        ProtectedCoroutine.resumeLooped(pc, ret2)\r\n        ProtectedCoroutine.resume(pc, ret2)\r\n        ProtectedCoroutine.resume(pc, ret2)\r\n        local newRet1, newRet2 = ProtectedCoroutine.resume(pc, ret2)\r\n        assert(\r\n            newRet2 == 12 and newRet1 == true,\r\n            \'newRet1 is \' ..\r\n                tostring(newRet1) .. \', true expected;\\tnewRet2 is \' .. tostring(newRet2) .. \', 12 expected\'\r\n        )\r\n    end\r\n)\r\n"
      }
    }
    Assets {
      Id: 4666698430106189318
      Name: "TestFunctionalUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G[\'Imports\']\r\nlocal Tests = Imports.Tests.require()\r\nlocal FunctionalUtils = Imports.Utils.FunctionalUtils.require()\r\nlocal JSON = Imports.Utils.JSON.require()\r\n\r\nTests.RunTest(\r\n    \'FunctionalUtils.Map\',\r\n    function()\r\n        local table = {0, 1, 2, 3, 4, 5}\r\n        local function func(_, _, elem)\r\n            return elem\r\n        end\r\n        FunctionalUtils.Map(table, func)\r\n        return true\r\n    end\r\n)\r\nTests.RunTest(\r\n    \'FunctionalUtils.Filter\',\r\n    function()\r\n        local table = {0, 1, 2, 3, 4, 5}\r\n        local function func(_, _, elem)\r\n            if elem % 2 == 0 then\r\n                return true\r\n            else\r\n                return false\r\n            end\r\n        end\r\n        local res = FunctionalUtils.Filter(table, func)\r\n        JSON.Stringify(res)\r\n        return true\r\n    end\r\n)\r\nTests.RunTest(\r\n    \'FunctionalUtils.Reduce\',\r\n    function()\r\n        local table = {0, 1, 2, 3, 4, 5}\r\n        local function func(_, _, elem, cumulativeSum)\r\n            return elem + cumulativeSum\r\n        end\r\n        local res = FunctionalUtils.Reduce(table, func)\r\n        JSON.Stringify(res)\r\n        return true\r\n    end\r\n)\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 4666698430106189318
            }
          }
        }
      }
      VirtualFolderPath: "Tests"
    }
    Assets {
      Id: 12107956134505979727
      Name: "TestTableUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal TestFramework = Imports.Tests.require()\r\nlocal TableUtils = require(script:GetCustomProperty(\'TableUtils\')) or error()\r\n\r\nTestFramework.RunTest(\r\n    \'TableUtils.Keys\',\r\n    function()\r\n        local res = {hello = 1, 2, 3, 4, bye = 5}\r\n        res = TableUtils.Keys(res)\r\n        assert(res)\r\n        for k, v in pairs(res) do\r\n            assert(v)\r\n        end\r\n        return true\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.Join\',\r\n    function()\r\n        local a, b = {bye = 156, 1, 2, 3, 4, 5}, {4, 5, 6, 7, hello = 9}\r\n        local res = TableUtils.Join(a, b)\r\n        for k, v in pairs(res) do\r\n            assert(k ~= nil)\r\n            assert(v ~= nil)\r\n        end\r\n        return true\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.DeepCompare.EmptyTables\',\r\n    function()\r\n        local a = {}\r\n        local b = {}\r\n        local res = TableUtils.DeepCompare(a, b)\r\n        return res\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.DeepCompare.RealUsage\',\r\n    function()\r\n        local a = {5, hello = 7, {{7}}}\r\n        local b = {5, hello = 7, {{7}}}\r\n        local res = TableUtils.DeepCompare(a, b)\r\n        return res\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.Append & ComponentWiseCompare\',\r\n    function()\r\n        local a = {1, 3, 5, 7, 9}\r\n        local b = {2, 4, 6, 8, 10}\r\n        local res = TableUtils.Append(a, b)\r\n        if TableUtils.ComponentWiseCompare(res, {1, 3, 5, 7, 9, 2, 4, 6, 8, 10}) then\r\n            return true\r\n        else\r\n            return false\r\n        end\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.ReverseTable\',\r\n    function()\r\n        local table = {\'hello\', \'bye\', 8}\r\n        assert(table)\r\n        local res = TableUtils.ReverseTable(table)\r\n        for k, v in pairs(res) do\r\n            if table[v] ~= k then\r\n                return \'TableUtils.ReverseTable\', false\r\n            end\r\n        end\r\n        return true\r\n    end\r\n)\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 12107956134505979727
            }
          }
          Overrides {
            Name: "cs:TableUtils"
            AssetReference {
              Id: 1518469903413645625
            }
          }
        }
      }
      VirtualFolderPath: "Tests"
    }
    Assets {
      Id: 1518469903413645625
      Name: "TableUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[ TableUtils.lua\r\n    ## TableUtils.PrintTable(table)\r\n        Prints a table in an elegant format.\r\n    return: nil\r\n    ## TableUtils.Keys(table)\r\n        Returns a table of keys of the argument.\r\n        table: table\r\n    return: table\r\n    ## TableUtils.Join(a, b)\r\n        Returns a table with all entries of both tables. Keys contained in both have the value of a.\r\n        a: table\r\n        b: table\r\n    return: table\r\n    ## TableUtils.DeepCompare(a, b)\r\n        Compares a and b recursively for any \'table\' values.\r\n        a: table\r\n        b: table\r\n    return: boolean\r\n    ## TableUtils.Append(a,b)\r\n        Returns b appended to the end of a. Doesn\'t mutate a and b.\r\n        a: table\r\n        b:table\r\n    return: table\r\n    ## TableUtils.ReverseTable(table)\r\n        Returns a table with reversed table key and value pairs.\r\n        table: table\r\n    return: table\r\n]]\r\nTableUtils = {}\r\nfunction TableUtils.PrintTable(table)\r\n    if not table then\r\n        return error(\'Table is nil!\', 2)\r\n    end\r\n    if type(table) ~= \'table\' then\r\n        error(\'This is not a table\', 2)\r\n    end\r\n    print(\'contents of a table:\')\r\n    print(\'-----------\')\r\n    for k, v in pairs(table) do\r\n        print(tostring(k) .. string.rep(\' \', math.max(50 - #k, 0)) .. \':\\t\' .. tostring(v))\r\n    end\r\n    print(\'-----------\')\r\nend\r\nfunction TableUtils.Keys(table)\r\n    assert(type(table) == \'table\')\r\n    local res = {}\r\n    for k in pairs(table) do\r\n        res[#res + 1] = k\r\n    end\r\n    return res\r\nend\r\nfunction TableUtils.Join(a, b)\r\n    assert(type(a) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    assert(type(b) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    local res = {}\r\n    for k, v in pairs(a) do\r\n        res[k] = v\r\n    end\r\n    for k, v in pairs(b) do\r\n        -- if res[k] then error(tostring(k)..\" is contained in both joined tables\")end\r\n        res[k] = res[k] or v\r\n    end\r\n    return res\r\nend\r\n\r\nfunction TableUtils.DeepCompare(a, b)\r\n    assert(type(a) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    assert(type(b) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    local joined = TableUtils.Join(a, b)\r\n    for k in pairs(joined) do\r\n        if type(a[k]) ~= type(b[k]) then\r\n            return false\r\n        end\r\n        if type(a[k]) == \'table\' then\r\n            if TableUtils.DeepCompare(a[k], b[k]) == false then\r\n                return false\r\n            end\r\n        elseif a[k] ~= b[k] then\r\n            return false\r\n        end\r\n    end\r\n    return true\r\nend\r\nfunction TableUtils.Append(a, b)\r\n    assert(type(a) == \'table\')\r\n    assert(type(b) == \'table\')\r\n    -- TODO: docs\r\n    local res = {}\r\n    for i = 1, #a do\r\n        res[i] = a[i]\r\n    end\r\n    for i = 1, #b do\r\n        res[i + #a] = b[i]\r\n    end\r\n    return res\r\nend\r\nfunction TableUtils.ComponentWiseCompare(a, b)\r\n    assert(type(a) == \'table\')\r\n    assert(type(b) == \'table\')\r\n    local res = TableUtils.Join(a, b)\r\n    for k in pairs(res) do\r\n        if a[k] ~= b[k] then\r\n            return false\r\n        end\r\n    end\r\n    return true\r\nend\r\nfunction TableUtils.ReverseTable(table)\r\n    assert(type(table) == \'table\')\r\n    local res = {}\r\n    for k, v in pairs(table) do\r\n        assert(\r\n            type(v) == \'string\' or type(v) == \'number\',\r\n            \'Value of type \' .. tostring(type(v)) .. \" can\'t be used as a table key\"\r\n        )\r\n        res[v] = k\r\n    end\r\n    return res\r\nend\r\nreturn TableUtils\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 1518469903413645625
            }
          }
        }
      }
      VirtualFolderPath: "Utility"
    }
    Assets {
      Id: 10367504187709301285
      Name: "TestCoreObjectUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal Tests = Imports.Tests.require()\r\nlocal CoreObjectUtils = Imports.Utils.CoreObjectUtils.require()\r\n-- assert(CoreObjectUtils ~=nil)\r\n\r\nTests.RunTest(\r\n    \'CoreObjectUtils.GetDescendantTree\',\r\n    function()\r\n        local descendants = CoreObjectUtils.GetDescendantsTree(script)\r\n        assert(type(descendants) == \'table\')\r\n        assert(#descendants == 1)\r\n        assert(descendants[1].object ~= nil and descendants[1].children ~= nil)\r\n        assert(#descendants[1].children == 1)\r\n        -- TODO: do something with the descendant\r\n        return true\r\n    end\r\n)\r\n"
      }
      VirtualFolderPath: "Tests"
    }
    Assets {
      Id: 6773622399723789186
      Name: "AsyncOS"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal IdGenClass = Imports.Utils.IdGenClass.require()\r\n-- Scheduler class\r\nfunction AsyncOSScheduler(threadCount)\r\n    -- returned object:\r\n    local self = {\r\n        type = \'AsyncOSScheduler\',\r\n        threadCount = threadCount,\r\n        threads = {},\r\n        yielded = {},\r\n        tasks = {}\r\n    }\r\n\r\n    -- functions:\r\n    function self._ThreadLoop()\r\n        for id, task in pairs(self.tasks) do\r\n            if not task.yielded and not task.executingThread then\r\n                task.executingThread = Task.GetCurrent().id\r\n                task.yielded = task.func()\r\n                self.yielded[id] = task\r\n                self.tasks[id] = nil\r\n                return\r\n            end\r\n        end\r\n    end\r\n    function self._SpawnThread()\r\n        local thread =\r\n            Task.Spawn(\r\n            function()\r\n                repeat\r\n                    self._ThreadLoop()\r\n                    Task.Wait()\r\n                until false\r\n            end\r\n        )\r\n        return thread\r\n    end\r\n\r\n    -- setup:\r\n    for _ = 1, self.threadCount do\r\n        local thread = self._SpawnThread()\r\n        self.threads[thread.id] = thread\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\n\r\n-- API\r\nlocal AsyncOS = {\r\n    scheduler = AsyncOSScheduler(12),\r\n    IdGenerator = IdGenClass()\r\n}\r\nfunction AsyncOS.async(func)\r\n    local task = {\r\n        id = AsyncOS.IdGenerator(),\r\n        type = \'AsyncTask\',\r\n        yielded = nil,\r\n        executingThread = nil,\r\n        func = func\r\n    }\r\n    AsyncOS.scheduler.tasks[task.id] = task\r\n    return task.id\r\nend\r\nfunction AsyncOS.await(taskId)\r\n    if not taskId then\r\n        error(\'taskId is invalid\', 2)\r\n    end\r\n    local task = AsyncOS.scheduler.yielded[taskId]\r\n    while not task do\r\n        Task.Wait()\r\n        task = AsyncOS.scheduler.yielded[taskId]\r\n    end\r\n    AsyncOS.scheduler.yielded[taskId] = nil\r\n    return task.yielded\r\nend\r\nreturn setmetatable(AsyncOS, AsyncOS)\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 6773622399723789186
            }
          }
        }
      }
    }
    Assets {
      Id: 3805377299843485219
      Name: "ProtectedCoroutine"
      PlatformAssetType: 3
      TextAsset {
        Text: "-- SUPER DUPER IMPORTANT: !!!!!\r\n-- FIXME: I have encountered issues combining this with the AsyncOS. I recommend AsyncOS only instead.\r\nfunction ProtectedCoroutineClass(func)\r\n    local self = {\r\n        type = \'ProtectedCoroutineClass\',\r\n        func = func,\r\n        coroutine = coroutine.create(func),\r\n        lastParams = nil\r\n    }\r\n    return setmetatable(self, self)\r\nend\r\nlocal ProtectedCoroutine = {}\r\nfunction ProtectedCoroutine.create(func)\r\n    return ProtectedCoroutineClass(func)\r\nend\r\nfunction ProtectedCoroutine.resume(cr, ...)\r\n    local params = ...\r\n    assert(cr)\r\n    local type = cr.type or type(coroutine)\r\n    assert(\r\n        cr.type == \'ProtectedCoroutineClass\',\r\n        \'Type \' .. tostring(type) .. \' is not a valid ProtectedCoroutineClass instance\'\r\n    )\r\n    cr.lastParams = cr.lastParams or params\r\n    local success, i = coroutine.resume(cr.coroutine, params)\r\n    if success == true then\r\n        -- TODO: consider removing .lastParams\r\n        cr.lastParams = i\r\n    elseif i == \'Instruction limit exceeded. Your code may be in an infinite loop.\' then\r\n        cr.coroutine = coroutine.create(cr.func)\r\n        Task.Wait()\r\n        return ProtectedCoroutine.resume(cr)\r\n    else\r\n        cr.coroutine = coroutine.create(cr.func)\r\n        return success, i\r\n    end\r\n    return success, i\r\nend\r\nfunction ProtectedCoroutine.resumeLooped(cr, ...)\r\n    assert(cr)\r\n    assert(cr.type == \'ProtectedCoroutineClass\')\r\n    local success, ret\r\n    repeat\r\n        success, ret = ProtectedCoroutine.resume(cr, ...)\r\n    until success == false or ProtectedCoroutine.status(cr) == \'dead\'\r\n    return success, ret\r\nend\r\nfunction ProtectedCoroutine.yield(ret)\r\n    coroutine.yield(ret)\r\nend\r\nfunction ProtectedCoroutine.status(cr)\r\n    assert(type(cr) == \'table\')\r\n    assert(cr.type == \'ProtectedCoroutineClass\')\r\n    return coroutine.status(cr.coroutine)\r\nend\r\nreturn setmetatable(ProtectedCoroutine, ProtectedCoroutine)\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 3805377299843485219
            }
          }
        }
      }
    }
    Assets {
      Id: 11987746568227697410
      Name: "AvgBasedSmoothingDevice"
      PlatformAssetType: 3
      TextAsset {
        Text: "function AvgBasedSmoothingDevice(neighbourCount)\r\n    local self = {\r\n        type = \'AvgBasedSmoothingDevice\',\r\n        neighbourCount = neighbourCount\r\n    }\r\n    -- return: table; {height, weight, {x, y}, {x, y}, ...}\r\n    -- DEBUG:\r\n    local function RecurseSmooth(table, startX, startY, returnCache)\r\n        for x = startX - 1, startX + 1 do\r\n            for y = startY - 1, startY + 1 do\r\n                if math.abs(table[startY][startX] - table[y][x]) < self.tolerance then\r\n                    local next = RecurseSmooth(table, x, y, returnCache)\r\n                end\r\n            end\r\n        end\r\n    end\r\n    function self.__call(_, options)\r\n        assert(\r\n            options,\r\n            [[You\'ve failed to pass options to BasicTerrainBuilderDevice! Mandatory options:\r\n            heighMap: table]]\r\n        )\r\n        assert(options.heightMap, \'There was no heightMap supplied to BasicTerrainBuilderDevice\')\r\n        assert(type(options.heightMap) == \'table\', \"You\'ve passed invalid heightMap to BasicTerrainBuilderDevice\")\r\n        local MAX_ITERATIONS_PER_TICK = 20000\r\n        local iters = 0\r\n        local oldMap = options.heightMap\r\n        local width = #oldMap[1]\r\n        local height = #oldMap\r\n        local newMap = {}\r\n        local numOfAvgd = 0\r\n        local avgDiff = 0\r\n        for i = 1, height do\r\n            newMap[i] = {}\r\n            for ii = 1, width do\r\n                newMap[i][ii] = oldMap[i][ii]\r\n                if\r\n                    ii <= width - self.neighbourCount and ii > self.neighbourCount and i <= height - self.neighbourCount and\r\n                        i > self.neighbourCount\r\n                 then\r\n                    numOfAvgd = numOfAvgd + 1\r\n                    local avg = 0\r\n                    for yy = i - self.neighbourCount, i + self.neighbourCount do\r\n                        for xx = ii - self.neighbourCount, ii + self.neighbourCount do\r\n                            iters = iters + 1\r\n                            if iters % MAX_ITERATIONS_PER_TICK == 0 then\r\n                                Task.Wait()\r\n                            end\r\n                            avg = avg + oldMap[yy][xx]\r\n                        end\r\n                    end\r\n                    avgDiff = (avgDiff * (numOfAvgd - 1) + math.abs(newMap[i][ii] - (avg / 9))) / numOfAvgd\r\n                    newMap[i][ii] = avg / (self.neighbourCount * 2 + 1) ^ 2\r\n                end\r\n            end\r\n        end\r\n        -- print(numOfAvgd)\r\n        -- print(avgDiff)\r\n        local ret = options\r\n        ret.heightMap = newMap\r\n        return ret\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn AvgBasedSmoothingDevice\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 11987746568227697410
            }
          }
        }
      }
      VirtualFolderPath: "Procedural"
      VirtualFolderPath: "Devices"
    }
    Assets {
      Id: 16998235696422759417
      Name: "CombinerDevice"
      PlatformAssetType: 3
      TextAsset {
        Text: "function CombinerDevice()\r\n    local self = {\r\n        type = \'CombinerDevice\',\r\n        mode = \'Add\',\r\n        inputKeys = {\'input1\', \'input2\'}\r\n    }\r\n    local function ValidateInputs(options)\r\n        assert(options)\r\n        assert(options.input1)\r\n        assert(options.input2)\r\n        assert(#options.input1 == #options.input2)\r\n        assert(#options.input1[1] == #options.input2[1])\r\n    end\r\n    local function ClearInputKeys(table)\r\n        for i = 1, #table do\r\n            table[self.inputKeys[i]] = nil\r\n        end\r\n    end\r\n    function self.__call(_, options)\r\n        ValidateInputs(options)\r\n        local heightMap = {}\r\n        if self.mode == \'Add\' then\r\n            local width, height = #options.input1[1], #options.input1\r\n            for i = 1, height do\r\n                heightMap[i] = {}\r\n                for ii = 1, width do\r\n                    heightMap[i][ii] = options.input1[i][ii] + options.input2[i][ii]\r\n                end\r\n            end\r\n        end\r\n        local ret = options\r\n        ret.heightMap = heightMap\r\n        ClearInputKeys(ret)\r\n        return ret\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn CombinerDevice\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 16998235696422759417
            }
          }
        }
      }
      VirtualFolderPath: "Procedural"
      VirtualFolderPath: "Devices"
    }
    Assets {
      Id: 5521646414114951371
      Name: "TerrainCube"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 10750433205403374661
          Objects {
            Id: 10750433205403374661
            Name: "TerrainCube"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3229880396597548339
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 12104061898319540445
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            CoreMesh {
              MeshAsset {
                Id: 14294653498337044303
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableDistanceFieldLighting: true
              DisableCastShadows: true
              DisableReceiveDecals: true
              DisableAngularMotionBlur: true
              StaticMesh {
                Physics {
                  Mass: 100
                  LinearDamping: 0.01
                }
                BoundsScale: 1
              }
            }
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
    }
    Assets {
      Id: 11374823075921796682
      Name: "BasicTerrainBuilderDevice"
      PlatformAssetType: 3
      TextAsset {
        Text: "local CUBE = script:GetCustomProperty(\'cube\')\r\nfunction BasicTerrainBuilderDevice(spawnedObjectsParent, scale)\r\n    assert(not scale or type(scale) == \'number\')\r\n    local self = {\r\n        type = \'BasicTerrainBuilderDevice\',\r\n        spawnedObjectsParent = spawnedObjectsParent,\r\n        scale = scale or 1\r\n    }\r\n    function self.__call(_, options)\r\n        -- input validation\r\n        assert(\r\n            options,\r\n            [[You\'ve failed to pass options to BasicTerrainBuilderDevice! Mandatory options:\r\n            heighMap: table]]\r\n        )\r\n        assert(options.heightMap, \'There was no heightMap supplied to BasicTerrainBuilderDevice\')\r\n        if #options.heightMap == 0 then\r\n            return {heightMap = {}}\r\n        end\r\n        assert(type(options.heightMap) == \'table\', \"You\'ve passed invalid heightMap to BasicTerrainBuilderDevice\")\r\n        options.position = options.position or Vector3.ZERO\r\n        assert(\r\n            type(options.position) == \'userdata\' and options.position.type == \'Vector3\',\r\n            \"You\'ve passed invalid position argument to BasicTerrainBuilderDevice\"\r\n        )\r\n\r\n        -- actual building\r\n        local SPACING = self.scale * 100\r\n        local width = #options.heightMap[1]\r\n        local height = #options.heightMap\r\n\r\n        local heightMap = options.heightMap -- is an optimization\r\n        local iters = 0 -- to avoid instruction limit errors\r\n        local MAX_ITERS_PER_TICK = 10000\r\n        local spawnParams = {}\r\n        for i = 1, height do\r\n            spawnParams[i] = {}\r\n            for ii = 1, width do\r\n                iters = iters + 1\r\n                if iters % MAX_ITERS_PER_TICK == 0 then\r\n                    Task.Wait()\r\n                end\r\n                local zOffset = heightMap[i][ii]\r\n                local position = Vector3.New(ii * SPACING, i * SPACING, zOffset)\r\n                spawnParams[i][ii] = {\r\n                    parent = self.spawnedObjectsParent,\r\n                    position = position + options.position,\r\n                    scale = Vector3.ONE * self.scale\r\n                }\r\n            end\r\n        end\r\n        local correctedSpawnParams = {}\r\n        correctedSpawnParams[1] = {}\r\n        correctedSpawnParams[height] = {}\r\n        iters = iters % MAX_ITERS_PER_TICK\r\n        MAX_ITERS_PER_TICK = 8000\r\n        for i = 1, height do\r\n            correctedSpawnParams[i] = {}\r\n            for ii = 1, width do\r\n                iters = iters + 1\r\n                if iters % MAX_ITERS_PER_TICK == 0 then\r\n                    Task.Wait()\r\n                end\r\n                local neighbours = {}\r\n                neighbours.u = spawnParams[i][ii + 1]\r\n                neighbours.d = spawnParams[i][ii - 1]\r\n                if spawnParams[i + 1] then\r\n                    neighbours.r = spawnParams[i + 1][ii]\r\n                end\r\n                if spawnParams[i - 1] then\r\n                    neighbours.l = spawnParams[i - 1][ii]\r\n                end\r\n                local offsets = {}\r\n                for k, v in pairs(neighbours) do\r\n                    offsets[k] = spawnParams[i][ii].position.z - v.position.z\r\n                end\r\n                -- local offsets = {\r\n                --     u = spawnParams[i][ii].position.z - spawnParams[i][ii + 1].position.z,\r\n                --     d = spawnParams[i][ii].position.z - spawnParams[i][ii - 1].position.z,\r\n                --     r = spawnParams[i][ii].position.z - spawnParams[i + 1][ii].position.z,\r\n                --     l = spawnParams[i][ii].position.z - spawnParams[i - 1][ii].position.z\r\n                -- }\r\n                local maxOffset = 0\r\n                for _, v in pairs(offsets) do\r\n                    assert(v)\r\n                    if v > maxOffset then\r\n                        maxOffset = v\r\n                    end\r\n                end\r\n                assert(maxOffset and type(maxOffset) == \'number\', type(maxOffset))\r\n                if maxOffset > SPACING then\r\n                    correctedSpawnParams[i][ii] = {\r\n                        position = spawnParams[i][ii].position,\r\n                        scale = spawnParams[i][ii].scale,\r\n                        parent = spawnParams[i][ii].parent\r\n                    }\r\n                    correctedSpawnParams[i][ii].position.z =\r\n                        correctedSpawnParams[i][ii].position.z - (maxOffset - SPACING) / 2\r\n                    correctedSpawnParams[i][ii].scale.z =\r\n                        correctedSpawnParams[i][ii].scale.z + math.max(0, (maxOffset - SPACING) / SPACING)\r\n                end\r\n            end\r\n        end\r\n        iters = iters % MAX_ITERS_PER_TICK\r\n        MAX_ITERS_PER_TICK = 100\r\n        for i = 1, height do\r\n            for ii = 1, width do\r\n                iters = iters + 1\r\n                if iters % MAX_ITERS_PER_TICK == 0 then\r\n                    -- DEBUG:\r\n                    if iters > 10000 then\r\n                        MAX_ITERS_PER_TICK = 40\r\n                    end\r\n                    Task.Wait()\r\n                end\r\n                local thisParams = correctedSpawnParams[i][ii] or spawnParams[i][ii]\r\n                World.SpawnAsset(CUBE, thisParams)\r\n            end\r\n        end\r\n        return\r\n    end\r\n    function self.__tostring()\r\n        return self.type\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn BasicTerrainBuilderDevice\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 11374823075921796682
            }
          }
          Overrides {
            Name: "cs:cube"
            AssetReference {
              Id: 5521646414114951371
            }
          }
        }
      }
      VirtualFolderPath: "Procedural"
      VirtualFolderPath: "Devices"
    }
    Assets {
      Id: 6224569963153153531
      Name: "GlaciarizerDevice"
      PlatformAssetType: 3
      TextAsset {
        Text: "function FlatSurfaceSmoothingFilterDevice(hDelta)\r\n    local self = {\r\n        type = \'FlatSurfaceSmoothingFilterDevice\',\r\n        hDelta = hDelta\r\n    }\r\n    function self.__call(_, options)\r\n        assert(\r\n            options,\r\n            [[You\'ve failed to pass options to BasicTerrainBuilderDevice! Mandatory options:\r\n            heighMap: table]]\r\n        )\r\n        assert(options.heightMap, \'There was no heightMap supplied to BasicTerrainBuilderDevice\')\r\n        assert(type(options.heightMap) == \'table\', \"You\'ve passed invalid heightMap to BasicTerrainBuilderDevice\")\r\n        local MAX_ITERATIONS_PER_TICK = 2000\r\n        local iters = 0\r\n        local width = #options.heightMap[1]\r\n        local height = #options.heightMap\r\n        local function FlattenHorizontalPass(newMap)\r\n            local ret = true\r\n            for i = 1, height do\r\n                for ii = 1, width - 1 do\r\n                    iters = iters + 1\r\n                    if iters % MAX_ITERATIONS_PER_TICK == 0 then\r\n                        Task.Wait()\r\n                    end\r\n                    local diff = newMap[i][ii] - newMap[i][ii + 1]\r\n                    if diff <= self.hDelta and diff >= -self.hDelta then\r\n                        ret = false\r\n                        newMap[i][ii + 1] = newMap[i][ii]\r\n                    end\r\n                end\r\n            end\r\n            return ret\r\n        end\r\n        local function FlattenVerticalPass(newMap)\r\n            local ret = true\r\n            for i = 1, height - 1 do\r\n                for ii = 1, width do\r\n                    iters = iters + 1\r\n                    if iters % MAX_ITERATIONS_PER_TICK == 0 then\r\n                        Task.Wait()\r\n                    end\r\n                    local diff = newMap[i][ii] - newMap[i + 1][ii]\r\n                    if diff <= self.hDelta and diff >= -self.hDelta then\r\n                        ret = false\r\n                        print(tostring(diff) .. \'\\t\' .. tostring(i) .. \'|\' .. tostring(ii))\r\n                        newMap[i + 1][ii] = newMap[i][ii]\r\n                    end\r\n                end\r\n            end\r\n            return ret\r\n        end\r\n\r\n        -- copy heightMap\r\n        local newMap = {}\r\n        for i = 1, height do\r\n            newMap[i] = {}\r\n            for ii = 1, width do\r\n                newMap[i][ii] = options.heightMap[i][ii]\r\n            end\r\n        end\r\n        -- filter heightMap\r\n        FlattenHorizontalPass(newMap)\r\n        FlattenVerticalPass(newMap)\r\n        -- options = {table.unpack(options)}\r\n        options.heightMap = newMap\r\n        return options\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn FlatSurfaceSmoothingFilterDevice\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 6224569963153153531
            }
          }
        }
      }
      VirtualFolderPath: "Procedural"
      VirtualFolderPath: "Devices"
    }
    Assets {
      Id: 9694963515334186802
      Name: "PerlinNoiseDevice"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal Noise = Imports.Math.Noise.require()\r\nfunction PerlinNoiseDevice(mapSize, seed, amplitude, stretch)\r\n    local self = {\r\n        type = \'PerlinNoiseDevice\',\r\n        mapSize = mapSize,\r\n        seed = seed,\r\n        amplitude = amplitude or error(\'You have to supply an amplitude\'),\r\n        stretch = stretch or error(\'You have to supply a stretch\')\r\n    }\r\n    function self.__tostring()\r\n        return self.type\r\n    end\r\n    function self.__call(_, options)\r\n        -- input validation\r\n        assert(\r\n            options,\r\n            [[You\'ve failed to pass options to ]] .. self.type .. [[! Elective options:\r\n            heighMap: table]]\r\n        )\r\n        if options.heightMap then\r\n            local msg = \'Dimension mismatch\'\r\n            assert(self.mapSize.x == #options.heightMap[1], msg)\r\n            assert(self.mapSize.y == #options.heightMap, msg)\r\n        end\r\n        options.position = options.position or Vector3.ZERO\r\n\r\n        -- terrain generation\r\n        local MAX_ITERATIONS_PER_TICK = 4500\r\n\r\n        -- FIXME: error handling on omitting seed\r\n        Noise.seed(self.seed)\r\n\r\n        local width = self.mapSize.x\r\n        local height = self.mapSize.y\r\n        local noiseMap = {}\r\n        local iters = 0\r\n        for i = 1, height do\r\n            noiseMap[i] = {}\r\n            for ii = 1, width do\r\n                iters = iters + 1\r\n                if iters % MAX_ITERATIONS_PER_TICK == 0 then\r\n                    Task.Wait()\r\n                -- coroutine.yield(\"HI people\")\r\n                end\r\n                noiseMap[i][ii] = (Noise.make(i * self.stretch.x, ii * self.stretch.y) + 1) / 2 * amplitude\r\n                if options.heightMap then\r\n                    noiseMap[i][ii] = noiseMap[i][ii] + options.heightMap[i][ii]\r\n                end\r\n            end\r\n        end\r\n        local ret = options\r\n        ret.heightMap = noiseMap\r\n        -- print(\"Hello\")\r\n        return ret\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn PerlinNoiseDevice\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 9694963515334186802
            }
          }
        }
      }
      VirtualFolderPath: "Procedural"
      VirtualFolderPath: "Devices"
    }
    Assets {
      Id: 6941183492192852755
      Name: "UniformZDevice"
      PlatformAssetType: 3
      TextAsset {
        Text: "function UniformZDevice(mapSize, zOffset)\r\n    assert(mapSize)\r\n    zOffset = zOffset or 0\r\n    local self = {\r\n        type = \'UniformZDevice\',\r\n        width = mapSize.x,\r\n        height = mapSize.y,\r\n        zOffset = zOffset\r\n    }\r\n    function self.__call(_, options)\r\n        options = options or {}\r\n        if options.heightMap then\r\n            local msg = \'Dimension mismatch \'\r\n            assert(self.width == #options.heightMap[1], msg)\r\n            assert(self.height == #options.heightMap, msg)\r\n        end\r\n        local flatSurface = {}\r\n        local MAX_ITERS_PER_TICK = 20000\r\n        local iters = 0\r\n        for i = 1, self.width do\r\n            flatSurface[i] = {}\r\n            for ii = 1, self.height do\r\n                iters = iters + 1\r\n                if iters % MAX_ITERS_PER_TICK == 0 then\r\n                    Task.Wait()\r\n                end\r\n                flatSurface[i][ii] = self.zOffset\r\n                if options.heightMap then\r\n                    flatSurface[i][ii] = flatSurface[i][ii] + options.heightMap[i][ii]\r\n                end\r\n            end\r\n        end\r\n        local ret = options\r\n        ret.position = Vector3.ZERO\r\n        ret.heightMap = flatSurface\r\n        return ret\r\n    end\r\n    function self.__tostring()\r\n        return self.type\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn UniformZDevice\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 6941183492192852755
            }
          }
        }
      }
      VirtualFolderPath: "Procedural"
      VirtualFolderPath: "Devices"
    }
    Assets {
      Id: 11090181159666109438
      Name: "TerrainBuilderPipelineClass2D"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal TableUtils = Imports.Utils.TableUtils.require()\r\nfunction TerrainHeightmapBuilderPipelineClass2D()\r\n    local self = {\r\n        type = \'TerrainHeightmapBuilderPipelineClass2D\',\r\n        devices = {},\r\n        remaps = {},\r\n        perfReports = {}\r\n    }\r\n    function self.AddDevice(device)\r\n        self.devices[#self.devices + 1] = device\r\n    end\r\n    function self.ListDevices()\r\n        print(\'devices:\')\r\n        print(\'-----------\')\r\n        for i = 1, #self.devices do\r\n            print(self.devices[i])\r\n        end\r\n        print(\'-----------\')\r\n        print()\r\n    end\r\n    function self.ListRemaps()\r\n        print(\'remaps:\')\r\n        print(\'-----------\')\r\n        for k, v in pairs(self.remaps) do\r\n            print(tostring(k))\r\n            TableUtils.PrintTable(v)\r\n        end\r\n        print(\'-----------\')\r\n        print()\r\n    end\r\n    function self.ListPerformance()\r\n        print(\'terrain generation timings:\')\r\n        print(\'-----------\')\r\n        for i = 1, #self.devices do\r\n            local index = self.devices[i].type\r\n            local report = tostring(CoreMath.Round(self.perfReports[index].totalTime, 6) * 1000)\r\n            local text =\r\n                index ..\r\n                string.rep(\' \', math.max(50 - #index, 1)) ..\r\n                    report .. string.rep(\' \', math.max(10 - #report, 1)) .. \'ms\'\r\n            print(text)\r\n        end\r\n        print()\r\n        print(\r\n            \'Terrain generation took \' ..\r\n                tostring(CoreMath.Round(self.perfReports[self.type].totalTime, 6) * 1000) .. \' ms\'\r\n        )\r\n        print(\'-----------\')\r\n        print()\r\n    end\r\n    function self.Remap(table)\r\n        self.remaps[#self.devices] = table\r\n    end\r\n    function self.Execute(options)\r\n        options = options or {}\r\n        local totalPerfReport = {}\r\n        totalPerfReport.startTime = time()\r\n        for i = 1, #self.devices do\r\n            assert(self.devices[i])\r\n            assert(self.devices[i].type)\r\n            local perfReport = {}\r\n            perfReport.startTime = time()\r\n\r\n            -- local cr =\r\n            --     coroutine.create(\r\n            --     function(...)\r\n            --         return self.devices[i](...)\r\n            --     end\r\n            -- )\r\n            -- local newOptions = \"bruh\"\r\n            -- repeat\r\n            --     -- Task.Wait()\r\n            --     success,newOptions = coroutine.resume(cr,options)\r\n            --     print(\"UWU\")\r\n            --     print(newOptions)\r\n            --     assert(success)\r\n            --     Task.Wait()\r\n            --     -- if type(newOptions) == \'string\' then print(newOptions) end\r\n            -- until coroutine.status(cr) == \'dead\' and type(newOptions)==\'table\'\r\n            -- success,options = coroutine.resume(cr,options)\r\n            -- print(options)\r\n            --\r\n            -- local cr = coroutine.wrap(function(...) return self.devices[i](...) end)\r\n            -- options = cr(options)\r\n\r\n            options = self.devices[i](options)\r\n            if self.remaps[i] then\r\n                for k, v in pairs(self.remaps[i]) do\r\n                    assert(options[v] == options[k] or not options[v], \"You can\'t remap to an occupied key\")\r\n                    options[v] = options[k]\r\n                    options[k] = nil\r\n                end\r\n            end\r\n\r\n            perfReport.finishTime = time()\r\n            perfReport.totalTime = perfReport.finishTime - perfReport.startTime\r\n            -- assert(not self.perfReports[self.devices[i].type]) -- FIXME:\r\n            self.perfReports[self.devices[i].type] = perfReport\r\n            Task.Wait()\r\n        end\r\n        totalPerfReport.finishTime = time()\r\n        totalPerfReport.totalTime = totalPerfReport.finishTime - totalPerfReport.startTime\r\n        self.perfReports[self.type] = totalPerfReport\r\n        return options\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn TerrainHeightmapBuilderPipelineClass2D\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 11090181159666109438
            }
          }
        }
      }
      VirtualFolderPath: "Procedural"
    }
    Assets {
      Id: 13897313495961290138
      Name: "Tests"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal ProtectedCoroutine = Imports.Coroutines.ProtectedCoroutine.require()\r\nTests = {}\r\nfunction Tests.RunTest(testName, func)\r\n    assert(type(testName) == \'string\', \'testName must be a string\')\r\n    assert(\r\n        type(func) == \'function\',\r\n        [[\r\n        test function must be of type function.\r\n        NOTE:If you\\\'re trying to use a metatable call, wrap it in an anonymous function.\r\n            ]]\r\n    )\r\n    Tests.scheduledTests = Tests.scheduledTests or {}\r\n    Tests.scheduledTests[#Tests.scheduledTests + 1] = {testName = testName, func = func}\r\nend\r\nfunction Tests.RunAllTests()\r\n    if Environment.IsPreview() then\r\n        print(\'tests:\')\r\n        print(\'-----------\')\r\n        Tests.scheduledTests = Tests.scheduledTests or {}\r\n        for i = 1, #Tests.scheduledTests do\r\n            -- TODO: better formatting\r\n            local currentTest = Tests.scheduledTests[i]\r\n            local cr = ProtectedCoroutine.create(currentTest.func)\r\n            local res, msg = ProtectedCoroutine.resume(cr)\r\n            -- checks validity of the test name\r\n            local stringNameRepr = tostring(currentTest.testName) or \'\'\r\n            assert(\r\n                stringNameRepr ~= \'\' or type(currentTest.testName) == \'string\',\r\n                stringNameRepr .. \'is not a valid test name\'\r\n            )\r\n            assert(type(res) == \'boolean\', \'test \' .. currentTest.testName .. \' must return string, boolean\')\r\n            -- log test results\r\n            local dumpText = \'test: \' .. stringNameRepr .. string.rep(\' \', 50 - #stringNameRepr)\r\n            if res == false then\r\n                print(dumpText .. \'\\tUNSUCCESSFUL\' .. \'\\n\' .. msg)\r\n            else\r\n                print(dumpText .. \'\\tSUCCESSFUL\')\r\n            end\r\n        end\r\n        print(\'-----------\')\r\n        print()\r\n    else\r\n        print(\'skipping tests.\')\r\n    end\r\nend\r\nreturn Tests\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 13897313495961290138
            }
          }
        }
      }
      VirtualFolderPath: "Utility"
    }
    Assets {
      Id: 2651619979252803131
      Name: "Noise"
      PlatformAssetType: 3
      TextAsset {
        Text: "local API = {}\r\nlocal floor = math.floor\r\n\r\nlocal grid = {\r\n    [0] = {1, 1, 0},\r\n    [1] = {-1, 1, 0},\r\n    [2] = {1, -1, 0},\r\n    [3] = {-1, -1, 0},\r\n    [4] = {1, 0, 1},\r\n    [5] = {-1, 0, 1},\r\n    [6] = {1, 0, -1},\r\n    [7] = {-1, 0, -1},\r\n    [8] = {0, 1, 1},\r\n    [9] = {0, -1, 1},\r\n    [10] = {0, 1, -1},\r\n    [11] = {0, -1, -1}\r\n}\r\n\r\nlocal function dot(tab, x, y)\r\n    return tab[1] * x + tab[2] * y\r\nend\r\n\r\nlocal prv, prm = {}, {}\r\n\r\nfunction API.make(x, y)\r\n    if prv[x] and prv[x][y] then\r\n        return prv[x][y]\r\n    end\r\n\r\n    local n0, n1, n2\r\n    local f = .5 * (3 ^ .5 - 1)\r\n    local s = (x + y) * f\r\n    local i = floor(x + s)\r\n    local j = floor(y + s)\r\n    local g = (3 - 3 ^ .5) / 6\r\n\r\n    local t = (i + j) * g\r\n    local X0, Y0 = i - t, j - t\r\n    local x0, y0 = x - X0, y - Y0\r\n\r\n    local i1, j1\r\n    if x0 > y0 then\r\n        i1 = 1\r\n        j1 = 0\r\n    else\r\n        i1 = 0\r\n        j1 = 1\r\n    end\r\n\r\n    local x1 = x0 - i1 + g\r\n    local y1 = y0 - j1 + g\r\n    local x2 = x0 - 1 + 2 * g\r\n    local y2 = y0 - 1 + 2 * g\r\n\r\n    local ii = i % 255\r\n    local jj = j % 255\r\n    local gi0 = prm[ii + prm[jj]] % 12\r\n    local gi1 = prm[ii + i1 + prm[jj + j1]] % 12\r\n    local gi2 = prm[ii + 1 + prm[jj + 1]] % 12\r\n\r\n    local t0 = 0.5 - x0 * x0 - y0 * y0\r\n    if t0 < 0 then\r\n        n0 = 0\r\n    else\r\n        t0 = t0 * t0\r\n        n0 = t0 * t0 * dot(grid[gi0], x0, y0)\r\n    end\r\n\r\n    local t1 = .5 - x1 * x1 - y1 * y1\r\n    if t1 < 0 then\r\n        n1 = 0\r\n    else\r\n        t1 = t1 * t1\r\n        n1 = t1 * t1 * dot(grid[gi1], x1, y1)\r\n    end\r\n\r\n    local t2 = .5 - x2 * x2 - y2 * y2\r\n    if (t2 < 0) then\r\n        n2 = 0\r\n    else\r\n        t2 = t2 * t2\r\n        n2 = t2 * t2 * dot(grid[gi2], x2, y2)\r\n    end\r\n\r\n    local out = 70 * (n0 + n1 + n2)\r\n\r\n    if not prv[x] then\r\n        prv[x] = {}\r\n    end\r\n    prv[x][y] = out\r\n\r\n    return out\r\nend\r\n\r\nfunction API.seed(seed)\r\n    local s = floor(seed * math.pi * 5051671)\r\n\r\n    local p = {}\r\n    prv = {}\r\n\r\n    for i = 1, 256 do\r\n        p[i - 1] = (s + floor(s / i)) % 256\r\n    end\r\n\r\n    for i = 0, 255 do\r\n        prm[i] = p[i]\r\n        prm[i + 256] = p[i]\r\n        prm[i + 512] = p[i]\r\n    end\r\nend\r\n\r\nreturn API\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 2651619979252803131
            }
          }
        }
      }
      Marketplace {
        Description: "A basic noise generation script I use for terrain generation."
      }
      DirectlyPublished: true
      VirtualFolderPath: "Manager"
      VirtualFolderPath: "Library"
    }
    Assets {
      Id: 3296650807390737022
      Name: "TerrainClass"
      PlatformAssetType: 3
      TextAsset {
        Text: "local perms = {\r\n    151, 160, 137, 91, 90, 15, 131, 13, 201, 95, 96, 53, 194, 233, 7, 225, 140, 36, 103, 30, 69, 142,\r\n    8, 99, 37, 240, 21, 10, 23, 190, 6, 148, 247, 120, 234, 75, 0, 26, 197, 62, 94, 252, 219, 203,\r\n    117, 35, 11, 32, 57, 177, 33, 88, 237, 149, 56, 87, 174, 20, 125, 136, 171, 168, 68, 175, 74, 165,\r\n    71, 134, 139, 48, 27, 166, 77, 146, 158, 231, 83, 111, 229, 122, 60, 211, 133, 230, 220, 105, 92, 41,\r\n    55, 46, 245, 40, 244, 102, 143, 54, 65, 25, 63, 161, 1, 216, 80, 73, 209, 76, 132, 187, 208, 89,\r\n    18, 169, 200, 196, 135, 130, 116, 188, 159, 86, 164, 100, 109, 198, 173, 186, 3, 64, 52, 217, 226, 250,\r\n    124, 123, 5, 202, 38, 147, 118, 126, 255, 82, 85, 212, 207, 206, 59, 227, 47, 16, 58, 17, 182, 189,\r\n    28, 42, 223, 183, 170, 213, 119, 248, 152, 2, 44, 154, 163, 70, 221, 153, 101, 155, 167, 43, 172, 9,\r\n    129, 22, 39, 253, 19, 98, 108, 110, 79, 113, 224, 232, 178, 185, 112, 104, 218, 246, 97, 228, 251, 34,\r\n    242, 193, 238, 210, 144, 12, 191, 179, 162, 241, 81, 51, 145, 235, 249, 14, 239, 107, 49, 192, 214, 31,\r\n    181, 199, 106, 157, 184, 84, 204, 176, 115, 121, 50, 45, 127, 4, 150, 254, 138, 236, 205, 93, 222, 114,\r\n    67, 29, 24, 72, 243, 141, 128, 195, 78, 66, 215, 61, 156, 180\r\n}\r\nlocal function SimplexNoise()\r\n    local self = {}\r\n    local RandomSize = 256\r\n    local Sqrt3 = 1.7320508075688772935\r\n    local Sqrt5 = 2.2360679774997896964\r\n    local _random\r\n    local F2 = 0.5*(Sqrt3 - 1.0)\r\n    local G2 = (3.0 - Sqrt3)/6.0\r\n    local G22 = G2*2.0 - 1\r\n    local F3 = 1.0/3.0\r\n    local G3 = 1.0/6.0\r\n    local F4 = (Sqrt5 - 1.0)/4.0\r\n    local G4 = (5.0 - Sqrt5)/20.0\r\n    local G42 = G4*2.0\r\n    local G43 = G4*3.0\r\n    local G44 = G4*4.0 - 1.0\r\n    local grad = {\r\n        Vector3.New(1, 1, 0),Vector3.New(-1, 1, 0),Vector3.New(1, -1, 0),\r\n        Vector3.New(-1, -1, 0),Vector3.New(1, 0, 1),Vector3.New(-1, 0, 1),\r\n        Vector3.New(1, 0, -1),Vector3.New(-1, 0, -1),Vector3.New(0, 1, 1),\r\n        Vector3.New(0, -1, 1),Vector3.New(0, 1, -1),Vector3.New(0, -1, -1),\r\n    }\r\n    function self.Noise(seed)\r\n        seed = seed or 0\r\n        self.Randomize(seed)\r\n    end\r\n    function self.Evaluate(point)\r\n        local x,y,z = point.x,point.y,point.z\r\n        local s = x+y+z\r\n\r\n        local i = math.floor(x+s)\r\n        local j = math.floor(y+s)\r\n        local k = math.floor(z+s)\r\n\r\n        local t = (i+j+k)*G3\r\n\r\n        local x0 = x - (i - t)\r\n        local y0 = y - (j - t)\r\n        local z0 = z - (k - t)\r\n\r\n        local i1, j1, k1\r\n        local i2, j2, k2\r\n        if x0 >= y0 then\r\n            if y0 >= z0 then\r\n                i1 = 1;\r\n                j1 = 0;\r\n                k1 = 0;\r\n                i2 = 1;\r\n                j2 = 1;\r\n                k2 = 0;\r\n            elseif x0 >= z0 then\r\n                i1 = 1;\r\n                j1 = 0;\r\n                k1 = 0;\r\n                i2 = 1;\r\n                j2 = 0;\r\n                k2 = 1;\r\n            else\r\n                i1 = 0;\r\n                j1 = 0;\r\n                k1 = 1;\r\n                i2 = 1;\r\n                j2 = 0;\r\n                k2 = 1;\r\n            end\r\n        else\r\n            if y0 < z0 then\r\n                i1 = 0;\r\n                j1 = 0;\r\n                k1 = 1;\r\n                i2 = 0;\r\n                j2 = 1;\r\n                k2 = 1;\r\n            elseif x0 < z0 then\r\n                i1 = 0;\r\n                j1 = 1;\r\n                k1 = 0;\r\n                i2 = 0;\r\n                j2 = 1;\r\n                k2 = 1;\r\n            else\r\n                i1 = 0;\r\n                j1 = 1;\r\n                k1 = 0;\r\n                i2 = 1;\r\n                j2 = 1;\r\n                k2 = 0;\r\n            end\r\n        end\r\n        local x1 = x0 - i1 + G3;\r\n        local y1 = y0 - j1 + G3;\r\n        local z1 = z0 - k1 + G3;\r\n\r\n        local x2 = x0 - i2 + F3;\r\n        local y2 = y0 - j2 + F3;\r\n        local z2 = z0 - k2 + F3;\r\n\r\n        local x3 = x0 - 0.5;\r\n        local y3 = y0 - 0.5;\r\n        local z3 = z0 - 0.5;\r\n\r\n        local ii = math.min(i,255);\r\n        local jj = math.min(i,255);\r\n        local kk = math.min(i,255);\r\n\r\n    end\r\n    function self.Randomize()\r\n    end\r\nend\r\nreturn SimplexNoise"
      }
      VirtualFolderPath: "Procedural"
    }
    Assets {
      Id: 13595965561543294678
      Name: "IdGenClass"
      PlatformAssetType: 3
      TextAsset {
        Text: "local function IdGenClass()\r\n    local self = {\r\n        lastId = \"0\"\r\n    }\r\n    function self.__call()\r\n        self.lastId = tostring(tonumber(self.lastId)+1)\r\n        return self.lastId\r\n    end\r\n    return setmetatable(self, self)\r\nend\r\nreturn IdGenClass"
      }
    }
    Assets {
      Id: 5153807603410020566
      Name: "KeyCodes"
      PlatformAssetType: 3
      TextAsset {
        Text: "local KEYCODES = {\r\n    LEFT_BUTTON = \'ability_primary\',\r\n    RIGHT_BUTTON = \'ability_secondary\',\r\n    SPRINT = \'ability_feet\',\r\n    KEY_0 = \'ability_extra_0\',\r\n    KEY_1 = \'ability_extra_1\',\r\n    KEY_2 = \'ability_extra_2\',\r\n    KEY_3 = \'ability_extra_3\',\r\n    KEY_4 = \'ability_extra_4\',\r\n    KEY_5 = \'ability_extra_5\',\r\n    KEY_6 = \'ability_extra_6\',\r\n    KEY_7 = \'ability_extra_7\',\r\n    KEY_8 = \'ability_extra_8\',\r\n    KEY_9 = \'ability_extra_9\',\r\n    KEY_LEFT_CTRL = \'ability_extra_10\',\r\n    KEY_RIGHT_CTRL = \'ability_extra_11\',\r\n    KEY_LEFT_SHIFT = \'ability_extra_12\',\r\n    KEY_RIGHT_SHIFT = \'ability_extra_13\',\r\n    KEY_LEFT_ALT = \'ability_extra_14\',\r\n    KEY_RIGHT_ALT = \'ability_extra_15\',\r\n    KEY_ENTER = \'ability_extra_16\',\r\n    KEY_SPACE = \'ability_extra_17\',\r\n    KEY_CAPS_LOCK = \'ability_extra_18\',\r\n    KEY_TAB = \'ability_extra_19\',\r\n    KEY_Q = \'ability_extra_20\',\r\n    KEY_W = \'ability_extra_21\',\r\n    KEY_E = \'ability_extra_22\',\r\n    KEY_R = \'ability_extra_23\',\r\n    KEY_T = \'ability_extra_24\',\r\n    KEY_Y = \'ability_extra_25\',\r\n    KEY_U = \'ability_extra_26\',\r\n    KEY_I = \'ability_extra_27\',\r\n    KEY_O = \'ability_extra_28\',\r\n    KEY_P = \'ability_extra_29\',\r\n    KEY_A = \'ability_extra_30\',\r\n    KEY_S = \'ability_extra_31\',\r\n    KEY_D = \'ability_extra_32\',\r\n    KEY_F = \'ability_extra_33\',\r\n    KEY_G = \'ability_extra_34\',\r\n    KEY_H = \'ability_extra_35\',\r\n    KEY_J = \'ability_extra_36\',\r\n    KEY_K = \'ability_extra_37\',\r\n    KEY_L = \'ability_extra_38\',\r\n    KEY_Z = \'ability_extra_39\',\r\n    KEY_X = \'ability_extra_40\',\r\n    KEY_C = \'ability_extra_41\',\r\n    KEY_V = \'ability_extra_42\',\r\n    KEY_B = \'ability_extra_43\',\r\n    KEY_N = \'ability_extra_44\',\r\n    KEY_M = \'ability_extra_45\',\r\n    KEY_UP = \'ability_extra_46\',\r\n    KEY_DOWN = \'ability_extra_47\',\r\n    KEY_LEFT = \'ability_extra_48\',\r\n    KEY_RIGHT = \'ability_extra_49\',\r\n    KEY_F1 = \'ability_extra_50\',\r\n    KEY_F2 = \'ability_extra_51\',\r\n    KEY_F3 = \'ability_extra_52\',\r\n    KEY_F4 = \'ability_extra_53\',\r\n    KEY_F5 = \'ability_extra_54\',\r\n    KEY_F6 = \'ability_extra_55\',\r\n    KEY_F7 = \'ability_extra_56\',\r\n    KEY_F8 = \'ability_extra_57\',\r\n    KEY_F9 = \'ability_extra_58\',\r\n    KEY_F10 = \'ability_extra_59\',\r\n    KEY_F11 = \'ability_extra_60\',\r\n    KEY_F12 = \'ability_extra_61\',\r\n    KEY_INSERT = \'ability_extra_62\',\r\n    KEY_HOME = \'ability_extra_63\',\r\n    KEY_PAGE_UP = \'ability_extra_64\',\r\n    KEY_PAGE_DOWN = \'ability_extra_65\',\r\n    KEY_DELETE = \'ability_extra_66\',\r\n    KEY_END = \'ability_extra_67\'\r\n}\r\nfunction KEYCODES.reverse()\r\n    local o = {}\r\n    for k,v in pairs(KEYCODES) do\r\n        o[v] = k\r\n    end\r\n    return o\r\nend\r\nreturn KEYCODES\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 5153807603410020566
            }
          }
        }
      }
      Marketplace {
        Description: "require this script to get a humanly readable table of keybindings. use .reverse() to swap keys with values."
      }
      VirtualFolderPath: "Utility"
    }
    Assets {
      Id: 9963136647964533062
      Name: "JSON"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[ JSON.lua\r\nUsage:\r\n1. local JSON = require(script:GetCustomProperty(\'json\')) and add an Asset property named \'json\', set it as this script.\r\n2. use JSON.Stringify(table) to transform a lua table into json.\r\n3. use JSON.Parse(stringifiedObject) to transform a json string into a lua table.\r\n\r\nSupports most basic CORE types. Most other types shouldn\'t be passed via JSON by value.\r\n(pass .id or .sourceTemplateId instead)\r\n\r\nYou can contact me at nexovec#6149 on discord for bug reports or feature requests.\r\n\r\n## JSON.Stringify:\r\nA table is classified as an array if and only if it only has multiple consecutive number indexes starting from 1.\r\n\r\n## JSON.Parse:\r\nUses JSON.null instead of nil.\r\n\r\n## Bugs:\r\nDon\'t chain calls together in: JSON.Stringify(JSON.Parse(JSON.Stringify(table))).\r\nUse\r\nlocal text = JSON.Stringify(table)\r\nlocal parsed = JSON.Parse(text)\r\nlocal textAgain = JSON.Stringify(parsed)\r\ninstead.\r\n\r\n--]]\r\nJSON = {}\r\ni = 0\r\nmaxIterationsPerTick = 5000\r\nfunction KindOf(obj)\r\n    if type(obj) ~= \'table\' then\r\n        return type(obj)\r\n    end\r\n    local i = 1\r\n    for _ in pairs(obj) do\r\n        if obj[i] ~= nil then\r\n            i = i + 1\r\n        else\r\n            return \'table\'\r\n        end\r\n    end\r\n    if i == 1 then\r\n        return \'table\'\r\n    else\r\n        return \'array\'\r\n    end\r\nend\r\n\r\nfunction EscapeStr(s)\r\n    local in_char = {\'\\\\\', \'\"\', \'/\', \'\\b\', \'\\f\', \'\\n\', \'\\r\', \'\\t\'}\r\n    local out_char = {\'\\\\\', \'\"\', \'/\', \'b\', \'f\', \'n\', \'r\', \'t\'}\r\n    for i, c in ipairs(in_char) do\r\n        s = s:gsub(c, \'\\\\\' .. out_char[i])\r\n    end\r\n    return s\r\nend\r\nfunction SkipDelim(str, pos, delim, err_if_missing)\r\n    pos = pos + #str:match(\'^%s*\', pos)\r\n    if str:sub(pos, pos) ~= delim then\r\n        if err_if_missing then\r\n            error(\'Expected \' .. delim .. \' near position \' .. pos)\r\n        end\r\n        return pos, false\r\n    end\r\n    return pos + 1, true\r\nend\r\nfunction ParseStringValue(str, pos, val)\r\n    i = i + 1\r\n    if i % maxIterationsPerTick == 0 then\r\n        Task.Wait()\r\n    end\r\n    val = val or \'\'\r\n    local early_end_error = \'End of input found while parsing string.\'\r\n    if pos > #str then\r\n        error(early_end_error)\r\n    end\r\n    local c = str:sub(pos, pos)\r\n    if c == \'\"\' then\r\n        return val, pos + 1\r\n    end\r\n    if c ~= \'\\\\\' then\r\n        return ParseStringValue(str, pos + 1, val .. c)\r\n    end\r\n    -- Parse special characters\r\n    local esc_map = {b = \'\\b\', f = \'\\f\', n = \'\\n\', r = \'\\r\', t = \'\\t\'}\r\n    local nextc = str:sub(pos + 1, pos + 1)\r\n    if not nextc then\r\n        error(early_end_error)\r\n    end\r\n    return ParseStringValue(str, pos + 2, val .. (esc_map[nextc] or nextc))\r\nend\r\nfunction ParseNumberValue(str, pos)\r\n    local num_str = str:match(\'^-?%d+%.?%d*[eE]?[+-]?%d*\', pos)\r\n    local val = tonumber(num_str)\r\n    if not val then\r\n        error(\'Error parsing number at position \' .. pos .. \'.\')\r\n    end\r\n    return val, pos + #num_str\r\nend\r\nfunction ConvertUserdataToTable(obj)\r\n    if obj.type == \'Vector3\' then\r\n        return {type = obj.type, x = obj.x, y = obj.y, z = obj.z}\r\n    elseif obj.type == \'Vector2\' then\r\n        return {type = obj.type, x = obj.x, y = obj.y}\r\n    elseif obj.type == \'Rotation\' then\r\n        return {type = obj.type, x = obj.x, y = obj.y, z = obj.z}\r\n    elseif obj.type == \'Vector4\' then\r\n        return {type = obj.type, x = obj.x, y = obj.y, z = obj.z, w = obj.w}\r\n    elseif obj.type == \'Color\' then\r\n        return {type = obj.type, r = obj.r, g = obj.g, b = obj.b, a = obj.a}\r\n    elseif obj.type == \'Quaternion\' then\r\n        return {type = obj.type, x = obj.x, y = obj.y, z = obj.z, w = obj.w}\r\n    elseif obj.type == \'Transform\' then\r\n        return {\r\n            type = obj.type,\r\n            rotation = ConvertUserdataToTable(obj:GetRotation()),\r\n            position = ConvertUserdataToTable(obj:GetPosition()),\r\n            scale = ConvertUserdataToTable(obj:GetScale())\r\n        }\r\n    else\r\n        -- TODO:\r\n        warn(\'Userdata type \' .. obj.type .. \" shouldn\'t be stringified. passing its id instead.\")\r\n        return {id = obj.id}\r\n    end\r\nend\r\n\r\n-- Public values and functions.\r\n\r\nfunction JSON.Stringify(obj, as_key)\r\n    i = i + 1\r\n    if i % maxIterationsPerTick == 0 then\r\n        Task.Wait()\r\n    end\r\n    local s = {}\r\n    local kind = KindOf(obj)\r\n    if kind == \'array\' then\r\n        if as_key then\r\n            error(\"Can\'t encode array as key.\")\r\n        end\r\n        s[#s + 1] = \'[\'\r\n        for i, val in ipairs(obj) do\r\n            if i > 1 then\r\n                s[#s + 1] = \', \'\r\n            end\r\n            s[#s + 1] = JSON.Stringify(val)\r\n        end\r\n        s[#s + 1] = \']\'\r\n    elseif kind == \'table\' then\r\n        if as_key then\r\n            error(\"Can\'t encode table as key.\")\r\n        end\r\n        s[#s + 1] = \'{\'\r\n        for k, v in pairs(obj) do\r\n            if #s > 1 then\r\n                s[#s + 1] = \', \'\r\n            end\r\n            s[#s + 1] = JSON.Stringify(k, true)\r\n            s[#s + 1] = \':\'\r\n            s[#s + 1] = JSON.Stringify(v)\r\n        end\r\n        s[#s + 1] = \'}\'\r\n    elseif kind == \'string\' then\r\n        return \'\"\' .. EscapeStr(obj) .. \'\"\'\r\n    elseif kind == \'number\' then\r\n        if as_key then\r\n            return \'\"\' .. tostring(obj) .. \'\"\'\r\n        end\r\n        return tostring(obj)\r\n    elseif kind == \'userdata\' then\r\n        return JSON.Stringify(ConvertUserdataToTable(obj))\r\n    elseif kind == \'boolean\' then\r\n        return tostring(obj)\r\n    elseif kind == \'nil\' then\r\n        return \'null\'\r\n    else\r\n        error(\'Unjsonifiable type: \' .. kind .. \'.\')\r\n    end\r\n    return table.concat(s)\r\nend\r\nfunction ConstructUserdataFromTable(obj)\r\n    if obj.type == \'Vector3\' then\r\n        return Vector3.New(obj.x, obj.y, obj.z)\r\n    elseif obj.type == \'Vector2\' then\r\n        return Vector2.New(obj.x, obj.y)\r\n    elseif obj.type == \'Rotation\' then\r\n        return Rotation.New(obj.x, obj.y, obj.z)\r\n    elseif obj.type == \'Vector4\' then\r\n        return Vector4.New(obj.x, obj.y, obj.z, obj.w)\r\n    elseif obj.type == \'Color\' then\r\n        return Color.New(obj.r, obj.g, obj.b, obj.a or 1)\r\n    elseif obj.type == \'Quaternion\' then\r\n        return Quaternion.New(obj.x, obj.y, obj.z, obj.w)\r\n    elseif obj.type == \'Transform\' then\r\n        return Transform.New(\r\n            ConstructUserdataFromTable(obj.rotation),\r\n            ConstructUserdataFromTable(obj.position),\r\n            ConstructUserdataFromTable(obj.scale)\r\n        )\r\n    else\r\n        error(\'Userdata type \' .. obj.type .. \' was not yet implemented\')\r\n    end\r\nend\r\n\r\nJSON.null = {}\r\n\r\nfunction JSON.Parse(str, pos, end_delim)\r\n    pos = pos or 1\r\n    if pos > #str then\r\n        error(\'Reached unexpected end of input.\')\r\n    end\r\n    pos = pos + #str:match(\'^%s*\', pos) -- Skip whitespace.\r\n    local first = str:sub(pos, pos)\r\n    if first == \'{\' then -- Parse an object.\r\n        local obj, delim_found = {}, true\r\n        local key\r\n        pos = pos + 1\r\n        while true do\r\n            key, pos = JSON.Parse(str, pos, \'}\')\r\n            -- key, pos = Parse(str, pos, \'}\')\r\n            if key == nil then\r\n                if obj.type ~= nil then\r\n                    return ConstructUserdataFromTable(obj), pos\r\n                end\r\n                return obj, pos\r\n            end\r\n            if not delim_found then\r\n                error(\'Comma missing between object items.\')\r\n            end\r\n            pos = SkipDelim(str, pos, \':\', true) -- true -> error if missing.\r\n            obj[key], pos = JSON.Parse(str, pos)\r\n            pos, delim_found = SkipDelim(str, pos, \',\')\r\n        end\r\n    elseif first == \'[\' then -- Parse an array.\r\n        local arr, delim_found = {}, true\r\n        local val\r\n        pos = pos + 1\r\n        while true do\r\n            val, pos = JSON.Parse(str, pos, \']\')\r\n            if val == nil then\r\n                return arr, pos\r\n            end\r\n            if not delim_found then\r\n                error(\'Comma missing between array items.\')\r\n            end\r\n            arr[#arr + 1] = val\r\n            pos, delim_found = SkipDelim(str, pos, \',\')\r\n        end\r\n    elseif first == \'\"\' then -- Parse a string.\r\n        return ParseStringValue(str, pos + 1)\r\n    elseif first == \'-\' or first:match(\'%d\') then -- Parse a number.\r\n        return ParseNumberValue(str, pos)\r\n    elseif first == end_delim then -- End of an object or array.\r\n        return nil, pos + 1\r\n    else -- Parse true, false, or null.\r\n        local literals = {[\'true\'] = true, [\'false\'] = false, [\'null\'] = JSON.null}\r\n        for lit_str, lit_val in pairs(literals) do\r\n            local lit_end = pos + #lit_str - 1\r\n            if str:sub(pos, lit_end) == lit_str then\r\n                return lit_val, lit_end + 1\r\n            end\r\n        end\r\n        local pos_info_str = \'position \' .. pos .. \': \' .. str:sub(pos, pos + 10)\r\n        error(\'Invalid JSON syntax starting at \' .. pos_info_str)\r\n    end\r\nend\r\nreturn JSON\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 9963136647964533062
            }
          }
        }
      }
      Marketplace {
        Description: "Usage is JSON.Strigify(someObject) and JSON.Parse(someString). Supports basic CORE userdata types. Doesn\'t throw instruction limit errors."
      }
      VirtualFolderPath: "Utility"
    }
    Assets {
      Id: 2894573475697960457
      Name: "FunctionalUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[    FunctionalUtils.lua\r\n## FunctionalUtils.Map(table,func)\r\n    Executes func on every element of table and returns the result (Doesn\'t mutate table itself).\r\n    table: table\r\n    func: Function\r\n        table: table\r\n        key: string\r\n        value: any\r\n## FunctionalUtils.Filter(table,func)\r\n    Executes func for every element of table, returns a table of all elements that func returned true for\r\n    (Doesn\'t mutate table itself).\r\n    table: table\r\n    func: Function\r\n        table: table\r\n        key: string\r\n        value: any\r\n## FunctionalUtils.Reduce(table,func,cumulativeSum)\r\n    Executes func for every element of table, assigns it to cumulativeSum. Returns the cumulativeSum\r\n    (Doesn\'t mutate table itself).\r\n    Returns the cumulativeSum.\r\n    table: table\r\n    func: Function\r\n        table: table\r\n        key: string\r\n        value: any\r\n        cumulativeSum: any\r\n]]\r\nFunctionalUtils = {}\r\nfunction FunctionalUtils.Map(table, func)\r\n    assert(type(table) == \'table\')\r\n    assert(type(func) == \'function\')\r\n    local res = {}\r\n    for k, v in pairs(table) do\r\n        -- print(tostring(k)..\"\\t:\\t\"..tostring(v))\r\n        res[k] = func(table, k, v)\r\n    end\r\n    return res\r\nend\r\nfunction FunctionalUtils.Filter(table, func)\r\n    assert(type(table) == \'table\')\r\n    assert(type(func) == \'function\')\r\n    local res = {}\r\n    for k, v in pairs(table) do\r\n        if func(table, k, v) == true then\r\n            res[k] = v\r\n        end\r\n    end\r\n    return res\r\nend\r\nfunction FunctionalUtils.Reduce(table, func, cumulativeSum)\r\n    assert(type(table) == \'table\')\r\n    assert(type(func) == \'function\')\r\n    cumulativeSum = cumulativeSum or 0\r\n    for k, v in pairs(table) do\r\n        cumulativeSum = func(table, k, v, cumulativeSum)\r\n    end\r\n    return cumulativeSum\r\nend\r\nreturn FunctionalUtils\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 2894573475697960457
            }
          }
        }
      }
      VirtualFolderPath: "Utility"
    }
    Assets {
      Id: 1157754754195071624
      Name: "CoreObjectUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[ CoreObjectUtils.lua\r\n    ## CoreObjectUtils.GetDescendantsTree(object)\r\n        Gives you back the tree of all descendants. Each object has .object that points to its own coreObject and .children,\r\n        which points to a table of child tables with the same properties.\r\n        object: CoreObject\r\n    ## CoreObjectUtils.FlattenDescendantTree(tree)\r\n        Takes the tree and returns the array of all descendant CoreObjects.\r\n        tree: table; return type of GetDescendantsTree\r\n]]\r\nlocal CoreObjectUtils = {}\r\n\r\nfunction CoreObjectUtils.GetDescendantsTree(object)\r\n    local res = {}\r\n    for k, v in ipairs(object:GetChildren()) do\r\n        res[k] = {object = v, children = CoreObjectUtils.GetDescendantsTree(v)}\r\n    end\r\n    return res\r\nend\r\nfunction CoreObjectUtils.FlattenDescendantTree(tree, prev)\r\n    local objects = prev or {}\r\n    for _, v in ipairs(tree) do\r\n        objects[#objects + 1] = v.object\r\n        if #v.children ~= 0 then\r\n            CoreObjectUtils.FlattenDescendantTree(v.children, objects)\r\n        end\r\n    end\r\n    return objects\r\nend\r\nreturn CoreObjectUtils\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:self"
            AssetReference {
              Id: 1157754754195071624
            }
          }
        }
      }
      VirtualFolderPath: "Utility"
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "4ecfa2f9fd1040ebabcaf47ec8eb64fe"
    OwnerAccountId: "609c6418ffe648c5a85e9dd78e174dbb"
    OwnerName: "nexovec"
    Description: "This is a module manager inspired by Bau\'s namespace manager. Allows you to import modules without using properties every time.\r\n-----------------\r\nChangelog:\r\nv1.0 plain module manager\r\nv1.1 added utility classes\r\nv1.2 added procedural generation\r\nv1.3 added asynchronous programming module"
  }
  SerializationVersion: 92
}
IncludesAllDependencies: true
