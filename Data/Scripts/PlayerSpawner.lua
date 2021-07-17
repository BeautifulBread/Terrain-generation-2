Game.playerJoinedEvent:Connect(
    function(player)
        player:Despawn()
        Task.Wait()
        player:Spawn({position = script.parent:FindChildByName('TerrainCube'):GetWorldPosition() + Vector3.UP * 100})
    end
)
