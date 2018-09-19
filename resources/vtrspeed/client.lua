Citizen.CreateThread(function()
    while true do
          Citizen.Wait(0)
          local hashes = {1171614426,456714581,1127131465,-1647941228,2046537925,-1973172295,-1627000575,1912215274,-1536924937,-1779120616,-1683328900,1922257928,-34623805,1171614426}
          local myPed = GetPlayerPed( -1 )
          local myVehicle = GetVehiclePedIsIn(myPed, false)
          if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) then
            for I in pairs(hashes) do
                if (GetEntityModel(myVehicle) == hashes[I]) then
                  SetEntityAsMissionEntity( myVehicle, true, true )
                  velocidade (myVehicle)
                end
            end
         elseif GetEntityModel(myVehicle) == 1171614426 and ~GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) then
           SetEntityHealth(myPed, 1000)
         end
    end
end)
function velocidade (carro)
  Citizen.InvokeNative( 0xB59E4BD37AE292DB, carro, 5.0)
end
