data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
		data = call
end)

local municoes = {}

Citizen.CreateThread(function()
    local _source = source
    for i,v in pairs(Config.Municoes) do
        local municao = i
        local armas = v
        table.insert(municoes, municao)
    end

    for idmuni,calibre in pairs(municoes) do
        RegisterServerEvent("RegisterUsableItem:"..calibre)
        AddEventHandler("RegisterUsableItem:"..calibre, function(source)
            local _source = source
	    TriggerClientEvent("redemrp_inventory:closeinv",_source)
            TriggerClientEvent('vesgoboy_municoes:equiparammo', _source, calibre)
        end)
    end
end)

RegisterServerEvent('vesgoboy_municoes:contarprojeteis')
AddEventHandler('vesgoboy_municoes:contarprojeteis', function(calibre, result)
	local _source = source
    local ItemData = data.getItem(_source, calibre)
    local quantidademuni = ItemData.ItemAmount
    local quatidadeusar = result

    if quantidademuni >= result then
        TriggerClientEvent('vesgoboy_municoes:giveammo', _source, calibre, result)
    else
        TriggerClientEvent('redem_roleplay:Tip', _source, Config.Text.nohaveammo, 4000)
    end
end)

RegisterServerEvent('vesgoboy_municoes:removercapsulas')
AddEventHandler('vesgoboy_municoes:removercapsulas', function(calibre, result)
	local _source = source
    local ItemData = data.getItem(_source, calibre)
    ItemData.RemoveItem(result)
end)

RegisterServerEvent("RegisterUsableItem:revolver_ammo_box")
AddEventHandler("RegisterUsableItem:revolver_ammo_box", function(source)
    local _source = source
    local CaixadeMunicao = data.getItem(_source, "revolver_ammo_box")
    local Municao = data.getItem(_source, "revolver_ammo")
    CaixadeMunicao.RemoveItem(1)
    Municao.AddItem(30)
end)

RegisterServerEvent("RegisterUsableItem:pistol_ammo_box")
AddEventHandler("RegisterUsableItem:pistol_ammo_box", function(source)
    local _source = source
    local CaixadeMunicao = data.getItem(_source, "pistol_ammo_box")
    local Municao = data.getItem(_source, "pistol_ammo")
    CaixadeMunicao.RemoveItem(1)
    Municao.AddItem(30)
end)

RegisterServerEvent("RegisterUsableItem:22_ammo_box")
AddEventHandler("RegisterUsableItem:22_ammo_box", function(source)
    local _source = source
    local CaixadeMunicao = data.getItem(_source, "22_ammo_box")
    local Municao = data.getItem(_source, "22_ammo")
    CaixadeMunicao.RemoveItem(1)
    Municao.AddItem(30)
end)

RegisterServerEvent("RegisterUsableItem:rifle_ammo_box")
AddEventHandler("RegisterUsableItem:rifle_ammo_box", function(source)
    local _source = source
    local CaixadeMunicao = data.getItem(_source, "rifle_ammo_box")
    local Municao = data.getItem(_source, "rifle_ammo")
    CaixadeMunicao.RemoveItem(1)
    Municao.AddItem(30)
end)

RegisterServerEvent("RegisterUsableItem:shotgun_ammo_box")
AddEventHandler("RegisterUsableItem:shotgun_ammo_box", function(source)
    local _source = source
    local CaixadeMunicao = data.getItem(_source, "shotgun_ammo_box")
    local Municao = data.getItem(_source, "shotgun_ammo")
    CaixadeMunicao.RemoveItem(1)
    Municao.AddItem(30)
end)

RegisterServerEvent("RegisterUsableItem:repeator_ammo_box")
AddEventHandler("RegisterUsableItem:repeator_ammo_box", function(source)
    local _source = source
    local CaixadeMunicao = data.getItem(_source, "repeator_ammo_box")
    local Municao = data.getItem(_source, "repeator_ammo")
    CaixadeMunicao.RemoveItem(1)
    Municao.AddItem(30)
end)

RegisterServerEvent("RegisterUsableItem:snipe_ammo_box")
AddEventHandler("RegisterUsableItem:snipe_ammo_box", function(source)
    local _source = source
    local CaixadeMunicao = data.getItem(_source, "snipe_ammo_box")
    local Municao = data.getItem(_source, "snipe_ammo")
    CaixadeMunicao.RemoveItem(1)
    Municao.AddItem(30)
end)
