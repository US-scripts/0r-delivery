RegisterCommand(Config.Commands.tabletCommand, function(source)
    local src = source
    TriggerClientEvent("0r-delivery:Client:OpenTablet", src)
end)

RegisterCommand(Config.Commands.acceptInv, function(source)
    local src = source
    TriggerClientEvent("0r-delivery:Client:AcceptInvitation", src)
end)

RegisterCommand(Config.Commands.denyInv, function(source)
    local src = source
    TriggerClientEvent("0r-delivery:Client:DenyInvitation", src)
end)

RegisterCommand(Config.Commands.blockInvitations, function(source)
    local src = source
    TriggerClientEvent("0r-delivery:Client:BlockInvitations", src)
end)

RegisterCommand(Config.Commands.leaveteam, function(source)
    local src = source
    TriggerClientEvent("0r-delivery:Client:LeaveCurrentTeam", src)
end)

if Config.Tablet.active then
    if Config.FrameWork == "qb" then
        Koci.Framework.Functions.CreateUseableItem(Config.Tablet.itemName, function(source)
            local src = source
            TriggerClientEvent("0r-delivery:Client:OpenTablet", src)
        end)
    elseif Config.FrameWork == "esx" then
        Koci.Framework.RegisterUsableItem(Config.Tablet.itemName, function(source)
            local src = source
            TriggerClientEvent("0r-delivery:Client:OpenTablet", src)
        end)
    end
end
