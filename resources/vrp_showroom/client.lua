--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]


vRP = Proxy.getInterface("vRP")
vRPg = Proxy.getInterface("vRP_garages")

function deleteVehiclePedIsIn()
  local v = GetVehiclePedIsIn(GetPlayerPed(-1),false)
  SetVehicleHasBeenOwnedByPlayer(v,false)
  Citizen.InvokeNative(0xAD738C3085FE7E11, v, false, true) -- set not as mission entity
  SetVehicleAsNoLongerNeeded(Citizen.PointerValueIntInitialized(v))
  Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(v))
end

local vehshop = {
	opened = false,
	title = "FzA Shops",
	currentmenu = "main",
	lastmenu = nil,
	currentpos = nil,
	selectedbutton = 0,
	marker = { r = 0, g = 155, b = 255, a = 200, type = 1 },
	menu = {
		x = 0.1,
		y = 0.08,
		width = 0.2,
		height = 0.04,
		buttons = 10,
		from = 1,
		to = 10,
		scale = 0.4,
		font = 0,
		["main"] = {
			title = "FzA Shops",
			name = "main",
			buttons = {
				{name = "Carros", description = ""},
				{name = "Motos", description = ""},
			}
		},
		["Carros"] = {
			title = "Carros",
			name = "Carros",
			buttons = {
				{name = "Veiculos", description = ''},
				{name = "Veiculos Pesados", description = ''},
				--{name = "Moto", description = ''},
			}
		},
		["Veiculos"] = {
			title = "Veiculos",
			name = "Veiculos",
			buttons = {
				{name = "Chevette", costs = 3000, description = {}, model = "casco"},
				{name = "Ford Del Rey GL 1989", costs = 3500, description = {}, model = "buccaneer"},
				{name = "Volkswagen Gol GL 1.8", costs = 3750, description = {}, model = "blista"},
				{name = "Volkswagen Santana", costs = 3750, description = {}, model = "primo2"},
				{name = "Volkswagen Kombi", costs = 4500, description = {}, model = "burrito2"},
				{name = "Fiat Palio EDX 1.0 1997", costs = 6000, description = {}, model = "fugitive"},
				{name = "Honda Fit 2009", costs = 13750, description = {}, model = "serrano"},
				{name = "Chevrolet Celta 2013", costs = 18500, description = {}, model = "ingot"},
				{name = "Hyundai HB20S", costs = 23500, description = {}, model = "exemplar"},
				{name = "Chevrolet Astra", costs = 35000, description = {}, model = "buffalo"},
				{name = "Hyundai Veloster", costs = 45000, description = {}, model = "veloster"},
				{name = "Volkswagen Jetta", costs = 54500, description = {}, model = "asterope"},
				{name = "Fiat Toro", costs = 70000, description = {}, model = "ftoro"},
				{name = "Kia Optima", costs = 75000, description = {}, model = "optima"},
				{name = "L200 Triton 2017", costs = 85000, description = {}, model = "landstalker"},
				{name = "Toyota Hilux", costs = 85000, description = {}, model = "sadler"},
				{name = "Volkswagen Amarok", costs = 105000, description = {}, model = "dubsta"},
				{name = "Golf GTI Mk7", costs = 117500, description = {}, model = "mk7"},
				{name = "Audi S5", costs = 125000, description = {}, model = "sentinel"},
				{name = "Jeep SRT8", costs = 125000, description = {}, model = "srt8"},
				{name = "Lancer EVO", costs = 135000, description = {}, model = "kuruma"},
				{name = "Dodge Challenger", costs = 145000, description = {}, model = "demon"},
				{name = "Chrysler 300SRT8", costs = 150000, description = {}, model = "300srt8"},
				{name = "Range Rover Evoque", costs = 150000, description = {}, model = "Evoque"},
				{name = "Mercedes-Benz A45", costs = 175000, description = {}, model = "a45"},
				{name = "BMW M5 E60", costs = 175000, description = {}, model = "m5e60"},
				{name = "BMW M3", costs = 220000, description = {}, model = "m3e92"},
				{name = "Mercedes-Benz C63", costs = 235000, description = {}, model = "c63coupe"},	
				{name = "BMW M4", costs = 240000, description = {}, model = "m4"},
				{name = "BMW 440i", costs = 245000, description = {}, model = "440i"},
				{name = "BMW X5M", costs = 265000, description = {}, model = "x5m2016"},
				{name = "Camaro ZL1 2017", costs = 285000, description = {}, model = "zl12017"},
				{name = "Lexus LX570", costs = 295000, description = {}, model = "lex570"},
				{name = "BMW X6M", costs = 315000, description = {}, model = "x6m"},
				{name = "Corvette C6z06", costs = 325000, description = {}, model = "c6z06"},
				{name = "Porsche 718 Boxster", costs = 425000, description = {}, model = "718boxster"},
				{name = "Bentley Bentayga", costs = 450000, description = {}, model = "bbentayga"},
				{name = "Nissan GTR", costs = 575000, description = {}, model = "gtr"},
				{name = "Ferrari Italia 458", costs = 675000, description = {}, model = "italia458"},
				{name = "Porsche 718 Caymans", costs = 690000, description = {}, model = "718caymans"},
				{name = "Ferrari 812", costs = 950000, description = {}, model = "ferrari812"},
				{name = "Lykan HyperSport", costs = 1000000, description = {}, model = "lykan"},
				{name = "Audi R8", costs = 1200000, description = {}, model = "r8ppi"},
				{name = "Camaro SS", costs = 1500000, description = {}, model = "camaross"},
				{name = "Lamborghini Aventador", costs = 1750000, description = {}, model = "lp700r"},
				{name = "Zentenario", costs = 2000000, description = {}, model = "zentenario"},
				{name = "Maclaren P1", costs = 2250000, description = {}, model = "p1"},
				{name = "Koegnisegg Aguera R", costs = 4000000, description = {}, model = "acsr"},
				{name = "Bugatti Chiron 2017", costs = 5000000, description = {}, model = "chiron17"},
				
				{name = "Chazer JZX100", costs = 20000000, description = {}, model = "jzx100"},
				{name = "BMW E36", costs = 20000000, description = {}, model = "e36drift"},
				{name = "Maserati Turismo", costs = 20000000, description = {}, model = "granlb"},
			}
		},
		["Veiculos Pesados"] = {
			title = "Veiculos Pesados",
			name = "Veiculos Pesados",
			buttons = {
				{name = "Mule", costs = 500000, description = {}, model = "mule"},
				{name = "Benson", costs = 600000, description = {}, model = "benson"},
				{name = "Pounder", costs = 650000, description = {}, model = "pounder"},
			}
		},
		["Motos"] = {
			title = "Motos",
			name = "Motos",
			buttons = {
				{name = "Bros", costs = 8000, description = {}, model = "bros60"},
				{name = "Yamaha XJ6", costs = 32500, description = {}, model = "bati"},
				{name = "XT 660", costs = 45000, description = {}, model = "xt66"},
				{name = "R6", costs = 50000, description = {}, model = "r6"},
				{name = "ZX 10R", costs = 65000, description = {}, model = "zx10r"},
				{name = "Kawazaki Z1000", costs = 65000, description = {}, model = "z1000"},
				{name = "CB RR", costs = 70000, description = {}, model = "cbrr"},
				{name = "Suzuki Hayabusa", costs = 85000, description = {}, model = "hayabusa"},
				{name = "R1", costs = 95000, description = {}, model = "r1"},
				{name = "Ducatti", costs = 95000, description = {}, model = "dm1200"},
				{name = "Agusta", costs = 125000, description = {}, model = "f4rr"},
			}
		},
	}
}
local fakecar = {model = '', car = nil}
local vehshop_locations = {
{entering = {-33.803,-1102.322,25.422}, inside = {-46.56327,-1097.382,25.99875, 120.1953}, outside = {-31.849,-1090.648,25.998,322.345}},
}

