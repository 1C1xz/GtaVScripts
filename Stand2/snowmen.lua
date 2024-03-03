menu.action(worldRoot, "Teleport to an active hooker", {}, "", function()
    for i, peds in pairs(entities.get_all_peds_as_handles()) do 
        if PED.IS_PED_USING_SCENARIO(peds, "WORLD_HUMAN_PROSTITUTE_LOW_CLASS") or PED.IS_PED_USING_SCENARIO(peds, "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS") then 
            local coords = ENTITY.GET_ENTITY_COORDS(peds, 0)
            PLAYER.START_PLAYER_TELEPORT(players.user(), coords.x, coords.y, coords.z, 180, true, true, true)
            return
        end
    util.toast("No hookers found")
    end
end)
