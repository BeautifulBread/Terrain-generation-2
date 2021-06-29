_G['Framework'] =
    require(script:GetCustomProperty('Namespace')).__(
    script:FindAncestorByName(script:GetCustomProperty('Parent')),
    require(script:GetCustomProperty('Namespace'))()
)

Framework = _G['Framework']

--[[ Utility from namespace ]]
 --
-- Demo = Framework.Demo.test;
-- print(Demo.Demo());