local vehshop_blips ={}
local inrangeofvehshop = false
local currentlocation = nil
local boughtcar = false

function vehSR_drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x , y)
end

function vehSR_IsPlayerInRangeOfVehshop()
	return inrangeofvehshop
end

local firstspawn = 0
AddEventHandler('playerSpawned', function(spawn)
if firstspawn == 0 then
	--326 car blip 227 225
	vehSR_ShowVehshopBlips(true)
	firstspawn = 1
end
end)

function vehSR_ShowVehshopBlips(bool)
	if bool and #vehshop_blips == 0 then
		for station,pos in pairs(vehshop_locations) do
			local loc = pos
			pos = pos.entering
			local blip = AddBlipForCoord(pos[1],pos[2],pos[3])
			-- 60 58 137
			SetBlipSprite(blip,225)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Apollo Shops")
			EndTextCommandSetBlipName(blip)
			SetBlipAsShortRange(blip,true)
			SetBlipAsMissionCreatorBlip(blip,true)
			table.insert(vehshop_blips, {blip = blip, pos = loc})
		end
		Citizen.CreateThread(function()
			while #vehshop_blips > 0 do
				Citizen.Wait(0)
				local inrange = false
				for i,b in ipairs(vehshop_blips) do
					if IsPlayerWantedLevelGreater(GetPlayerIndex(),0) == false and vehshop.opened == false and IsPedInAnyVehicle(vehSR_LocalPed(), true) == false and  GetDistanceBetweenCoords(b.pos.entering[1],b.pos.entering[2],b.pos.entering[3],GetEntityCoords(vehSR_LocalPed())) < 5 then
						DrawMarker(1,b.pos.entering[1],b.pos.entering[2],b.pos.entering[3],0,0,0,0,0,0,2.001,2.0001,0.5001,0,155,255,200,0,0,0,0)
						vehSR_drawTxt("Aperte ~g~ENTER~s~ para comprar um ~b~Carro",0,1,0.5,0.8,0.6,255,255,255,255)
						currentlocation = b
						inrange = true
					end
				end
				inrangeofvehshop = inrange
			end
		end)
	elseif bool == false and #vehshop_blips > 0 then
		for i,b in ipairs(vehshop_blips) do
			if DoesBlipExist(b.blip) then
				SetBlipAsMissionCreatorBlip(b.blip,false)
				Citizen.InvokeNative(0x86A652570E5F25DD, Citizen.PointerValueIntInitialized(b.blip))
			end
		end
		vehshop_blips = {}
	end
