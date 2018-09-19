-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
----------------------------------- YOU CAN EDIT THIS LINES -------------------------------------
-------------------------------------------------------------------------------------------------

local ShopClerk = {
  -- ID: id of NPC | name: Name of Blip | BlipID: Icone of Blip | VoiceName: NPC Talk When near it | Ambiance: Ambiance of Shop | Weapon: Hash of Weapon | modelHash: Model | X: Position x | Y: Position Y | Z: Position Z | heading: Where Npc look
	{id = 1, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "mp_m_shopkeep_01", x = -2511.16479492188, y = 3616.90478515625, z = 13.6422147750854, heading = 245.000457763672}, 
	{id = 2, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "mp_m_shopkeep_01", x = 24.392505645752, y = -1345.41369628906, z = 29.4970207214355, heading = 264.900115966797},
	{id = 3, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "mp_m_shopkeep_01", x = -47.3110542297363, y = -1758.62475585938, z = 29.4209995269775, heading = 48.1558074951172},
	{id = 4, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "s_m_y_ammucity_01", x = 841.843566894531, y = -1035.70556640625, z = 28.1948642730713, heading = 3.31448912620544},
	-- npc para pegar cartões clonáveis
	{id = 5, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "g_m_m_armboss_01", x = 261.61892700195, y = 204.29025268555, z = 110.28720855713, heading = 3.31448912620544},
	-- npc para clonar cartões
	{id = 6, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "g_m_m_armgoon_01", x = -1054.0205078125, y = -230.26893615723, z = 44.020957946777, heading = 220.000457763672},
	-- npc para vender cartões clonados
	{id = 7, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "a_m_y_vindouche_01", x = -621.35168457031, y = 36.309566497803, z = 43.566032409668, heading = 245.000457763672},
    -- npc para lavagem de dinheiro
	{id = 8, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "ig_lazlow", x = -1056.4289550781, y = -242.60389709473, z = 44.021060943604, heading = 3.31448912620544},
	-- npc processamento de maconha
	{id = 9, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "ig_claypain", x = -785.97308349609, y = 580.78576660156, z = 126.80484771729, heading = 48.1558074951172},
	-- npc processamento de cocaina
	{id = 10, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "g_m_y_famfor_01", x = 473.24905395508, y = -1686.6027832031, z = 29.381669998169, heading = 48.1558074951172},
	-- npc processamento de metanfetamina
	{id = 11, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x5EF9FEC4, modelHash = "ig_rashcosvki", x = 1208.3706054688, y = -3116.1745605469, z = 5.5403265953064, heading = 48.1558074951172},
}

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Blip For NPC
Citizen.CreateThread(function()
	for k,v in pairs(ShopClerk)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.BlipID)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.name)
		EndTextCommandSetBlipName(blip)
	end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Spawn NPC
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	
	if (not generalLoaded) then
	  
	  for i=1, #ShopClerk do
        RequestModel(GetHashKey(ShopClerk[i].modelHash))
        while not HasModelLoaded(GetHashKey(ShopClerk[i].modelHash)) do
          Wait(1)
        end
		
        ShopClerk[i].id = CreatePed(2, ShopClerk[i].modelHash, ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, ShopClerk[i].heading, true, true)
        SetPedFleeAttributes(ShopClerk[i].id, 0, 0)
		SetAmbientVoiceName(ShopClerk[i].id, ShopClerk[i].Ambiance)
		SetPedDropsWeaponsWhenDead(ShopClerk[i].id, false)
		SetPedDiesWhenInjured(ShopClerk[i].id, false)
		GiveWeaponToPed(ShopClerk[i].id, ShopClerk[i].Weapon, 2800, false, true)
		
      end
      generalLoaded = true
		
    end
	
  end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Action when player Near NPC (or not)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
		RequestAnimDict("random@shop_gunstore")
		while (not HasAnimDictLoaded("random@shop_gunstore")) do 
			Citizen.Wait(0) 
		end
		
		for i=1, #ShopClerk do
			distance = GetDistanceBetweenCoords(ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, GetEntityCoords(GetPlayerPed(-1)))
			if distance < 4 and PlayingAnim ~= true then
				TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_greeting", 1.0, -1.0, 4000, 0, 1, true, true, true)
				PlayAmbientSpeech1(ShopClerk[i].id, ShopClerk[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
				PlayingAnim = true
				Citizen.Wait(4000)
				if PlayingAnim == true then
					TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle_b", 1.0, -1.0, -1, 0, 1, true, true, true)
					Citizen.Wait(40000)
				end
			else
				--don't touch this
				--TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
			end
			if distance > 5.5 and distance < 6 then
				PlayingAnim = false
			end


		end
  end
end)