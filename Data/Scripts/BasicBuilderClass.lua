function BasicBuilderClass(options, asset)
    local self = {
        options = options,
        asset = asset
    }
    function self.Build()
        local spawnParams = self.options.spawnParams
        local iters = 0
        local MAX_ITERS_PER_TICK = 100
        for i = 1, options.height do
            for ii = 1, options.width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    if iters > 10000 then
                        MAX_ITERS_PER_TICK = 40
                    end
                    Task.Wait()
                end
                local thisParams = spawnParams[i][ii]
                World.SpawnAsset(self.asset, thisParams)
            end
        end
    end
    return setmetatable(self, self)
end
return BasicBuilderClass
