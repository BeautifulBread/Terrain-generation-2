local Imports = _G.Imports
local Noise = Imports.Math.Noise.require()
function PerlinNoiseDevice(mapSize, seed, amplitude, stretch)
    local self = {
        type = 'PerlinNoiseDevice',
        mapSize = mapSize,
        seed = seed,
        amplitude = amplitude or error('You have to supply an amplitude'),
        stretch = stretch or error('You have to supply a stretch')
    }
    function self.__tostring()
        return self.type
    end
    function self.__call(_, options)
        -- input validation
        assert(
            options,
            [[You've failed to pass options to BasicTerrainBuilderDevice! Mandatory options:
            heighMap: table]]
        )
        if options.heightMap then
            local msg = 'Dimension mismatch'
            assert(self.mapSize.x == #options.heightMap[1], msg)
            assert(self.mapSize.y == #options.heightMap, msg)
        end
        options.position = options.position or Vector3.ZERO

        -- terrain generation
        local MAX_ITERATIONS_PER_TICK = 5000

        -- FIXME: error handliong on omitting seed
        Noise.seed(self.seed)

        local width = self.mapSize.x
        local height = self.mapSize.y
        local noiseMap = {}
        local iters = 0
        for i = 1, height do
            noiseMap[i] = {}
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERATIONS_PER_TICK == 0 then
                    Task.Wait()
                end
                noiseMap[i][ii] = (Noise.make(i * self.stretch.x, ii * self.stretch.y) + 1) / 2 * amplitude
                if options.heightMap then
                    noiseMap[i][ii] = noiseMap[i][ii] + options.heightMap[i][ii]
                end
            end
        end
        local ret = options
        ret.heightMap = noiseMap
        return ret
    end
    return setmetatable(self, self)
end
return PerlinNoiseDevice
