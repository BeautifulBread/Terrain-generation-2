local Imports = _G.Imports
local Tests = Imports.Tests.require()
Task.Wait()
Task.Spawn(Tests.RunAllTests)