end

function vehSR_f(n)
	return n + 0.0001
end

function vehSR_LocalPed()
	return GetPlayerPed(-1)
end

function vehSR_try(f, catch_f)
	local status, exception = pcall(f)
	if not status then
		catch_f(exception)
	end
end
function vehSR_firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end
--local veh = nil
function vehSR_OpenCreator()
	boughtcar = false
	local ped = vehSR_LocalPed()
	local pos = currentlocation.pos.inside
	FreezeEntityPosition(ped,true)
	SetEntityVisible(ped,false)
	local g = Citizen.InvokeNative(0xC906A7DAB05C8D2B,pos[1],pos[2],pos[3],Citizen.PointerValueFloat(),0)
	SetEntityCoords(ped,pos[1],pos[2],g)
	SetEntityHeading(ped,pos[4])
	vehshop.currentmenu = "main"
	vehshop.opened = true
	vehshop.selectedbutton = 0
end
local vehicle_price = 0
function vehSR_CloseCreator(vehicle,veh_type)
	Citizen.CreateThread(function()
		local ped = vehSR_LocalPed()
		if not boughtcar then
			local pos = currentlocation.pos.entering
			SetEntityCoords(ped,pos[1],pos[2],pos[3])
			FreezeEntityPosition(ped,false)
			SetEntityVisible(ped,true)
		else
			deleteVehiclePedIsIn()
			vRP.teleport({-44.21378326416,-1079.1402587891,26.67050743103})
			vRPg.spawnBoughtVehicle({veh_type, vehicle})
			SetEntityVisible(ped,true)
			FreezeEntityPosition(ped,false)
		end
		vehshop.opened = false
		vehshop.menu.from = 1
		vehshop.menu.to = 10
	end)
end

function vehSR_drawMenuButton(button,x,y,selected)
	local menu = vehshop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(menu.scale, menu.scale)
	if selected then
		SetTextColour(0, 0, 0, 255)
	else
		SetTextColour(255, 255, 255, 255)
	end
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(button.name)
	if selected then
		DrawRect(x,y,menu.width,menu.height,255,255,255,255)
	else
		DrawRect(x,y,menu.width,menu.height,0,0,0,150)
	end
	DrawText(x - menu.width/2 + 0.005, y - menu.height/2 + 0.0028)
