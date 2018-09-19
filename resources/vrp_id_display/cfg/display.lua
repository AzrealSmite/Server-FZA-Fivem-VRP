cfg = {}
cfg.showself = false -- True: shows your own id and blip
cfg.distance = 15 -- Max distance for id

cfg.default = {r = 255, g = 255, b = 255} -- Colors for default id
cfg.talker = {r = 255, g = 255, b = 51} -- Colors for talker id

cfg.showteam = false -- True: shows team colored id to everyone, not just team members
cfg.hideteam = false -- True: hides team colored id to everyone, make them use the cfg.default color for id
cfg.blips = { -- Groups blip display (set the teams in cfg/blips.lua)
  ["[COMANDANTE] - Geral"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 5, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CORONEL] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[T-CORONEL] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[MAJOR] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CAPITÃO] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[1ºTENENTE] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[2ºTENENTE] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[ASPIRANTE] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CADETE] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[SUB-TENENTE] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[1ºSARGENTO] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[2ºSARGENTO] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[3ºSARGENTO] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CABO] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[SOLDADO] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[RECRUTA] - Policia Militar"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CORONEL] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[T-CORONEL] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[MAJOR] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CAPITÃO] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[1ºTENENTE] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[2ºTENENTE] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[ASPIRANTE] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CADETE] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[SUB-TENENTE] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[1ºSARGENTO] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[2ºSARGENTO] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[3ºSARGENTO] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CABO] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[SOLDADO] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[RECRUTA] - ROTA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CORONEL] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[T-CORONEL] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[MAJOR] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CAPITÃO] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[1ºTENENTE] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[2ºTENENTE] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[ASPIRANTE] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CADETE] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[SUB-TENENTE] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[1ºSARGENTO] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[2ºSARGENTO] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[3ºSARGENTO] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[CABO] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[SOLDADO] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[RECRUTA] - FORÇA TATICA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[POLICIA CIVIL]"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 76, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["EMERGENCIA"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 6, -- Sprite for group blip
	colour = 69, -- Colour for group blip
	distance = 0 -- Max distance for group blip
  },
  ["[ROTA]"] = {
    id = {r = 255, g = 225, b = 85},
	sprite = 6,
	colour = 76,
	distance = 0
  },
}

-- Link for blip colours: http://i.imgur.com/Hvyx6cE.png
-- Link for blip sprites: https://marekkraus.sk/gtav/blips/list.html