
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
  {
    name="Trash Can", -- menu name
    -- permissions = {"harvest.water_bottle_tacos"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=10,
    units_per_minute=1,
    x=231.40283203125,y=-1507.09191894531,z=29.2916603088379, -- pos
    radius=5, height=1.5, -- area
    recipes = {
      ["Harvest water"] = { -- action name
        description="Harvest some water bottles.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["water"] = 1
        }
      },
      ["Harvest tacos"] = { -- action name
        description="Harvest some tacos.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["tacos"] = 1
        }
      }
    }
    --, onstart = function(player,recipe) end, -- optional start callback
    -- onstep = function(player,recipe) end, -- optional step callback
    -- onstop = function(player,recipe) end -- optional stop callback
  },
  {
    name="Academia", -- menu name
    r=255,g=125,b=0, -- color
    max_units=10000,
    units_per_minute=10000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319, -- pos
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Força"] = { -- action name
        description="Aumente sua força e stamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Campo de Ervas", -- menu name
    permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=10000,
    units_per_minute=10000,
    x=2208.777,y=5578.235,z=53.735, -- pos
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  },
  -- CAMPO DE METANFETAMINA    
  {
    name="Campo de Metanfetamina", -- Nome do menu
    permissions = {"harvest.metanfetamina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=10000,
    units_per_minute=10000,
    x=79.686859130859,y=3705.6840820313,z=41.077156066895, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher Crystal Melamine.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["crystalmelamine"] = 1
        }
      }
    }
  },  
  -- PROCESSADOR DE METANFETAMINA
  {
    name="Processamento de Meta", -- menu name
    permissions = {"process.metanfetamina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=2049.7536621094,y=3202.0891113281,z=45.186462402344, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Metanfetamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["crystalmelamine"] = 1
	    },
        products={ -- items given per unit
          ["metanfetamina"] = 2,
		  ["dirty_money"] = 10
        }
      }
    }
  },
  -- CAMPO DE COCAINA    
  {
    name="Campo de Cocaina", -- Nome do menu
    permissions = {"harvest.cocaina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=10000,
    units_per_minute=10000,
    x=1935.5994873047,y=4895.6923828125,z=46.71284866333, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher folha de Coca.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["folhadecoca"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE COCAINA
  {
    name="Processamento de cocaina", -- menu name
    permissions = {"process.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=1789.431640625,y=3895.4057617188,z=34.389263153076, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["folhadecoca"] = 1
	    },
        products={ -- items given per unit
          ["cocaina"] = 2
        }
      }
    }
  },
  -- PESCADOR DE TARTARUGA
  {
    name="Pescador de Tartaruga", -- menu name
    permissions = {"harvest.tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=4095.5485839844,y=4464.8696289063,z=1.9822434186935, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Pescar"] = { -- action name
        description="Pescar Tartaruga com Rede.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["rede"] = 1
      },
        products={ -- items given per unit
          ["Tartaruga"] = 2
        }
      }
    }
  },
  -- VENDER TARTARUGA
  {
    name="Vender Tartaruga", -- menu name
    permissions = {"process.Tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-35.171741485596,y=-1537.3134765625,z=34.621452331543, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Tartaruga"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Tartaruga"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 850
        }
      }
    }
  },
  
  -- Lavagem de dinheiro
 {
      name="Lavagem de Dinheiro P.C.C.",
      r=0,g=200,b=0, ---cores
      max_units=10000,
      units_per_minute=10000,
      x=768.49615478516,y=-207.20687866211,z=70.537986755371, -- coordenas mudas aqui
      radius=2.5, height=1.5, -- area
      recipes = {
        ["Lavar Dinheiro"] = { -- action name
          description="Lavagem de Dinheiro", -- action description
          in_money=0, -- money taken per unit
          out_money=750, -- money earned per unit
          reagents={
            ["dirty_money"] = 1000
          }, -- items taken per unit
          products={}, -- items given per unit
      }
    }
  },
  {
      name="Lavagem de Dinheiro T.C.C.",
      r=0,g=200,b=0, ---cores
      max_units=10000,
      units_per_minute=10000,
      x=1249.6082763672,y=-574.04766845703,z=72.667098999023, -- coordenas mudas aqui
      radius=2.5, height=1.5, -- area
      recipes = {
        ["Lavar Dinheiro"] = { -- action name
          description="Lavagem de Dinheiro", -- action description
          in_money=0, -- money taken per unit
          out_money=750, -- money earned per unit
          reagents={
            ["dirty_money"] = 1000
          }, -- items taken per unit
          products={}, -- items given per unit
      }
    }
  },
  {
      name="Lavagem de Dinheiro A.D.A.",
      r=0,g=200,b=0, ---cores
      max_units=10000,
      units_per_minute=10000,
      x=-834.7861328125,y=657.01977539063,z=133.51020812988, -- coordenas mudas aqui
      radius=2.5, height=1.5, -- area
      recipes = {
        ["Lavar Dinheiro"] = { -- action name
          description="Lavagem de Dinheiro", -- action description
          in_money=0, -- money taken per unit
          out_money=750, -- money earned per unit
          reagents={
            ["dirty_money"] = 1000
          }, -- items taken per unit
          products={}, -- items given per unit
      }
    }
  },
  {
      name="Lavagem de Dinheiro C.V.",
      r=0,g=200,b=0, ---cores
      max_units=10000,
      units_per_minute=10000,
      x=409.80731201172,y=-1821.1184082031,z=31.427877426147, -- coordenas mudas aqui
      radius=2.5, height=1.5, -- area
      recipes = {
        ["Lavar Dinheiro"] = { -- action name
          description="Lavagem de Dinheiro", -- action description
          in_money=0, -- money taken per unit
          out_money=750, -- money earned per unit
          reagents={
            ["dirty_money"] = 1000
          }, -- items taken per unit
          products={}, -- items given per unit
      }
    }
  },
  {
      name="Lavagem de Dinheiro M.C.",
	  permissions = {"mc.lavar"},
      r=0,g=200,b=0, ---cores
      max_units=10000,
      units_per_minute=10000,
      x=995.46405029297,y=-107.60374450684,z=74.04956817627, -- coordenas mudas aqui
      radius=2.5, height=1.5, -- area
      recipes = {
        ["Lavar Dinheiro"] = { -- action name
          description="Lavagem de Dinheiro", -- action description
          in_money=0, -- money taken per unit
          out_money=850, -- money earned per unit
          reagents={
            ["dirty_money"] = 1000
          }, -- items taken per unit
          products={}, -- items given per unit
      }
    }
  },
    -- Cartões clonáveis
  {
    name="Cartões Clonáveis", -- Nome do menu
    permissions = {"pick.toclonecards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=10000,
    units_per_minute=10000,
    x=261.61892700195,y=204.29025268555,z=110.28720855713, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Pegar"] = { -- Nome da ação
        description="Pegar cartões clonáveis", -- Descrição do produto a se colher
        in_money=50, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["toclonecards"] = 1,
        }
      }
    }
  },
  
    -- CLONAR CARTÕES
  {
    name="Clonagem de Cartões", -- menu name
    permissions = {"clone.cards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-1054.0205078125,y=-230.26893615723,z=44.020957946777, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Clonar cartões"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["toclonecards"] = 1
      },
        products={ -- items given per unit
          ["clonedcards"] = 1
        }
      }
    }
  },
  
    -- VENDER CARTÕES CLONADOS
  {
    name="Vender cartões clonados", -- menu name
    permissions = {"sell.clonedcards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=1274.0971679688,y=-1711.6182861328,z=54.771457672119, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender cartões clonados", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["clonedcards"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 350
        }
      }
    }
  },
  {
    name="Vender metafentamina", -- menu name
    permissions = {"vender.meta"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=771.64581298828,y=-260.21475219727,z=68.945861816406, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender metanfetamina", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["metanfetamina"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 570
        }
      }
    }
  },
  {
    name="Vender cocaina", -- menu name
    permissions = {"vender.coca"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-952.15502929688,y=654.74816894531,z=137.48463439941, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender cocaina", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["cocaina"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 550
        }
      }
    }
  },
  {
    name="Vender maconha", -- menu name
    permissions = {"vender.maco"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=1234.5528564453,y=-647.73809814453,z=66.375541687012, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender maconha", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["cannabis"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 530
        }
      }
    }
  },
  {
    name="Mina de diamante", -- menu name
    permissions = {"minerar.dima"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-597.45593261719,y=2091.9711914063,z=131.41278076172, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Minerar"] = { -- action name
        description="Minerar diamante.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["picareta"] = 1
      },
        products={ -- items given per unit
          ["dima"] = 1
        }
      }
    }
  },
  {
    name="Processamento de diamante", -- menu name
    permissions = {"processar.dima"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=838.88696289063,y=2113.1005859375,z=52.314678192139, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar diamante.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["dima"] = 1
      },
        products={ -- items given per unit
          ["dimapro"] = 2
        }
      }
    }
  },
  {
    name="Venda de diamante", -- menu name
    permissions = {"vender.dima"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-615.94128417969,y=-230.16828918457,z=38.057006835938, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender diamante.", -- action description
        in_money=0, -- money taken per unit
        out_money=350, -- money earned per unit
        reagents={  -- items taken per unit
          ["dimapro"] = 1
      },
        products={ -- items given per unit
        }
      }
    }
  },
  
    {
    name="Mina de ouro", -- menu name
    permissions = {"minerar.ouro"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=2676.5883789063,y=2790.93359375,z=40.518566131592, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Minerar"] = { -- action name
        description="Minerar ouro.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["picareta"] = 1
      },
        products={ -- items given per unit
          ["ouro"] = 1
        }
      }
    }
  },
  {
    name="Processamento de ouro", -- menu name
    permissions = {"processar.ouro"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=1593.6038818359,y=2198.8610839844,z=78.87084197998, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar ouro.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["ouro"] = 1
      },
        products={ -- items given per unit
          ["ouropro"] = 2
        }
      }
    }
  },
  {
    name="Venda de ouro", -- menu name
    permissions = {"vender.ouro"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-619.99298095703,y=-224.88793945313,z=38.056922912598, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender ouro.", -- action description
        in_money=0, -- money taken per unit
        out_money=320, -- money earned per unit
        reagents={  -- items taken per unit
          ["ouropro"] = 1
      },
        products={ -- items given per unit
        }
      }
    }
  },
  
   {
    name="Campo de LSD", -- menu name
    permissions = {"colher.lsd"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-1643.8659667969,y=2267.9130859375,z=75.159378051758, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Colher"] = { -- action name
        description="Colher planta de LSD.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
      },
        products={ -- items given per unit
          ["lsd"] = 1
        }
      }
    }
  },
  {
    name="Processamento de LSD", -- menu name
    permissions = {"processar.lsd"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-52.126953125,y=1903.2955322266,z=195.36131286621, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar LSD.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
		  ["lsd"] = 1
      },
        products={ -- items given per unit
          ["lsdpro"] = 2
        }
      }
    }
  },
  {
    name="Venda de LSD", -- menu name
    permissions = {"vender.lsd"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=470.63934326172,y=-1684.7543945313,z=29.381593704224, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender LSD.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
		  ["lsdpro"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 560
        }
      }
    }
  },
  {
    name="Processamento de ecstasy", -- menu name
    permissions = {"processar.ec"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=-465.5735168457,y=-1660.560546875,z=18.988874435425, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar ecstasy.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
		  ["lsd"] = 1,
		  ["weed"] = 1,
		  ["crystalmelamine"] = 1,
		  ["folhadecoca"] = 1
      },
        products={ -- items given per unit
		  ["ecstasy"] = 1
        }
      }
    }
  },
  {
    name="Venda de ecstasy", -- menu name
    permissions = {"vender.ec"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=85.062873840332,y=-1957.8208007813,z=21.1213722229, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender ecstasy.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
		  ["ecstasy"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 1530
        }
      }
    }
  },
  -- CAMPO DE MINERIO
