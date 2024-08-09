local framework = Config.framework

if framework == 'esx' then
    ESX = exports["es_extended"]:getSharedObject()
elseif framework == 'qbcore' then
    QBCore = exports['qb-core']:GetCoreObject()
elseif framework == 'ox_core' then
    OXCore = exports['ox_core']:getSharedObject()
elseif framework == 'nd_core' then
    NDCore = exports['nd-core']:GetCoreObject()
elseif framework == 'qbx' then
    QBX = exports['qbx']:GetCoreObject()
end

if framework == 'esx' then
    ESX.RegisterServerCallback('Danny-NpcRob:amount', function(source, cb)
        local cops = getOnlineCops()
        if cops >= Config.MinimumCops then
            cb(false)
        else
            cb(true)
        end
    end)
elseif framework == 'qbcore' then
    QBCore.Functions.CreateCallback('Danny-NpcRob:amount', function(source, cb)
        local cops = getOnlineCops()
        if cops >= Config.MinimumCops then
            cb(false)
        else
            cb(true)
        end
    end)
elseif framework == 'ox_core' then
    OXCore.RegisterCallback('Danny-NpcRob:amount', function(source, cb)
        local cops = getOnlineCops()
        if cops >= Config.MinimumCops then
            cb(false)
        else
            cb(true)
        end
    end)
elseif framework == 'nd_core' then
    NDCore.RegisterCallback('Danny-NpcRob:amount', function(source, cb)
        local cops = getOnlineCops()
        if cops >= Config.MinimumCops then
            cb(false)
        else
            cb(true)
        end
    end)
elseif framework == 'qbx' then
    QBX.Functions.CreateCallback('Danny-NpcRob:amount', function(source, cb)
        local cops = getOnlineCops()
        if cops >= Config.MinimumCops then
            cb(false)
        else
            cb(true)
        end
    end)
end

function getOnlineCops()
    local players
    if framework == 'esx' then
        players = ESX.GetPlayers()
    elseif framework == 'qbcore' then
        players = QBCore.Functions.GetPlayers()
    elseif framework == 'ox_core' then
        players = OXCore.GetPlayers()
    elseif framework == 'nd_core' then
        players = NDCore.Functions.GetPlayers()
    elseif framework == 'qbx' then
        players = QBX.Functions.GetPlayers()
    end

    local cops = 0
    for i = 1, #players, 1 do
        local player
        if framework == 'esx' then
            player = ESX.GetPlayerFromId(players[i])
        elseif framework == 'qbcore' then
            player = QBCore.Functions.GetPlayer(players[i])
        elseif framework == 'ox_core' then
            player = OXCore.GetPlayer(players[i])
        elseif framework == 'nd_core' then
            player = NDCore.Functions.GetPlayer(players[i])
        elseif framework == 'qbx' then
            player = QBX.Functions.GetPlayer(players[i])
        end

        if player.job.name == Config.PoliceJobName then
            cops = cops + 1
        end
    end
    return cops
end

local items = Config.Items

RegisterNetEvent('Danny-NpcRob:server:robNpc', function(entityId)
    local xPlayer
    if framework == 'esx' then
        xPlayer = ESX.GetPlayerFromId(source)
    elseif framework == 'qbcore' then
        xPlayer = QBCore.Functions.GetPlayer(source)
    elseif framework == 'ox_core' then
        xPlayer = OXCore.GetPlayer(source)
    elseif framework == 'nd_core' then
        xPlayer = NDCore.GetPlayer(source)
    elseif framework == 'qbx' then
        xPlayer = QBX.Functions.GetPlayer(source)
    end

    local itemIndex = math.random(1, #items)
    local itemName = items[itemIndex].itemName
    local itemAmount = math.random(items[itemIndex].itemRandomAmount[1], items[itemIndex].itemRandomAmount[2])

    if xPlayer then
        if framework == 'esx' then
            xPlayer.addInventoryItem(itemName, itemAmount)
        elseif framework == 'qbcore' then
            xPlayer.Functions.AddItem(itemName, itemAmount)
        elseif framework == 'ox_core' then
            xPlayer.addItem(itemName, itemAmount)
        elseif framework == 'nd_core' then
            xPlayer.addItem(itemName, itemAmount)
        elseif framework == 'qbx' then
            xPlayer.Functions.AddItem(itemName, itemAmount)
        end
    end
end)

RegisterNetEvent('Danny-NpcRob:server:policeAlert', function (pos)
    TriggerClientEvent('Danny-NpcRob:client:policeAlert', -1, pos)
end)
