CCserver = Tunnel.getInterface("customchat","customchat")

local chatInputActive = false
local chatInputActivating = false

local function trim(s)
  return s:match'^%s*(.*%S)' or ''
end
local playerColor = {0,0,0}
AddEventHandler("playerSpawned",function()
	local r = math.random(10,250)
	local g = math.random(10,250) 
	local b = math.random(10,250)
	playerColor = {r,g,b}
end)
-- proximity chat
RegisterNetEvent('sendOLXMessage')
AddEventHandler('sendOLXMessage', function(id, name, message,user_id,identity)
    TriggerEvent('chatMessage', "OLX (".. identity.name .. " " .. identity.firstname ..")", {228,120,51}, message)
end)

RegisterNetEvent('sendTwitterMessage')
AddEventHandler('sendTwitterMessage', function(id, name, message,user_id,identity)
	TriggerEvent('chatMessage', "Twitter (@".. identity.name .. " " .. identity.firstname ..")", {0, 170, 255}, message)
end)

RegisterNetEvent('sendAnonimoMessage')
AddEventHandler('sendAnonimoMessage', function(id, name, message,user_id,identity)
	TriggerEvent('chatMessage', "@Anonimo ", {128, 128, 128}, message)
end)

RegisterNetEvent('sendFORARPMessage')
AddEventHandler('sendFORARPMessage', function(id, name, message,user_id,identity)
	TriggerEvent('chatMessage', "FORA DO RP (" .. identity.name .. " " .. identity.firstname .. " [" .. user_id .. "]" .. ")", {0, 200, 0}, message)

end)

RegisterNetEvent('send190Message')
AddEventHandler('send190Message', function(id, name, message,user_id,identity)
	TriggerEvent('chatMessage', "190 | (" .. identity.name .. " " .. identity.firstname .. ")", {0, 0, 255}, message)
end)

RegisterNetEvent('send192Message')
AddEventHandler('send192Message', function(id, name, message,user_id,identity)
	TriggerEvent('chatMessage', "192 | (" .. identity.name .. " " .. identity.firstname .. ")", {205, 0, 0}, message)
end)

-- custom chat
RegisterNetEvent('chatMessage')
AddEventHandler('chatMessage', function(name, color, message)
    SendNUIMessage({
        name = name,
        color = color,
        message = message
    })
end)

RegisterNUICallback('chatResult', function(data, cb)
    chatInputActive = false

    SetNuiFocus(false)

    if data.message and trim(data.message) ~= "" then
        local id = PlayerId()

        local r, g, b = GetPlayerRgbColour(id, _i, _i, _i)
        --local r, g, b = 255, 128, 0

        TriggerServerEvent('chatMessageEntered', GetPlayerName(id), { r, g, b }, data.message)
    end

    cb('ok')
end)

Citizen.CreateThread(function()
    SetTextChatEnabled(false)
    Wait(100)

    SendNUIMessage({
    	playername = GetPlayerName(PlayerId())
    })

    while true do
        Wait(0)

        if not chatInputActive then
            if IsControlPressed(0, 245) --[[ INPUT_MP_TEXT_CHAT_ALL ]] then
                chatInputActive = true
                chatInputActivating = true

                SendNUIMessage({
                    meta = 'openChatBox'
                })
            end
        end

        if chatInputActivating then
            if not IsControlPressed(0, 245) then
                SetNuiFocus(true)

                chatInputActivating = false
            end
        end
    end
end)
