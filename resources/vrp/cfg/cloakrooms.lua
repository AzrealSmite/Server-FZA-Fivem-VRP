
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
-- policia fardas
local uniforme_ft01 = { model = "s_m_m_armoured_01" }
local uniforme_ft02 = { model = "s_m_m_armoured_02" }
local uniforme_ft03 = { model = "s_m_y_cop_01" }
local uniforme_ft04 = { model = "s_m_m_prisguard_01" }
local uniforme_grpae = { model = "s_m_y_pilot_01" }
local uniforme_rocam01 = { model = "s_m_y_hwaycop_01" }
local uniforme_rocam02 = { model = "s_m_y_marine_01" }
local uniforme_rocam03 = { model = "s_m_y_marine_02" }
local uniforme_rocam04 = { model = "s_m_y_marine_03" }
local uniforme_rota01 = { model = "s_m_y_ranger_01" }
local uniforme_rota02 = { model = "s_m_y_sheriff_01" }
local uniforme_rota03 = { model = "s_m_y_swat_01" }
local uniforme_rota04 = { model = "s_m_m_pilot_02" }
local uniforme_rp01 = { model = "s_m_y_blackops_02" }
local uniforme_rp02 = { model = "s_m_y_blackops_03" }
local uniforme_rp03 = { model = "s_m_m_chemsec_01" }
local uniforme_rp04 = { model = "s_m_m_snowcop_01" }
local uniforme_pc01 = { model = "s_m_m_ciasec_01" }
local uniforme_pc02 = { model = "s_m_m_fibsec_01" }

-- samu fardas
local uniforme_samu = { model = "s_m_m_paramedic_01" }

for i=0,19 do
   uniforme_ft01[i] = {0,0}
  uniforme_ft02[i] = {0,0}
  uniforme_ft03[i] = {0,0}
  uniforme_ft04[i] = {0,0}
  uniforme_grpae[i] = {0,0}
  uniforme_rocam01[i] = {0,0}
  uniforme_rocam02[i] = {0,0}
  uniforme_rocam03[i] = {0,0}
  uniforme_rocam04[i] = {0,0}
  uniforme_rota01[i] = {0,0}
  uniforme_rota02[i] = {0,0}
  uniforme_rota03[i] = {0,0}
  uniforme_rota04[i] = {0,0}
  uniforme_rp01[i] = {0,0}
  uniforme_rp02[i] = {0,0}
  uniforme_rp03[i] = {0,0}
  uniforme_rp04[i] = {0,0}
  uniforme_pc01[i] = {0,0}
  uniforme_pc02[i] = {0,0}
  uniforme_samu[i] = {0,0}
  surgery_female[i] = {0,0}
  surgery_male[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["Fardas"] = {
    _config = { permissions = {"fardas.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}	
    },]]
	["Uniforme Recruta 01"] = uniforme_rp01,
	["Uniforme Recruta 02"] = uniforme_rp04,
	["Uniforme Soldado 01"] = uniforme_rp02,
	["Uniforme Soldado 02"] = uniforme_rp03,
	["Uniforme Sargento 01"] = uniforme_ft01,
	["Uniforme Sargento 02"] = uniforme_ft03,
	["Uniforme Cap./Major 01"] = uniforme_ft02,
	["Uniforme Cap./Major 02"] = uniforme_ft04,
	["Uniforme Coronel 01"] = uniforme_rota02,
	["Uniforme Coronel 02"] = uniforme_rota04,
	["Uniforme ROTA 01"] = uniforme_rota02,
	["Uniforme ROTA 02"] = uniforme_rota03,
	["Uniforme PCESP 01"] = uniforme_pc01,
	["Uniforme PCESP 02"] = uniforme_pc02,
	["Uniforme ROCAM 01"] = uniforme_rocam01,
	["Uniforme ROCAM 02"] = uniforme_rocam02,
	["Uniforme ROCAM 03"] = uniforme_rocam03,
	["Uniforme ROCAM 04"] = uniforme_rocam04,
	["Uniforme GRPAe"] = uniforme_grpae,
	["> s/ farda Homem"] = surgery_male,
	["> s/ farda Mulher"] = surgery_female
	
  },
  
    ["emergency"] = {
    _config = { permissions = {"samu.cloakroom"} },
    --[[["Male uniform"] = {
      [3] = {92,0},
      [4] = {9,3},
      [6] = {25,0},
      [8] = {15,0},
      [11] = {13,3},
      ["p2"] = {2,0}
    }]]
    ["Uniforme SAMU"] = uniforme_samu,
	["> s/ farda Homem"] = surgery_male,
	["> s/ farda Mulher"] = surgery_female,
  },
  ["Escolher Sexo"] = {
    _config = { not_uniform = true },
    ["Homem"] = surgery_male,
    ["Mulher"] = surgery_female
  }
}

cfg.cloakrooms = {
  {"Fardas",457.47616577148,-993.30609130859,30.689603805542},
  {"Escolher Sexo",230.81727600098,-405.87521362305,47.924365997314},
  {"emergency",269.77987670898,-1363.4407958984,24.537780761719}
}

return cfg

