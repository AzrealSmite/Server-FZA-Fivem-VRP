
local cfg = {}

-- PCs positions
cfg.pcs = {
  {1853.21, 3689.51, 34.2671},
  {442.030609130859, -978.72705078125, 30.6896057128906},
  {-448.97076416016,6012.4208984375,31.71639251709}
}

-- vehicle tracking configuration
cfg.trackveh = {
  min_time = 150, -- min time in seconds
  max_time = 300, -- max time in seconds
  service = "police" -- service to alert when the tracking is successful
}

-- wanted display
cfg.wanted = {
  blipid = 458,
  blipcolor = 38,
  service = "police"
}

-- illegal items (seize)
cfg.seizable_items = {
  "dirty_money",
  "cannabis",
  "metanfetamina",
  "crystalmelamine",
  "toclonecards",
  "clonedcards",
  "rede",
  "lsd",
  "lsdpro",
  "cocaina",
  "ecstasy",
  "clonedcards",
  "folhadecoca",
  "Tartaruga",
  "driver",
  "weed"
}

-- jails {x,y,z,radius}
cfg.jails = {
  {459.485870361328,-1001.61560058594,24.914867401123,2.1},
  {459.305603027344,-997.873718261719,24.914867401123,2.1},
  {459.999938964844,-994.331298828125,24.9148578643799,1.6}
}

-- fines
-- map of name -> money
cfg.fines = {
  ["Desacato."] = 0,
}--]]

return cfg
