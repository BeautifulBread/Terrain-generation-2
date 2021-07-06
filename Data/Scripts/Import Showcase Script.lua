local Imports = _G.Imports

local NewScript2 = Imports.NewScript2.require()
NewScript2.SampleFunction()

local JSON = Imports.Utils.JSON.require()
print(JSON.Stringify({Vector3.New(0,60,213)}))

