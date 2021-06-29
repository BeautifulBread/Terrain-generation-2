--_G["Framework"] = require(script:GetCustomProperty("Namespace")).__(script:FindAncestorByName("Framework"), require(script:GetCustomProperty("Namespace"))());
_G['Imports'] =
    require(script:GetCustomProperty('Namespace')).__(
    script:FindAncestorByName(script:GetCustomProperty('Parent')),
    require(script:GetCustomProperty('Namespace'))()
)

Imports = _G['Imports']

-- RUN TESTS
local Tests = Imports.Tests
Task.Spawn(Tests.RunAllTests)