end

function vehSR_drawMenuTitle(txt,x,y)
local menu = vehshop.menu
	SetTextFont(2)
	SetTextProportional(0)
	SetTextScale(0.5, 0.5)
	SetTextColour(255, 255, 255, 255)
	SetTextEntry("STRING")
	AddTextComponentString(txt)
	DrawRect(x,y,menu.width,menu.height,0,0,0,150)
	DrawText(x - menu.width/2 + 0.005, y - menu.height/2 + 0.0028)
end
function vehSR_tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
function vehSR_Notify(text)
SetNotificationTextEntry('STRING')
AddTextComponentString(text)
DrawNotification(false, false)
end

function vehSR_drawMenuRight(txt,x,y,selected)
	local menu = vehshop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(menu.scale, menu.scale)
	if selected then
		SetTextColour(0, 0, 0, 255)
	else
		SetTextColour(255, 255, 255, 255)
	end
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(txt)
	DrawText(x + menu.width/2 - 0.06, y - menu.height/2 + 0.0028)
end
local backlock = false
Citizen.CreateThread(function()
	local last_dir
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1,201) and vehSR_IsPlayerInRangeOfVehshop() then
			if vehshop.opened then
				vehSR_CloseCreator("","")
			else
				vehSR_OpenCreator()
			end
		end
		if vehshop.opened then
			local ped = vehSR_LocalPed()
			local menu = vehshop.menu[vehshop.currentmenu]
			vehSR_drawTxt(vehshop.title,1,1,vehshop.menu.x,vehshop.menu.y,1.0, 255,255,255,255)
			vehSR_drawMenuTitle(menu.title, vehshop.menu.x,vehshop.menu.y + 0.08)
			vehSR_drawTxt(vehshop.selectedbutton.."/"..vehSR_tablelength(menu.buttons),0,0,vehshop.menu.x + vehshop.menu.width/2 - 0.0385,vehshop.menu.y + 0.067,0.4, 255,255,255,255)
			local y = vehshop.menu.y + 0.12
			buttoncount = vehSR_tablelength(menu.buttons)
			local selected = false

			for i,button in pairs(menu.buttons) do
				if i >= vehshop.menu.from and i <= vehshop.menu.to then

					if i == vehshop.selectedbutton then
						selected = true
					else
						selected = false
					end
					vehSR_drawMenuButton(button,vehshop.menu.x,y,selected)
					if button.costs ~= nil then
						if vehshop.currentmenu == "Veiculos" or vehshop.currentmenu == "Veiculos Importados" or vehshop.currentmenu == "Sedans" or vehshop.currentmenu == "Veiculos Pesados" or vehshop.currentmenu == "Veiculos Pesados Clássicos" or vehshop.currentmenu == "Supers" or vehshop.currentmenu == "Grandes" or vehshop.currentmenu == "Estrada" or vehshop.currentmenu == "SUVS" or vehshop.currentmenu == "Vans" or vehshop.currentmenu == "Edicoes Especiais" or vehshop.currentmenu == "Industrials" or vehshop.currentmenu == "Moto" or vehshop.currentmenu == "Motos" then
							vehSR_drawMenuRight(button.costs.."$",vehshop.menu.x,y,selected)
						else
							vehSR_drawMenuButton(button,vehshop.menu.x,y,selected)
						end
					end
					y = y + 0.04
					if vehshop.currentmenu == "Veiculos" or vehshop.currentmenu == "Veiculos Importados" or vehshop.currentmenu == "Sedans" or vehshop.currentmenu == "Veiculos Pesados" or vehshop.currentmenu == "Veiculos Pesados Clássicos" or vehshop.currentmenu == "Supers" or vehshop.currentmenu == "Grandes" or vehshop.currentmenu == "Estrada" or vehshop.currentmenu == "SUVS" or vehshop.currentmenu == "Vans" or vehshop.currentmenu == "Edicoes Especiais" or vehshop.currentmenu == "Industrials" or vehshop.currentmenu == "Moto" or vehshop.currentmenu == "Motos" then
						if selected then
							if fakecar.model ~= button.model then
								if DoesEntityExist(fakecar.car) then
									Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(fakecar.car))
								end
								local pos = currentlocation.pos.inside
								local hash = GetHashKey(button.model)
								RequestModel(hash)
								local timer = 0
								while not HasModelLoaded(hash) and timer < 255 do
									Citizen.Wait(1)
									vehSR_drawTxt("Carregando...",0,1,0.5,0.5,1.5,255,255-timer,255-timer,255)
									RequestModel(hash)
									timer = timer + 1
								end
								if timer < 255 then
									local veh = CreateVehicle(hash,pos[1],pos[2],pos[3],pos[4],false,false)
									while not DoesEntityExist(veh) do
										Citizen.Wait(1)
										vehSR_drawTxt("Carregando...",0,1,0.5,0.5,1.5,255,255-timer,255-timer,255)
									end
									FreezeEntityPosition(veh,true)
									SetEntityInvincible(veh,true)
									SetVehicleDoorsLocked(veh,4)
									--SetEntityCollision(veh,false,false)
									TaskWarpPedIntoVehicle(vehSR_LocalPed(),veh,-1)
									for i = 0,24 do
										SetVehicleModKit(veh,0)
										RemoveVehicleMod(veh,i)
									end
									fakecar = { model = button.model, car = veh}
								else
									timer = 0
									while timer < 50 do
										Citizen.Wait(1)
										vehSR_drawTxt("Falhou!",0,1,0.5,0.5,1.5,255,0,0,255)
										timer = timer + 1
									end
									if last_dir then
										if vehshop.selectedbutton < buttoncount then
											vehshop.selectedbutton = vehshop.selectedbutton +1
											if buttoncount > 10 and vehshop.selectedbutton > vehshop.menu.to then
												vehshop.menu.to = vehshop.menu.to + 1
												vehshop.menu.from = vehshop.menu.from + 1
											end
										else
											last_dir = false
											vehshop.selectedbutton = vehshop.selectedbutton -1
											if buttoncount > 10 and vehshop.selectedbutton < vehshop.menu.from then
												vehshop.menu.from = vehshop.menu.from -1
												vehshop.menu.to = vehshop.menu.to - 1
											end
										end
									else
										if vehshop.selectedbutton > 1 then
											vehshop.selectedbutton = vehshop.selectedbutton -1
											if buttoncount > 10 and vehshop.selectedbutton < vehshop.menu.from then
												vehshop.menu.from = vehshop.menu.from -1
												vehshop.menu.to = vehshop.menu.to - 1
											end
										else
											last_dir = true
											vehshop.selectedbutton = vehshop.selectedbutton +1
											if buttoncount > 10 and vehshop.selectedbutton > vehshop.menu.to then
												vehshop.menu.to = vehshop.menu.to + 1
												vehshop.menu.from = vehshop.menu.from + 1
											end
										end
									end
								end
							end
						end
					end
					if selected and IsControlJustPressed(1,201) then
						vehSR_ButtonSelected(button)
					end
				end
			end
			if IsControlJustPressed(1,202) then
				vehSR_Back()
			end
			if IsControlJustReleased(1,202) then
				backlock = false
			end
			if IsControlJustPressed(1,188) then
				last_dir = false
				if vehshop.selectedbutton > 1 then
					vehshop.selectedbutton = vehshop.selectedbutton -1
					if buttoncount > 10 and vehshop.selectedbutton < vehshop.menu.from then
						vehshop.menu.from = vehshop.menu.from -1
						vehshop.menu.to = vehshop.menu.to - 1
					end
				end
			end
			if IsControlJustPressed(1,187)then
				last_dir = true
				if vehshop.selectedbutton < buttoncount then
					vehshop.selectedbutton = vehshop.selectedbutton +1
					if buttoncount > 10 and vehshop.selectedbutton > vehshop.menu.to then
						vehshop.menu.to = vehshop.menu.to + 1
						vehshop.menu.from = vehshop.menu.from + 1
					end
				end
			end
		end

	end
