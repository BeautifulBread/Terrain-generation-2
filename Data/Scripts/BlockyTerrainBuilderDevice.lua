-- local Imports = _G.Imports
-- local TableUtils = Imports.Utils.TableUtils.require()
function BlockyTerrainBuilderDevice(parent, blockSize)
    local self = {
        type = 'BlockyTerrainBuilderDevice',
        parent = parent,
        blockSize = blockSize or 1,
        inputKeys = {'heightMap'},
        outputKeys = {'spawnParams', 'width', 'height','blockSize'}
    }
    function self.__call(_, options)
        -- input validation
        assert(
            options,
            [[You've failed to pass options to ]] .. self.type .. [[! Mandatory options:
            heighMap: table]]
        )
        assert(options.heightMap, 'There was no heightMap supplied to ' .. self.type)
        if #options.heightMap == 0 then
            return {heightMap = {}}
        end
        assert(type(options.heightMap) == 'table', "You've passed invalid heightMap to " .. self.type)
        options.position = options.position or Vector3.ZERO
        assert(
            type(options.position) == 'userdata' and options.position.type == 'Vector3',
            "You've passed invalid position argument to " .. self.type
        )
        -- TODO:
        -- actual building
        local SPACING = self.blockSize * 100
        options.blockSize = self.blockSize
        local width = #options.heightMap[1]
        local height = #options.heightMap
        -- -- compute terrain assets positions
        local heightMap = options.heightMap -- is an optimization
        local iters = 0 -- to avoid instruction limit errors
        local MAX_ITERS_PER_TICK = 10000
        local spawnParams = {}
        for i = 1, height do
            spawnParams[i] = {}
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    Task.Wait()
                end
                local zOffset = heightMap[i][ii]
                local position = Vector3.New(ii * SPACING, i * SPACING, (zOffset // SPACING) * SPACING)
                position = position + options.position - Vector3.New(50, 50, 0)
                position.z = (position.z // SPACING) * SPACING
                spawnParams[i][ii] = {
                    parent = self.parent,
                    position = position,
                    scale = Vector3.ONE * self.blockSize
                }
            end
        end

        -- -- correct holes when neighbouring zOffset is too much
        iters = iters % MAX_ITERS_PER_TICK
        MAX_ITERS_PER_TICK = 5000
        for i = 1, height do
            for ii = 1, width do
                iters = iters + 1
                if iters % MAX_ITERS_PER_TICK == 0 then
                    Task.Wait()
                end
                local neighbours = {}
                neighbours.u = spawnParams[i][ii + 1]
                neighbours.d = spawnParams[i][ii - 1]
                if spawnParams[i + 1] then
                    neighbours.r = spawnParams[i + 1][ii]
                end
                if spawnParams[i - 1] then
                    neighbours.l = spawnParams[i - 1][ii]
                end
                local offsets = {}
                for k, v in pairs(neighbours) do
                    assert(spawnParams[i][ii])
                    offsets[k] = spawnParams[i][ii].position.z - v.position.z
                end
                local maxOffset = 0
                for _, v in pairs(offsets) do
                    assert(v)
                    if v > maxOffset then
                        maxOffset = v
                    end
                end
                assert(maxOffset and type(maxOffset) == 'number', type(maxOffset))
                for l = 1, maxOffset // SPACING - 1 do
                    local position = Vector3.New(spawnParams[i][ii].position - Vector3.UP * l * SPACING)
                    -- CoreDebug.DrawBox(position + self.parent:GetWorldPosition(), Vector3.New(1,1,1) * SPACING/2, {duration = 500})
                    spawnParams[0] = spawnParams[0] or {}
                    spawnParams[0][#spawnParams[0] + 1] = {
                        position = position,
                        scale = Vector3.New(spawnParams[i][ii].scale),
                        parent = spawnParams[i][ii].parent
                    }
                end
            end
        end
        options.width = width
        options.height = height
        options.spawnParams = spawnParams
        return options
    end
    return setmetatable(self, self)
end
return BlockyTerrainBuilderDevice
