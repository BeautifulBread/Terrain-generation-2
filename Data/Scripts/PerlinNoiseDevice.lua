local Imports = _G.Imports
local Noise = Imports.Math.Noise.require()
function PerlinNoiseDevice(seed, amplitude, stretch)
    local self = {
        type = 'PerlinNoiseDevice',
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
        assert(options.heightMap, 'There was no heightMap supplied to BasicTerrainBuilderDevice')
        assert(type(options.heightMap) == 'table', "You've passed invalid heightMap to BasicTerrainBuilderDevice")
        options.position = options.position or Vector3.ZERO

        -- terrain generation
        local MAX_ITERATIONS_PER_TICK = 1000

        -- FIXME: error handliong on omitting seed
        Noise.seed(self.seed)

        local width = #options.heightMap[1]
        local height = #options.heightMap
        local noiseMap = {}
        local iters = 0
        for i = 1, height do
            noiseMap[i] = {}
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERATIONS_PER_TICK == 0 then
                    Task.Wait()
                end
                noiseMap[i][ii] =
                    options.heightMap[i][ii] + (Noise.make(i * self.stretch.x, ii * self.stretch.y) + 1) / 2 * amplitude
            end
        end
        local ret = options
        ret.heightMap = noiseMap
        return ret
    end
    return setmetatable(self, self)
end
return PerlinNoiseDevice
