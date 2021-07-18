local Imports = _G.Imports
local Noise = Imports.Math.Noise.require()
-- local SimplexNoise = Imports.Math.SimplexNoise.require()
function PerlinNoiseDevice(mapSize, seed, amplitude, stretch)
    local self = {
        type = 'PerlinNoiseDevice',
        mapSize = mapSize,
        seed = seed,
        amplitude = amplitude or error('You have to supply an amplitude'),
        stretch = stretch or error('You have to supply a stretch'),
        inputKeys = {'heightMap'},
        outputKeys = {'heightMap'}
    }
    function self.__tostring()
        return self.type
    end
    function self.__call(_, options)
        -- input validation
        assert(
            options,
            [[You've failed to pass options to ]] .. self.type .. [[! Elective options:
            heighMap: table]]
        )
        if options.heightMap then
            local msg = 'Dimension mismatch'
            assert(self.mapSize.x == #options.heightMap[1], msg)
            assert(self.mapSize.y == #options.heightMap, msg)
        end
        options.position = options.position or Vector3.ZERO

        -- terrain generation
        local MAX_ITERATIONS_PER_TICK = 2000

        -- FIXME: error handling on omitting seed
        Noise.seed(self.seed)
        -- local noise = SimplexNoise()
        -- noise.Noise(self.seed)

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
                -- coroutine.yield("HI people")
                end
                -- noiseMap[i][ii] =
                --     (noise.Evaluate(Vector3.New(i * self.stretch.x, ii * self.stretch.y, -10)) * amplitude + 1) / 2
                -- noiseMap[i][ii] = noise.Evaluate(Vector3.New(i * self.stretch.x*10000, ii * self.stretch.y*&10000,0))* 20000
                noiseMap[i][ii] = (Noise.make(i * self.stretch.x, ii * self.stretch.y) * amplitude + 1) / 2
                if options.heightMap then
                    noiseMap[i][ii] = noiseMap[i][ii] + options.heightMap[i][ii]
                end
            end
        end
        local ret = options
        ret.heightMap = noiseMap
        -- print("Hello")
        return ret
    end
    return setmetatable(self, self)
end
return PerlinNoiseDevice