end)


function vehSR_round(num, idp)
  if idp and idp>0 then
    local mult = 10^idp
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end
function vehSR_ButtonSelected(button)
	local ped = GetPlayerPed(-1)
	local this = vehshop.currentmenu
	local btn = button.name
	if this == "main" then
		if btn == "Carros" then
			vehSR_OpenMenu('Carros')
		elseif btn == "Motos" then
			vehSR_OpenMenu('Motos')
		end
	elseif this == "Carros" then
		if btn == "Veiculos Pesados" then
			vehSR_OpenMenu('Veiculos Pesados')
		elseif btn == "Sedans" then
			vehSR_OpenMenu('Sedans')
		elseif btn == "Veiculos" then
			vehSR_OpenMenu('Veiculos')
		elseif btn == "Veiculos Importados" then
			vehSR_OpenMenu('Veiculos Importados')
		elseif btn == "Veiculos Pesados Clássicos" then
			vehSR_OpenMenu("Veiculos Pesados Clássicos")
		elseif btn == "Supers" then
			vehSR_OpenMenu('Supers')
		elseif btn == "Grandes" then
			vehSR_OpenMenu('Grandes')
		elseif btn == "Estrada" then
			vehSR_OpenMenu('Estrada')
		elseif btn == "SUVS" then
			vehSR_OpenMenu('SUVS')
		elseif btn == "Vans" then
			vehSR_OpenMenu('Vans')
			elseif btn == "Edicoes Especiais" then
			vehSR_OpenMenu('Edicoes Especiais')
		end
	elseif this == "Veiculos" or this == "Veiculos Importados" or this == "Sedans" or this == "Veiculos Pesados" or this == "Veiculos Pesados Clássicos" or this == "Supers" or this == "Grandes" or this == "Estrada" or this == "SUVS" or this == "Vans" or this == "Edicoes Especiais" or this == "Industrial" then
		TriggerServerEvent('veh_SR:CheckMoneyForVeh',button.model,button.costs, "car")
    elseif this == "Moto" or this == "Motos" then
		TriggerServerEvent('veh_SR:CheckMoneyForVeh',button.model,button.costs, "bike")
	end
