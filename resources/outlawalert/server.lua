RegisterServerEvent('thiefInProgress')
AddEventHandler('thiefInProgress', function(street1, street2, veh, sex)
	if veh == "NULL" then
		TriggerClientEvent("outlawNotify", -1, "~r~Roubo de carro por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
	else
		TriggerClientEvent("outlawNotify", -1, "~r~Roubo de um Veiculo modelo ~w~"..veh.." ~r~por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
	end
end)

RegisterServerEvent('thiefInProgressS1')
AddEventHandler('thiefInProgressS1', function(street1, veh, sex)
	if veh == "NULL" then
		TriggerClientEvent("outlawNotify", -1, "~r~Roubo de carro por um ~w~"..sex.." ~r~na ~w~"..street1)
	else
		TriggerClientEvent("outlawNotify", -1, "~r~Roubo de um ~w~"..veh.." ~r~por um ~w~"..sex.." ~r~na ~w~"..street1)
	end
end)

RegisterServerEvent('meleeInProgress')
AddEventHandler('meleeInProgress', function(street1, street2, sex)
	TriggerClientEvent("outlawNotify", -1, "~r~Briga iniciada por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
end)

RegisterServerEvent('meleeInProgressS1')
AddEventHandler('meleeInProgressS1', function(street1, sex)
	TriggerClientEvent("outlawNotify", -1, "~r~Briga iniciada por um ~w~"..sex.." ~r~na ~w~"..street1)
end)


RegisterServerEvent('gunshotInProgress')
AddEventHandler('gunshotInProgress', function(street1, street2, sex)
	TriggerClientEvent("outlawNotify", -1, "~r~Disparo de arma de fogo por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
end)

RegisterServerEvent('gunshotInProgressS1')
AddEventHandler('gunshotInProgressS1', function(street1, sex)
	TriggerClientEvent("outlawNotify", -1, "~r~Disparo de arma de fogo por um ~w~"..sex.." ~r~na ~w~"..street1)
end)

RegisterServerEvent('thiefInProgressPos')
AddEventHandler('thiefInProgressPos', function(tx, ty, tz)
	TriggerClientEvent('thiefPlace', -1, tx, ty, tz)
end)

RegisterServerEvent('gunshotInProgressPos')
AddEventHandler('gunshotInProgressPos', function(gx, gy, gz)
	TriggerClientEvent('gunshotPlace', -1, gx, gy, gz)
end)

RegisterServerEvent('meleeInProgressPos')
AddEventHandler('meleeInProgressPos', function(mx, my, mz)
	TriggerClientEvent('meleePlace', -1, mx, my, mz)
end)

RegisterServerEvent('robbaryInProgressPos') -- adicione esse evento
AddEventHandler('robbaryInProgressPos', function(gx, gy, gz)
    TriggerClientEvent('robbaryPlace', -1, gx, gy, gz)
end)

RegisterServerEvent('robbaryInProgress') -- adicione esse evento
AddEventHandler('robbaryInProgress', function(street1, street2, sex)
    TriggerClientEvent("outlawNotify", -1, "~r~Robbary started by a ~w~"..sex.." ~r~between ~w~"..street1.."~r~ and ~w~"..street2)
end)

-- outlawalert_client.lua
RegisterNetEvent('robbaryPlace') -- adicione esse evento
AddEventHandler('robbaryPlace', function(gx, gy, gz)
    for i = 0, #PedModels do
        if not origin and IsPedModel(GetPlayerPed(-1),GetHashKey(PedModels[i])) then
            if gunshotAlert then
                local transG = 250
                local gunshotBlip = AddBlipForCoord(gx, gy, gz)
                SetBlipSprite(gunshotBlip,  103) -- aqui voce troca o id da imagem
                SetBlipColour(gunshotBlip,  1) -- aqui voce troca o id da cor
                SetBlipAlpha(gunshotBlip,  transG)
                SetBlipAsShortRange(gunshotBlip,  1)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString("Roubo a loja")
                EndTextCommandSetBlipName(gunshotBlip)
                while transG ~= 0 do
                    Wait(6000) -- aqui voce aumenta ou diminui o tempo que a blip aparece
                    transG = transG - 1
                    SetBlipAlpha(gunshotBlip,  transG)
                    if transG == 0 then
                        SetBlipSprite(gunshotBlip,  2)
                        return end
                end
               
            end
        end
    end
end)