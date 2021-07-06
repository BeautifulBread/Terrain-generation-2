--[[ README.lua !!
1. Put 'Module manager LEAVE ON TOP!' at the top of your hierarchy.

2. Put 'ScriptFolder' into hierarchy

3. Put you scripts into the 'ScriptFolder'

I added 'Import Showcase Script' to showcase how this works.(after 3.)

4. Define a 'self' asset property on your script that points to itself

5. To require a file:
local RequireExample = _G.Imports.ScriptName.require();

]]