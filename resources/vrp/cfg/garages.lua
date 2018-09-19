
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.7 -- sell for 75% of the original price

cfg.garage_types = {
  ["Moto Clube"] = {
    _config = {vtype="bike",permissions={"mc.garagem"}},
    ["hvrod"] = {"Harley Davidson",0, ""}
  },
  ["Sedex"] = {
    _config = {vtype="bike",permissions={"sedex.garagem"}},
    ["burrito3"] = {"Van Sedex",0, ""}
  },
  ["Garagem inicial"] = {
    _config = {vtype="bike"},
    ["mobi"] = {"Mobilete",1500, ""}
  },
  ["Transporte de Valores"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"bankdriver.vehicle"}},
    ["stockade"] = {"Carro Forte",0, ""}
  },
  
  ["Veiculos"] = {
    _config = {vtype="car",blipcolor=4,permissions={"cmd.garagem"}},
	["police"] = {"Ford Fiesta PMESP",0, ""},
	["police2"] = {"Corsa Hatch PMESP",0, ""},
	["police4"] = {"L200 PMESP",0, ""},
	["sheriff2"] = {"Space Fox PMESP",0, ""},
	["sheriff"] = {"TrailBlazer PMESP",0, ""},
	["hiluxrota"] = {"Hilux ROTA",0, ""},
	["sw4rota"] = {"SW4 ROTA",0, ""},
	["police3"] = {"TrailBlazer ROTA",0, ""},
	["riot"] = {"Blindado ROTA",0, ""},
	["fbi2"] = {"TrailBlazer PCESP",0, ""},
	["fbi"] = {"Viatura descaracterizada",0, ""},
	["policeb"] = {"XT660 ROCAM",0, ""},
	["coach"] = {"Onibus PMESP",0, ""}
	
  },   
  
  ["heliponto PM"] = {
    _config = {vtype="car",blipcolor=4,permissions={"aguia.garagem"}},
    ["as350"] = {"Águia PMESP",0, ""},

  },    
  
  ["Veículos Aéreos"] = {
    _config = {vtype="bike",blipid=43,blipcolor=5},
    ["volatus"] = {"Volatus",3000000, "Um helicoptero."}
  },  
  
  ["hospital"] = {
    _config = {vtype="car",blipcolor=4,permissions={"hospital.garagem"}},
	["policeold1"] = {"L200 SAMU",0, ""},
	["sw4samu"] = {"SW4 Samu",0, ""},
    ["ambulance"] = {"Ambulancia",0, ""}
  },
  ["heliponto SAMU"] = {
    _config = {vtype="car",blipcolor=4,permissions={"hospital.garagem"}},
    ["samumav"] = {"Helicóptero Samu",0, ""},

  },   
  ["Taxi"] = {
    _config = {vtype="car",blipid=198,blipcolor=5,permissions={"taxi.garagem"}},
    ["taxi"] = {"Taxi",0, ""},
  },
  
    ["Mecanico"] = {
    _config = {vtype="car",blipid=85,blipcolor=31,permissions={"repair.garagem"}},
    ["towtruck2"] = {"towtruck2",0, ""},
  },
    
  ["Delivery"] = {
    _config = {vtype="bike",blipid=355,blipcolor=4,permissions={"delivery.garagem"}},
    ["enduro"] = {"Enduro",2500, ""},
  }
}

-- {garage_type,x,y,z}
cfg.garages = {
  {"Moto Clube",964.88385009766,-119.77673339844,74.353141784668},
  {"Sedex",61.736557006836,125.8145980835,79.219314575195},
  {"Garagem inicial",246.77641296387,-374.14865112305,44.345138549805},
  {"Veiculos",453.24819946289,-1019.3926391602,28.396326065063},
  {"heliponto PM",449.32727050781,-981.21728515625,43.691673278809},
  {"heliponto SAMU",313.24923706055,-1465.1434326172,46.509502410889},
  {"Taxi",-339.02719116211,-1023.7808837891,30.380908966064},
  {"Delivery",141.74586486816,-1458.0601806641,29.141620635986},
  {"Mecanico",401.42602539063,-1631.7053222656,29.291942596436},
  {"Transporte de Valores",232.78034973145,117.23257446289,102.60144042969},
  {"Veículos Aéreos",-991.98779296875,-2990.5654296875,13.945069313049},
  {"hospital",299.75296020508,-1442.3692626953,29.79154586792}
  --{"planes",1640, 3236, 40.4},
  --{"planes",2123, 4805, 41.19},
  --{"planes",-1348, -2230, 13.9},
  --{"helicopters",1750, 3260, 41.37},
  --{"helicopters",-1233, -2269, 13.9},
  --{"helicopters",-745, -1468, 5},
  --{"boats",-849.5, -1368.64, 1.6},
  --{"boats",1538, 3902, 30.35}
}

return cfg