end

RegisterNetEvent('veh_SR:CloseMenu')
AddEventHandler('veh_SR:CloseMenu', function(vehicle, veh_type)
	boughtcar = true
	vehSR_CloseCreator(vehicle,veh_type)
end)

function vehSR_OpenMenu(menu)
	fakecar = {model = '', car = nil}
	vehshop.lastmenu = vehshop.currentmenu
	if menu == "Carros" then
		vehshop.lastmenu = "main"
	elseif menu == "bikes"  then
		vehshop.lastmenu = "main"
	elseif menu == 'race_create_objects' then
		vehshop.lastmenu = "main"
	elseif menu == "race_create_objects_spawn" then
		vehshop.lastmenu = "race_create_objects"
	end
	vehshop.menu.from = 1
	vehshop.menu.to = 10
	vehshop.selectedbutton = 0
	vehshop.currentmenu = menu
end


function vehSR_Back()
	if backlock then
		return
	end
	backlock = true
	if vehshop.currentmenu == "main" then
		vehSR_CloseCreator("","")
	elseif vehshop.currentmenu == "Veiculos" or vehshop.currentmenu == "Veiculos Importados" or vehshop.currentmenu == "Sedans" or vehshop.currentmenu == "Veiculos Pesados" or vehshop.currentmenu == "Veiculos Pesados Clássicos" or vehshop.currentmenu == "Supers" or vehshop.currentmenu == "Grandes" or vehshop.currentmenu == "Estrada" or vehshop.currentmenu == "SUVS" or vehshop.currentmenu == "Vans" or vehshop.currentmenu == "Edicoes Especiais" or vehshop.currentmenu == "Industrial" or vehshop.currentmenu == "Moto" or vehshop.currentmenu == "Motos" then
		if DoesEntityExist(fakecar.car) then
			Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(fakecar.car))
		end
		fakecar = {model = '', car = nil}
		vehSR_OpenMenu(vehshop.lastmenu)
	else
		vehSR_OpenMenu(vehshop.lastmenu)
	end

end

function vehSR_stringstarts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end