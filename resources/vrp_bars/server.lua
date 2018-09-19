-- DEFAULT --
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vRP")
vRPhud = {}
Tunnel.bindInterface("vrp_bars",vRPhud)

function vRPhud.checkHunger()
  local user_id = vRP.getUserId(source)
  return vRP.getHunger(user_id)
end

function vRPhud.checkThirst()
  local user_id = vRP.getUserId(source)
  return vRP.getThirst(user_id)
end