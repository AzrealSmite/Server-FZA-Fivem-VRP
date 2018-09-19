local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPcc = {}
vRP = Proxy.getInterface("vRP")
Proxy.addInterface("customchat",vRPcc)
CCclient = Tunnel.getInterface("customchat","customchat")
Tunnel.bindInterface("customchat",vRPcc )

RegisterServerEvent('chatCommandEntered')
RegisterServerEvent('chatMessageEntered')

-- functions
function stringSplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function vRPcc.getMyRPidentity()
   local user_id = vRP.getUserId({source})
   vRP.getUserIdentity({user_id,function(identity)
        return user_id, identity
    end})
end

-- main event
AddEventHandler('chatMessageEntered', function(name, color, message)
    if not name or not color or not message or #color ~= 3 then
        return
    end
	
    if message:sub(1, 1) == "/" then
        fullcmd = stringSplit(message, " ")
        cmd = fullcmd[1]
		local msg = fullcmd[2]
		for k,v in ipairs(fullcmd) do
			if k > 2 then
				msg = msg .. " " .. fullcmd[k]
			end
		end

        if cmd == "/190" then
			if msg ~= nil then
			local user_id = vRP.getUserId({source})
              vRP.getUserIdentity({user_id,function(identity)
				TriggerClientEvent("send190Message", -1, source, name, tostring(msg),user_id,identity)
			  end})
			end
        	CancelEvent()
        end
		
        if cmd == "/192" then
			if msg ~= nil then
			local user_id = vRP.getUserId({source})
              vRP.getUserIdentity({user_id,function(identity)
				TriggerClientEvent("send192Message", -1, source, name, tostring(msg),user_id,identity)
			  end})
			end
        	CancelEvent()
        end
		
        if cmd == "/olx" then
            if msg ~= nil then
              local user_id = vRP.getUserId({source})
              vRP.getUserIdentity({user_id,function(identity)
                TriggerClientEvent("sendOLXMessage", -1, source, name, tostring(msg),user_id,identity)
              end})
            end
            CancelEvent()
        end

        if cmd == "/twitter" then
            if msg ~= nil then
              local user_id = vRP.getUserId({source})
              vRP.getUserIdentity({user_id,function(identity)
                TriggerClientEvent("sendTwitterMessage", -1, source, name, tostring(msg),user_id,identity)
              end})
            end
            CancelEvent()
        end
		
        if cmd == "/ilegal" then
            if msg ~= nil then
              local user_id = vRP.getUserId({source})
              vRP.getUserIdentity({user_id,function(identity)
                TriggerClientEvent("sendAnonimoMessage", -1, source, name, tostring(msg),user_id,identity)
              end})
            end
            CancelEvent()
        end
	else
		if not WasEventCanceled() then
			local user_id = vRP.getUserId({source})
              vRP.getUserIdentity({user_id,function(identity)
				TriggerClientEvent('sendFORARPMessage', -1, source, name, message,user_id,identity)
			  end})
        	CancelEvent()
		end
	end
	
	TriggerEvent('chatMessage', source, name, message)
	local user_id = vRP.getUserId({source})
    vRP.getUserIdentity({user_id,function(identity)
		print(name .. ' [' .. user_id .. ']: ' .. message)
	end})
end)

-- rcon say command handler
AddEventHandler('rconCommand', function(commandName, args)
    if commandName == "say" then
        local msg = table.concat(args, ' ')

        TriggerClientEvent('chatMessage', -1, 'console', { 0, 0x99, 255 }, msg)
        RconPrint('[AVISO] Server: ' .. msg .. "\n")

        CancelEvent()
    end
end)

-- rcon tell command handler
AddEventHandler('rconCommand', function(commandName, args)
    if commandName == "tell" then
        local target = table.remove(args, 1)
        local msg = table.concat(args, ' ')

        TriggerClientEvent('chatMessage', tonumber(target), 'console', { 0, 0x99, 255 }, msg)
        RconPrint('[AVISO] Server: ' .. msg .. "\n")

        CancelEvent()
    end
end)