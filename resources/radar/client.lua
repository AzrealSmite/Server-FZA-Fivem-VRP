--===============================================--===============================================
--= stationary radars based on 	https://github.com/DreanorGTA5Mods/StationaryRadar	         =
--===============================================--===============================================

local radares = {
{x = 379.68807983398, y = -1048.3527832031, z = 29.250692367554},
{x = -253.10794067383, y = -630.20385742188, z = 33.002685546875},
}

Citizen.CreateThread(function()
  while true do
    Wait(0)
	for k,v in pairs(radares) do
	local player = GetPlayerPed(-1)
	local coords = GetEntityCoords(player, true)
	if Vdist2(radares[k].x, radares[k].y, radares[k].z, coords["x"], coords["y"], coords["z"]) < 10 then
	Citizen.Trace("Você está passando por um radar! Diminua!")
		checkSpeed()
	end
  end
 end
end)

  function checkSpeed()
  local pP = GetPlayerPed(-1)
  local speed = GetEntitySpeed(pP)
  local vehicle = GetVehiclePedIsIn(pP, false)
  local driver = GetPedInVehicleSeat(vehicle, -1)
  local plate = GetVehicleNumberPlateText(vehicle)
  local maxspeed = 100
	local kmhspeed = math.ceil(speed*3.6)
		if kmhspeed > maxspeed and driver == pP then
			Citizen.Wait(250)
			TriggerServerEvent('cobrarMulta')
			exports.pNotify:SetQueueMax("left", 1)
            exports.pNotify:SendNotification({
            text = "<h2><center>Radar</center></h2>" .. "</br>Você foi multado por ultrapassagem de velocidade." .. "</br>Placa: " .. plate .. "</br>Multa: R$ 350,00" .. "</br>Velocidade permitida:" .. maxspeed .. "</br>Sua velocidade:" ..kmhspeed,
            type = "error",
            timeout = 5000,
            layout = "centerLeft",
            queue = "left"
          })
	end
end
