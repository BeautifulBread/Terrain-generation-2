Assets {
  Id: 12756557352563137479
  Name: "Scripts management framework"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1218721143472228266
      Objects {
        Id: 1218721143472228266
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
              Id: 9921580825534316082
            }
          }
        }
      }
    }
    Assets {
      Id: 9921580825534316082
      Name: "Scripts"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 7080499013303202467
          Objects {
            Id: 7080499013303202467
            Name: "Scripts"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 5226260708586940687
            ChildIds: 8300948917313242868
            ChildIds: 2382723948710001300
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
              IsGroup: true
            }
          }
          Objects {
            Id: 5226260708586940687
            Name: "ImportsManager"
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
            ParentId: 7080499013303202467
            ChildIds: 3656804715077384307
            ChildIds: 10706406038068652766
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
                Id: 8485270801205398950
              }
            }
          }
          Objects {
            Id: 3656804715077384307
            Name: "Main"
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
            ParentId: 5226260708586940687
            UnregisteredParameters {
              Overrides {
                Name: "cs:Namespace"
                AssetReference {
                  Id: 8485270801205398950
                }
              }
              Overrides {
                Name: "cs:Parent"
                String: "Scripts"
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
                Id: 17846557137340513976
              }
            }
          }
          Objects {
            Id: 10706406038068652766
            Name: "ClientInit"
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
            ParentId: 5226260708586940687
            ChildIds: 15602130471245082479
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
            Id: 15602130471245082479
            Name: "ClientMain"
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
            ParentId: 10706406038068652766
            UnregisteredParameters {
              Overrides {
                Name: "cs:Namespace"
                AssetReference {
                  Id: 8485270801205398950
                }
              }
              Overrides {
                Name: "cs:Parent"
                String: "Scripts"
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
                Id: 15456599419630513875
              }
            }
          }
          Objects {
            Id: 8300948917313242868
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
            ParentId: 7080499013303202467
            ChildIds: 11460878089410062400
            ChildIds: 7696979164983895866
            ChildIds: 14084020398790152489
            ChildIds: 12606675702891061217
            ChildIds: 11368401952421019634
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
              IsGroup: true
            }
          }
          Objects {
            Id: 11460878089410062400
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
            ParentId: 8300948917313242868
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
            Id: 7696979164983895866
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
            ParentId: 8300948917313242868
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
            Id: 14084020398790152489
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
            ParentId: 8300948917313242868
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
            Id: 12606675702891061217
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
            ParentId: 8300948917313242868
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
            Id: 11368401952421019634
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
            ParentId: 8300948917313242868
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
            Id: 2382723948710001300
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
            ParentId: 7080499013303202467
            ChildIds: 17866358018130907682
            ChildIds: 5360377213341035993
            ChildIds: 15863443061908078130
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
            Id: 17866358018130907682
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
            ParentId: 2382723948710001300
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
            Id: 5360377213341035993
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
            ParentId: 2382723948710001300
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
            Id: 15863443061908078130
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
            ParentId: 2382723948710001300
            ChildIds: 6860607284930136848
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
            Id: 6860607284930136848
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
            ParentId: 15863443061908078130
            ChildIds: 5974187263073438202
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
            Id: 5974187263073438202
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
            ParentId: 6860607284930136848
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
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      Marketplace {
        Description: "Baus\' namespace manager refactored with my common core libraries."
      }
      DirectlyPublished: true
    }
    Assets {
      Id: 10367504187709301285
      Name: "TestCoreObjectUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G.Imports\r\nlocal Tests = Imports.Tests\r\nlocal CoreObjectUtils = Imports.Utils.CoreObjectUtils\r\n-- assert(CoreObjectUtils ~=nil)\r\n\r\nTests.RunTest(\r\n    \'CoreObjectUtils.GetDescendantTree\',\r\n    function()\r\n        local descendants = CoreObjectUtils.GetDescendantsTree(script)\r\n        assert(type(descendants) == \'table\')\r\n        assert(#descendants == 1)\r\n        assert(descendants[1].object ~= nil and descendants[1].children ~= nil)\r\n        assert(#descendants[1].children == 1)\r\n        -- TODO: do something with the descendant\r\n        return true\r\n    end\r\n)\r\n"
      }
      VirtualFolderPath: "Tests"
    }
    Assets {
      Id: 12107956134505979727
      Name: "TestTableUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "local TestFramework = require(script.parent:GetCustomProperty(\'self\')) or error()\r\nlocal TableUtils = require(script:GetCustomProperty(\'TableUtils\')) or error()\r\n\r\nTestFramework.RunTest(\r\n    \'TableUtils.Keys\',\r\n    function()\r\n        local res = {hello = 1, 2, 3, 4, bye = 5}\r\n        res = TableUtils.Keys(res)\r\n        assert(res)\r\n        for k, v in pairs(res) do\r\n            assert(v)\r\n            -- print(v)\r\n        end\r\n        return true\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.Join\',\r\n    function()\r\n        local a, b = {bye = 156, 1, 2, 3, 4, 5}, {4, 5, 6, 7, hello = 9}\r\n        local res = TableUtils.Join(a, b)\r\n        for k, v in pairs(res) do\r\n            assert(k ~= nil)\r\n            assert(v ~= nil)\r\n            -- print(k)\r\n        end\r\n        return true\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.DeepCompare.EmptyTables\',\r\n    function()\r\n        local a = {}\r\n        local b = {}\r\n        local res = TableUtils.DeepCompare(a, b)\r\n        return res\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.DeepCompare.RealUsage\',\r\n    function()\r\n        local a = {5, hello = 7, {{7}}}\r\n        local b = {5, hello = 7, {{7}}}\r\n        local res = TableUtils.DeepCompare(a, b)\r\n        return res\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.Append & ComponentWiseCompare\',\r\n    function()\r\n        local a = {1, 3, 5, 7, 9}\r\n        local b = {2, 4, 6, 8, 10}\r\n        local res = TableUtils.Append(a, b)\r\n        if TableUtils.ComponentWiseCompare(res, {1, 3, 5, 7, 9, 2, 4, 6, 8, 10}) then\r\n            return true\r\n        else\r\n            return false\r\n        end\r\n    end\r\n)\r\nTestFramework.RunTest(\r\n    \'TableUtils.ReverseTable\',\r\n    function()\r\n        local table = {\'hello\', \'bye\', 8}\r\n        assert(table)\r\n        local res = TableUtils.ReverseTable(table)\r\n        for k, v in pairs(res) do\r\n            if table[v] ~= k then\r\n                return \'TableUtils.ReverseTable\', false\r\n            end\r\n        end\r\n        return true\r\n    end\r\n)\r\n"
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
        Text: "--[[ TableUtils.lua\r\n    ## TableUtils.Keys(table)\r\n        Returns a table of keys of the argument.\r\n        table: table\r\n    return: table\r\n    ## TableUtils.Join(a, b)\r\n        Returns a table with all entries of both tables. Keys contained in both have the value of a.\r\n        a: table\r\n        b: table\r\n    return: table\r\n    ## TableUtils.DeepCompare(a, b)\r\n        Compares a and b recursively for any \'table\' values.\r\n        a: table\r\n        b: table\r\n    return: boolean\r\n    ## TableUtils.Append(a,b)\r\n        Returns b appended to the end of a. Doesn\'t mutate a and b.\r\n        a: table\r\n        b:table\r\n    return: table\r\n    ## TableUtils.ReverseTable(table)\r\n        Returns a table with reversed table key and value pairs.\r\n        table: table\r\n    return: table\r\n]]\r\nTableUtils = {}\r\nfunction TableUtils.Keys(table)\r\n    assert(type(table) == \'table\')\r\n    local res = {}\r\n    for k in pairs(table) do\r\n        res[#res + 1] = k\r\n    end\r\n    return res\r\nend\r\nfunction TableUtils.Join(a, b)\r\n    assert(type(a) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    assert(type(b) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    local res = {}\r\n    for k, v in pairs(a) do\r\n        res[k] = v\r\n    end\r\n    for k, v in pairs(b) do\r\n        -- if res[k] then error(tostring(k)..\" is contained in both joined tables\")end\r\n        res[k] = res[k] or v\r\n    end\r\n    return res\r\nend\r\n\r\nfunction TableUtils.DeepCompare(a, b)\r\n    assert(type(a) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    assert(type(b) == \'table\', \'arguments must be tables, not \' .. tostring(type(a)))\r\n    local joined = TableUtils.Join(a, b)\r\n    for k in pairs(joined) do\r\n        if type(a[k]) ~= type(b[k]) then\r\n            return false\r\n        end\r\n        if type(a[k]) == \'table\' then\r\n            if TableUtils.DeepCompare(a[k], b[k]) == false then\r\n                return false\r\n            end\r\n        elseif a[k] ~= b[k] then\r\n            return false\r\n        end\r\n    end\r\n    return true\r\nend\r\nfunction TableUtils.Append(a, b)\r\n    assert(type(a) == \'table\')\r\n    assert(type(b) == \'table\')\r\n    -- TODO: docs\r\n    local res = {}\r\n    for i = 1, #a do\r\n        res[i] = a[i]\r\n    end\r\n    for i = 1, #b do\r\n        res[i + #a] = b[i]\r\n    end\r\n    return res\r\nend\r\nfunction TableUtils.ComponentWiseCompare(a, b)\r\n    assert(type(a) == \'table\')\r\n    assert(type(b) == \'table\')\r\n    local res = TableUtils.Join(a, b)\r\n    for k in pairs(res) do\r\n        if a[k] ~= b[k] then\r\n            return false\r\n        end\r\n    end\r\n    return true\r\nend\r\nfunction TableUtils.ReverseTable(table)\r\n    assert(type(table) == \'table\')\r\n    local res = {}\r\n    for k, v in pairs(table) do\r\n        assert(\r\n            type(v) == \'string\' or type(v) == \'number\',\r\n            \'Value of type \' .. tostring(type(v)) .. \" can\'t be used as a table key\"\r\n        )\r\n        res[v] = k\r\n    end\r\n    return res\r\nend\r\nreturn TableUtils\r\n"
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
      Id: 4666698430106189318
      Name: "TestFunctionalUtils"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Imports = _G[\'Imports\']\r\nlocal Tests = Imports.Tests\r\nlocal FunctionalUtils = Imports.Utils.FunctionalUtils\r\nlocal JSON = Imports.Utils.JSON\r\n\r\nTests.RunTest(\r\n    \'FunctionalUtils.Map\',\r\n    function()\r\n        local table = {0, 1, 2, 3, 4, 5}\r\n        local function func(_, _, elem)\r\n            return elem\r\n        end\r\n        FunctionalUtils.Map(table, func)\r\n        return true\r\n    end\r\n)\r\nTests.RunTest(\r\n    \'FunctionalUtils.Filter\',\r\n    function()\r\n        local table = {0, 1, 2, 3, 4, 5}\r\n        local function func(_, _, elem)\r\n            if elem % 2 == 0 then\r\n                return true\r\n            else\r\n                return false\r\n            end\r\n        end\r\n        local res = FunctionalUtils.Filter(table, func)\r\n        JSON.Stringify(res)\r\n        return true\r\n    end\r\n)\r\nTests.RunTest(\r\n    \'FunctionalUtils.Reduce\',\r\n    function()\r\n        local table = {0, 1, 2, 3, 4, 5}\r\n        local function func(_, _, elem, cumulativeSum)\r\n            return elem + cumulativeSum\r\n        end\r\n        local res = FunctionalUtils.Reduce(table, func)\r\n        JSON.Stringify(res)\r\n        return true\r\n    end\r\n)\r\n"
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
      Id: 13897313495961290138
      Name: "Tests"
      PlatformAssetType: 3
      TextAsset {
        Text: "Tests = {}\r\nfunction Tests.RunTest(testName, func)\r\n    assert(type(testName) == \'string\', \'testName must be a string\')\r\n    assert(\r\n        type(func) == \'function\',\r\n        [[\r\n        test function must be of type function.\r\n        NOTE:If you\\\'re trying to use a metatable call, wrap it in an anonymous function.\r\n            ]]\r\n    )\r\n    Tests.scheduledTests = Tests.scheduledTests or {}\r\n    Tests.scheduledTests[#Tests.scheduledTests + 1] = {testName = testName, func = func}\r\nend\r\nfunction Tests.RunAllTests()\r\n    Tests.scheduledTests = Tests.scheduledTests or {}\r\n    for i = 1, #Tests.scheduledTests do\r\n        -- TODO: better formatting\r\n        local currentTest = Tests.scheduledTests[i]\r\n        local res, msg = pcall(currentTest.func)\r\n        -- checks validity of the test name\r\n        local stringNameRepr = tostring(currentTest.testName) or \'\'\r\n        assert(\r\n            stringNameRepr ~= \'\' or type(currentTest.testName) == \'string\',\r\n            stringNameRepr .. \'is not a valid test name\'\r\n        )\r\n        assert(type(res) == \'boolean\', \'test \' .. currentTest.testName .. \' must return string, boolean\')\r\n        -- log test results\r\n        local dumpText = \'test: \' .. stringNameRepr .. string.rep(\' \', 50 - #stringNameRepr)\r\n        if res == false then\r\n            print(dumpText .. \'\\tUNSUCCESSFUL\' .. \'\\n\' .. msg)\r\n        else\r\n            print(dumpText .. \'\\tSUCCESSFUL\')\r\n        end\r\n    end\r\nend\r\n-- Task.Wait()\r\n-- Task.Spawn(RunAllTests)\r\nreturn Tests\r\n"
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
        Text: "-- TODO: docs\r\nlocal CoreObjectUtils = {}\r\n\r\nfunction CoreObjectUtils.GetDescendantsTree(object)\r\n    local res = {}\r\n    for k, v in ipairs(object:GetChildren()) do\r\n        res[k] = {object = v, children = CoreObjectUtils.GetDescendantsTree(v)}\r\n    end\r\n    return res\r\nend\r\nfunction CoreObjectUtils.FlattenDescendantTree(tree, prev)\r\n    local objects = prev or {}\r\n    for _, v in ipairs(tree) do\r\n        objects[#objects + 1] = v.object\r\n        if #v.children ~= 0 then\r\n            CoreObjectUtils.FlattenDescendantTree(v.children, objects)\r\n        end\r\n    end\r\n    return objects\r\nend\r\nreturn CoreObjectUtils\r\n"
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
    Assets {
      Id: 15456599419630513875
      Name: "ClientMain"
      PlatformAssetType: 3
      TextAsset {
        Text: "_G[\'Framework\'] =\r\n    require(script:GetCustomProperty(\'Namespace\')).__(\r\n    script:FindAncestorByName(script:GetCustomProperty(\'Parent\')),\r\n    require(script:GetCustomProperty(\'Namespace\'))()\r\n)\r\n\r\nFramework = _G[\'Framework\']\r\n\r\n--[[ Utility from namespace ]]\r\n --\r\n-- Demo = Framework.Demo.test;\r\n-- print(Demo.Demo());\r\n"
      }
    }
    Assets {
      Id: 17846557137340513976
      Name: "Main"
      PlatformAssetType: 3
      TextAsset {
        Text: "--_G[\"Framework\"] = require(script:GetCustomProperty(\"Namespace\")).__(script:FindAncestorByName(\"Framework\"), require(script:GetCustomProperty(\"Namespace\"))());\r\n_G[\'Imports\'] =\r\n    require(script:GetCustomProperty(\'Namespace\')).__(\r\n    script:FindAncestorByName(script:GetCustomProperty(\'Parent\')),\r\n    require(script:GetCustomProperty(\'Namespace\'))()\r\n)\r\n\r\nImports = _G[\'Imports\']\r\n\r\n-- RUN TESTS\r\nlocal Tests = Imports.Tests\r\nTask.Spawn(Tests.RunAllTests)\r\n"
      }
    }
    Assets {
      Id: 8485270801205398950
      Name: "Namespace"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Namespace = {}\r\n--\r\n\r\n--[[\r\n    Global references to local for performance\r\n]]\r\nlocal rawset = rawset\r\nlocal require = require\r\nlocal setmetatable = setmetatable\r\nlocal type = type\r\n--\r\n\r\n--[[\r\n    Create a new namespace with metatable\r\n    @param - a\r\n]]\r\nfunction Namespace.__call()\r\n    return setmetatable({__keys = {}}, Namespace)\r\nend\r\n--\r\n\r\n--[[\r\n    Indicates if the namespace key exist or not, and require\r\n    @param - b\r\n]] function Namespace:__index(b)\r\n    local k = self.__keys[b]\r\n\r\n    if k ~= nil then\r\n        local r = require(k)\r\n        rawset(self, k, r)\r\n\r\n        return r\r\n    end\r\nend\r\n--\r\n\r\n--[[\r\n    Assign new value to the table, if not string deffered require\r\n    @param - k\r\n    @param - v\r\n]] function Namespace:__newindex(\r\n    k,\r\n    v)\r\n    local t = type(v)\r\n\r\n    if t ~= \'string\' then\r\n        rawset(self, k, v)\r\n        return\r\n    end\r\n\r\n    self.__keys[k] = v\r\nend\r\n--\r\n\r\n--[[\r\n    Check if array or object/table has value or not\r\n    @param table - object/array\r\n    @param value - string\r\n\r\n    @return bool returns true or false\r\n]] function Namespace.HasValue(\r\n    table,\r\n    x)\r\n    for k, v in pairs(table) do\r\n        if v == x then\r\n            return true\r\n        end\r\n    end\r\n    return false\r\nend\r\n--\r\n\r\n--[[\r\n    Check if array or object/table has key or not\r\n    @param table - object/array\r\n    @param value - string\r\n\r\n    @return bool returns true or false\r\n]] function Namespace.HasKey(\r\n    table,\r\n    key)\r\n    return table[key] ~= nil\r\nend\r\n--\r\n\r\n--[[\r\n    Check if array or object/table has value or not\r\n    @param target - Core Object\r\n    @param parent - Core Object\r\n\r\n    @return - Mixed returns created namespace\r\n]] function Namespace.__(\r\n    target,\r\n    parent)\r\n    for _, obj in ipairs(target:GetChildren()) do\r\n        if obj:IsA(\'Script\') and obj:GetCustomProperty(\'self\') then\r\n            parent[obj.name] = obj:GetCustomProperty(\'self\')\r\n            for x, y in pairs(obj:GetCustomProperties()) do\r\n                if x ~= \'self\' then\r\n                    parent[obj.name][x] = y\r\n                end\r\n            end\r\n        elseif obj:IsA(\'Folder\') then\r\n            parent[obj.name] = Namespace(parent)\r\n            Namespace.__(obj, parent[obj.name])\r\n        elseif obj:IsA(\'NetworkContext\') then\r\n            parent[obj.name] = Namespace()\r\n            Namespace.__(obj, parent[obj.name])\r\n        end\r\n    end\r\n    return parent\r\nend\r\n\r\nreturn setmetatable(Namespace, Namespace)\r\n"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "87e9eb7845024304acfd5b4f4e3a43ed"
    OwnerAccountId: "609c6418ffe648c5a85e9dd78e174dbb"
    OwnerName: "nexovec"
  }
  SerializationVersion: 91
}
IncludesAllDependencies: true
