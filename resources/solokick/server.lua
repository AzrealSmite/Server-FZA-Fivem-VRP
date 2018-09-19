RegisterServerEvent('sendSession:PlayerNumber')
AddEventHandler('sendSession:PlayerNumber', function(clientPlayerNumber)
	if source ~= nil then
		serverPlayerNumber = countPlayer()
		if (clientPlayerNumber ~= serverPlayerNumber) and (clientPlayerNumber == 1) then -- For first spawn solo
			DropPlayer(source, '[Kickado] Esta em sessao solo.') -- kick player
			print("Solo session clientPlayerNumber-"..clientPlayerNumber.." serverPlayerNumber-"..serverPlayerNumber) -- debug
		elseif (serverPlayerNumber-5 >= 1) and (clientPlayerNumber < serverPlayerNumber-5) then -- For long play solo
			DropPlayer(source, '[Kickado] Esta em sessao solo.') -- kick player
			print("Solo session clientPlayerNumber-"..clientPlayerNumber.." serverPlayerNumber-"..serverPlayerNumber) -- debug
		end
	end
end)

function countPlayer() -- count all players
	local counter = 0
	for _ in pairs(GetPlayers()) do
		counter = counter + 1
	end
	return counter
end

AddEventHandler("playerConnecting",function(name,setMessage) -- Fix player connecting
	TriggerClientEvent('sendSession:PlayerConnecting', -1)
end)
