-- ###################################
--
--       Credits: Sighmir and Shadow
--
-- ###################################

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vRP")
HUDserver = Tunnel.getInterface("vrp_bars", "vrp_bars")
vRPhud = {}
Tunnel.bindInterface("vrp_bars",vRPhud)

fome = 0
sede = 0

Citizen.CreateThread(function()
	while true do Citizen.Wait(1)
	
		drawRct(0.0149, 0.9677, 0.1408,0.028,41,41,41,255) -- Fundo preto
			
		drawRct(0.0163, 0.97, 0.06880,0.01,188,188,188,80) -- Vida Fundo
			
		drawRct(0.0865, 0.97, 0.06795,0.01,188,188,188,80) -- Armour Fundo
			
		drawRct(0.01655, 0.982, 0.06845,0.01,188,188,188,80) -- Fome fundo / fundo colorido --> drawRct(0.01655, 0.982, 0.06845,0.01,255,153,0,80) -- Fome fundo
		
		drawRct(0.0865, 0.982, 0.06795,0.01,188,188,188,80) -- Sede fundo / fundo colorido --> drawRct(0.0865, 0.982, 0.06795,0.01,0,125,255,80)
			
		-- Barra de Vida
		local health = GetEntityHealth(GetPlayerPed(-1)) - 100
			
		local varSet = 0.06880 * (health / 100)
			
		drawRct(0.0163, 0.97, varSet,0.01,55,115,55,255) -- Vida
			
			
		-- Barra de armor
		armor = GetPedArmour(GetPlayerPed(-1))
		if armor > 100.0 then armor = 100.0 end
		local varSet = 0.06795 * (armor / 100)
			
		drawRct(0.0865, 0.97, varSet,0.01,75,75,255,250) -- Armour
		
		-- Fome
		if fome > 100.0 then fome = 100.0 end
		local varSet = 0.06795 * (fome / 100)
			
		drawRct(0.01655, 0.982, varSet,0.01,255,153,0,250) -- Fome
		
		-- Fome
		if sede > 100.0 then sede = 100.0 end
		local varSet = 0.06795 * (sede / 100)
			
		drawRct(0.0865, 0.982, varSet,0.01,75,75,255,250) -- sede
		
	end
end)

function vRPhud.setHunger(hunger)
	fome = hunger
end

function vRPhud.setThirst(thirst)
	sede = thirst
end

function drawRct(x,y,width,height,r,g,b,a)
	DrawRect(x + width/2, y + height/2, width, height, r, g, b, a)
end
