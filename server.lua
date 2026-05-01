local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('armorybox:server:openBox', function(slot)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end


    if Player.PlayerData.job.name ~= "police" then
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            description = 'You are not authorized to open this'
        })
        return
    end


    local removed = exports.ox_inventory:RemoveItem(src, 'police_armory_box', 1, nil, slot)

    if not removed then return end


    if Config.Random then
        local reward = Config.Rewards[math.random(#Config.Rewards)]
        exports.ox_inventory:AddItem(src, reward.item, reward.amount)
    else
        for _, reward in pairs(Config.Rewards) do
            exports.ox_inventory:AddItem(src, reward.item, reward.amount)
        end
    end

    TriggerClientEvent('ox_lib:notify', src, {
        type = 'success',
        description = 'Armory box opened'
    })
end)
