RegisterNetEvent('armorybox:client:useBox', function(data, slot)
    local QBCore = exports['qb-core']:GetCoreObject()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.job.name ~= "police" then
        lib.notify({
            type = 'error',
            description = 'You are not police'
        })
        return
    end

    local success = lib.progressBar({
        duration = 3000,
        label = 'Opening Armory Box...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'anim@gangops@facility@servers@',
            clip = 'hotwire',
            flag = 17
        }
    })

    if success then
        TriggerServerEvent('armorybox:server:openBox', slot)
    end
end)
