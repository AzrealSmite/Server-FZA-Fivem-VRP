
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
  ["melees"] = {
    _config = {blipid=110,blipcolor=75},
	["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["sidearms"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["submachineguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["rifles"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["heavymachineguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["snipers"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["carabines"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["shotguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["explosives"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",120000,30,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",180000,30,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },

  ["basic"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_PISTOL"] = {"Pistol",80000,5,""},
	["WEAPON_APPISTOL"] = {"Pistola AP",150000,5,""},
    ["WEAPON_KNIFE"] = {"Faca",1000,0,""},
    ["ARMOR"] = {"Colete",25000,0,""}
  },
  ["Loja de armas M.C."] = {
    _config = {permissions={"mc.armas"}},
	["WEAPON_PISTOL"] = {"Pistola",20000,0,""},
	["WEAPON_COMBATPISTOL"] = {"Glock-17",35000,0,""},
	["WEAPON_SMG"] = {"SMG",80000,0,""},
	["WEAPON_PUMPSHOTGUN"] = {"Doze semi-automatica",60000,0,""},
	["WEAPON_ASSAULTRIFLE"] = {"AK-47",180000,0,""},
	["WEAPON_HEAVYSNIPER"] = {"Sniper",800000,0,""},
    ["ARMOR"] = {"Colete",5000,0,""}
  },
  ["Loja de armas P.C.C."] = {
    _config = {permissions={"pcc.armas"}},
	["WEAPON_PISTOL"] = {"Pistola",50000,0,""},
	["WEAPON_COMBATPISTOL"] = {"Glock-17",70000,0,""},
	["WEAPON_SMG"] = {"SMG",130000,0,""},
	["WEAPON_PUMPSHOTGUN"] = {"Doze semi-automatica",110000,0,""},
    ["ARMOR"] = {"Colete",10000,0,""}
  },
  ["Loja de armas C.V."] = {
    _config = {permissions={"cv.armas"}},
	["WEAPON_PISTOL"] = {"Pistola",50000,0,""},
	["WEAPON_COMBATPISTOL"] = {"Glock-17",70000,0,""},
	["WEAPON_SMG"] = {"SMG",130000,0,""},
	["WEAPON_PUMPSHOTGUN"] = {"Doze semi-automatica",110000,0,""},
    ["ARMOR"] = {"Colete",10000,0,""}
  },
  ["Loja de armas A.D.A."] = {
    _config = {permissions={"ada.armas"}},
	["WEAPON_PISTOL"] = {"Pistola",50000,0,""},
	["WEAPON_COMBATPISTOL"] = {"Glock-17",70000,0,""},
	["WEAPON_SMG"] = {"SMG",130000,0,""},
	["WEAPON_PUMPSHOTGUN"] = {"Doze semi-automatica",110000,0,""},
    ["ARMOR"] = {"Colete",10000,0,""}
  },
  ["Loja de armas T.C.C."] = {
    _config = {permissions={"tcc.armas"}},
	["WEAPON_PISTOL"] = {"Pistola",50000,0,""},
	["WEAPON_COMBATPISTOL"] = {"Glock-17",70000,0,""},
	["WEAPON_SMG"] = {"SMG",130000,0,""},
	["WEAPON_PUMPSHOTGUN"] = {"Doze semi-automatica",110000,0,""},
    ["ARMOR"] = {"Colete",10000,0,""}
  },
  ["Loja de armas L.M."] = {
    _config = {permissions={"lm.armas"}},
	["WEAPON_PISTOL"] = {"Pistola",50000,0,""},
	["WEAPON_COMBATPISTOL"] = {"Glock-17",70000,0,""},
	["WEAPON_SMG"] = {"SMG",130000,0,""},
	["WEAPON_PUMPSHOTGUN"] = {"Doze semi-automatica",110000,0,""},
    ["ARMOR"] = {"Colete",10000,0,""}
  }
}

-- list of gunshops positions

cfg.gunshops = {
  {"Loja de armas C.V.", 467.40850830078,-1704.7279052734,32.7424659729},
  {"Loja de armas A.D.A.", -781.84991455078,585.00744628906,126.84580230713},
  {"Loja de armas P.C.C.", 738.04309082031,-288.58627319336,63.202434539795},
  {"Loja de armas T.C.C.", 1321.8150634766,-579.95129394531,77.236061096191},
  {"Loja de armas M.C.", 976.93206787109,-104.0336151123,74.845108032227},
  {"Loja de armas L.M.", 1407.0869140625,1139.4895019531,114.44301605225},

  {"melees", 1692.41, 3758.22, 34.7053},
  {"sidearms", 252.696, -48.2487, 69.941},
  {"carabines", 844.299, -1033.26, 28.1949},
  {"rifles", -331.624, 6082.46, 31.4548},
  {"submachineguns", -664.147, -935.119, 21.8292},
  {"sidearms", -1305.45056152344,-394.0068359375,36.6957740783691},
  {"explosives", -1119.48803710938,2697.08666992188,18.5541591644287},
  {"heavymachineguns", 2569.62, 294.453, 108.735},
  {"snipers", -3172.60375976563,1085.74816894531,20.8387603759766},
  {"shotguns", 21.70, -1107.41, 29.79},
  {"basic", 810.15, -2156.88, 29.61}
}

return cfg
