local function DoFunStuff(i)
    local i = i or 0
    repeat
        if i % 5000 == 0 then
            coroutine.yield(i)
        end
        i = i + 1
    until i < 0
end
-- -- NOT RECOMMENDED, throws yielding errors, but does execute
-- repeat
--     xpcall(
--         DoFunStuff,
--         function(err)
--             print('wow we really caught the')
--             print(err)
--             print(' exception')
--             Task.Wait(1)
--         end
--     )
-- until true
local cr = coroutine.create(DoFunStuff)
local prevI
local timer = time()
local switch = false
local counter = 0
repeat
    counter = counter+1
    success, i = coroutine.resume(cr, prevI)
    if success == true then
        prevI = i
    else
        print(tostring(success).."|"..tostring(time() - timer).."|"..tostring(i))
        -- print(counter)
        cr = coroutine.create(DoFunStuff)
        Task.Wait()
    end
    -- if prevI >= 100000000 then
    --     switch = true
    -- end
until switch
print(time() - timer)
