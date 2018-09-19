Citizen.CreateThread(function()
    while true 
    	do
    		-- These natives has to be called every frame.
    		SetVehicleDensityMultiplierThisFrame(0.1)
		SetPedDensityMultiplierThisFrame(0.2)
		SetRandomVehicleDensityMultiplierThisFrame(0.1)
		SetParkedVehicleDensityMultiplierThisFrame(0.1)
		SetScenarioPedDensityMultiplierThisFrame(0.2, 0.2)
		
		local playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed) 
		RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
		
		
		-- These natives do not have to be called everyframe.
		SetGarbageTrucks(0)
		SetRandomBoats(0)
    	
		Citizen.Wait(1)
	end

end)