-- Carro Forte
  {
    name="Cofre", -- menu name
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=10000,
    units_per_minute=10000,
    x=253.90089416504,y=225.21408081055,z=101.87578582764,
    radius=2, height=1.0, -- area
    recipes = {
      ["Dinheiro do Banco"] = { -- action name
       description="Pegar dinheiro do banco.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["bank_money"] = 500000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  -- PROCESSADOR DE MINERIO
  {
    name="OAB", -- menu name
	permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-77.134468078613,y=-802.86267089844,z=243.40579223633,
    radius=2, height=1.0, -- area
    recipes = {
      ["OAB"] = { -- action name
       description="Carteira de Advogado.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["oab"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },  
  {
    name="Processamento de Ervas", -- menu name
    permissions = {"process.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=10000, -- unidades maximas do item
    units_per_minute=10000, -- unidades que o transformador ganha de volta por minuto
    x=2357.6735839844,y=3119.5014648438,z=48.208736419678, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["weed"] = 1
		},
        products={ -- items given per unit
		  ["cannabis"] = 2
        }
      }
    }
  },
}



-- define multiple static transformers with postions list
local weedplants = {
  {1873.36901855469,3658.46215820313,33.8029747009277},
  {1856.33776855469,3635.12109375,34.1897926330566},
  {1830.75390625,3621.44140625,33.8487205505371},
  {1784.70251464844,3579.93798828125,34.7956123352051},
  {182.644317626953,3315.75537109375,41.4806938171387},
  {1764.65661621094,3642.916015625,34.5866050720215},
  {1512.91027832031,1673.76025390625,111.531875610352}
}
for k,v in pairs(weedplants) do
  local plant = {
    name="Planta de Maconha", -- menu name
    --permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, plant)
end

local warehouses = {
  {-1111.2841796875,4937.4052734375,218.386306762695},
  {1539.01794433594,1704.29174804688,109.659622192383},
  {981.412841796875,-1805.70349121094,35.4845695495605}
}
for k,v in pairs(warehouses) do
  local warehouse = {
    name="Oficina de armas", -- menu name
    permissions = {"build.gun"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=10,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Build Pistol"] = { -- action name
        description="Construir pistola.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["pistol_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PISTOL"] = 1
        }
      },
      ["Build Shotgun"] = { -- action name
        description="Construir shotgun.", -- action description
        in_money=3000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["shotgun_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PUMPSHOTGUN"] = 1
        }
      },
      ["Build SMG"] = { -- action name
        description="Construir submachinegun.", -- action description
        in_money=5000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["smg_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_SMG"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, warehouse)
end

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed plant"] = {
    def = {
      name="Weed Plant", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = weedplants
  },
  ["gun warehouse"] = {
    def = {
      name="Gun Warehouse", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = warehouses
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 30-- 12 hours -- 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed plant"] = 10000,
    ["gun warehouse"] = 25000
  },
  positions = {
    {1821.12390136719,3685.9736328125,34.2769317626953},
    {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 30, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
