-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["weed"] = {"Planta de maconha", "Para processar.", nil, 1.00}, -- no choices
  ["folhadecoca"] = {"Folha de Coca", "Para processar.", nil, 1.00}, -- no choices
  ["cocaina"] = {"Cocaina", "Para vender.", nil, 0.50}, -- no choices
  ["crystalmelamine"] = {"Cristal de metanfetamina", "Para processar.", nil, 1.00}, -- no choices
  ["metanfetamina"] = {"Metanfetamina", "Para vender.", nil, 0.50}, -- no choices  
  ["Pedra"] = {"Pedra", "Pedra bruta.", nil, 0.01}, -- no choices
  ["Minerio"] = {"Minerio", "Minerio refinado.", nil, 0.01}, -- no choices
  ["toclonecards"] = {"Cartão Clonável", "Para clonar.", nil, 0.01}, -- no choices
  ["clonedcards"] = {"Cartão clonado", "Para vender.", nil, 0.01}, -- no choices
  ["oab"] = {"OAB", "Carteira de Advogado.", nil, 0.01}, -- no choices
  ["cannabis"] = {"Maconha", "Para vender.", nil, 1.00}, -- no choices
  ["bank_money"] = {"Dinheiro do Banco", "$.", nil, 0}, -- no choices
  ["rede"] = {"Rede", "Para pescar Tartaruga", nil, 0.50},
  ["Tartaruga"] = {"Tartaruga", "Para vender.", nil, 5.00},
  ["picareta"] = {"Picareta", "Para minerar diamante ou ouro.", nil, 1.00},
  ["dima"] = {"Minerio de diamante", "Para processar.", nil, 2.00},
  ["dimapro"] = {"Diamante", "Para vender.", nil, 1.00},
  ["ouro"] = {"Minerio de ouro", "Para processar.", nil, 2.00},
  ["ouropro"] = {"Barra de ouro", "Para vender.", nil, 1.00},
  ["lsd"] = {"Planta de LSD", "Para processar.", nil, 1.00},
  ["lsdpro"] = {"LSD", "Para vender.", nil, 0.50},
  ["ecstasy"] = {"Ecstasy", "Para vender.", nil, 3.00},
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[Brasil RP] Pacote de Itens ["..name.."] não encontrado")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
