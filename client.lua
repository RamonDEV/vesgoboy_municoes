RegisterNetEvent('vesgoboy_municoes:giveammo')
AddEventHandler('vesgoboy_municoes:giveammo', function(calibre, result)
    local playerPed = PlayerPedId()
    local hasw, playerw = GetCurrentPedWeapon(playerPed,1)
        
    for i,v in pairs(Config.Municoes) do
        for idarma, armas in pairs(v) do
            if calibre == i then
                if playerw == GetHashKey(armas) then
                    local magazine = GetAmmoInPedWeapon(playerPed, armas)
                    local quantidademunicao = magazine + result

                    if magazine >= Config.MaxAmmo then
                        TriggerEvent('redem_roleplay:Tip',Config.Text.maxammoequiped..Config.MaxAmmo..Config.Text.ammoequiped, 4000)
                    else
                        if quantidademunicao <= Config.MaxAmmo then
                            local ammotype = GetPedAmmoTypeFromWeapon(playerPed, armas)
                            local ammo = GetPedAmmoByType(playerPed, ammotype)
                            local ammo = ammo + result
                            SetPedAmmo(playerPed, GetHashKey(armas), ammo)
                            TriggerEvent('redem_roleplay:Tip',Config.Text.equiped..result.."x "..Config.Text.ammo, 4000)
                            TriggerServerEvent("vesgoboy_municoes:removercapsulas", calibre, result)
                        elseif quantidademunicao > Config.MaxAmmo then
                            TriggerEvent('redem_roleplay:Tip',Config.Text.limitammo..Config.MaxAmmo..Config.Text.eachweapon, 4000)
                        end
                    end
                elseif playerw == GetHashKey('WEAPON_UNARMED') then
                    if calibre == "arrows" then
                        local magazine = GetAmmoInPedWeapon(playerPed, armas)
                        local quantidademunicao = magazine + result

                        if magazine >= Config.MaxArrow then
                            TriggerEvent('redem_roleplay:Tip',Config.Text.maxarrowequiped..Config.MaxArrow..Config.Text.arrowsequiped, 4000)
                        else
                            if quantidademunicao <= Config.MaxArrow then
                                local ammotype = GetPedAmmoTypeFromWeapon(playerPed, armas)
                                local ammo = GetPedAmmoByType(playerPed, ammotype)
                                local ammo = ammo + result
                                SetPedAmmo(playerPed, GetHashKey(armas), ammo)
                                TriggerEvent('redem_roleplay:Tip',Config.Text.equiped..result.."x "..Config.Text.arrow, 4000)
                                TriggerServerEvent("vesgoboy_municoes:removercapsulas", calibre, result)
                            elseif quantidademunicao > Config.MaxArrow then
                                TriggerEvent('redem_roleplay:Tip',Config.Text.limitammo.." "..Config.MaxArrow.."x "..Config.Text.arrow, 4000)
                            end
                        end
                    else
                        TriggerEvent('redem_roleplay:Tip',Config.Text.segurandoarma, 4000)
                    end
                else
                    if calibre == "arrows" then
                        TriggerEvent('redem_roleplay:Tip',Config.Text.arrowinthegun, 4000)
                    end
                end
            end
        end
    end
end)

--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------

function QuantidadeMunicao(calibre)
    CancelOnscreenKeyboard()
    AddTextEntry("QUANTIDADE_MUNICAO", Config.Text.ammolabel)
    DisplayOnscreenKeyboard(3, "QUANTIDADE_MUNICAO", "", "", "", "", "", 2)
    while (UpdateOnscreenKeyboard() == 0) do
        Citizen.Wait(1);
    end
    while (UpdateOnscreenKeyboard() == 2) do
        Citizen.Wait(1);
        break
    end
    while (UpdateOnscreenKeyboard() == 1) do
        Citizen.Wait(1)
        if (GetOnscreenKeyboardResult()) then
            local result = GetOnscreenKeyboardResult()
            if result ~= "" then
                TriggerServerEvent("vesgoboy_municoes:contarprojeteis", calibre, tonumber(result))
                break
            end
        end
    end
end

RegisterNetEvent('vesgoboy_municoes:equiparammo')
AddEventHandler('vesgoboy_municoes:equiparammo', function(calibre)
    --TriggerEvent("redemrp_inventory:closeinv")
    --Citizen.Wait(500)
    QuantidadeMunicao(calibre)
end)

RegisterNetEvent('vesgoboy_municoes:arcoefrecha')
AddEventHandler('vesgoboy_municoes:arcoefrecha', function(calibre)
    local ammotype = GetPedAmmoTypeFromWeapon(playerPed, armas)
    local ammo = GetPedAmmoByType(playerPed, ammotype)
    local ammo = ammo + result
    SetPedAmmo(playerPed, GetHashKey(armas), ammo)
end)
