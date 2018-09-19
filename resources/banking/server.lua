local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_banking")
isTransfer = false

local balances = {}
AddEventHandler("vRP:playerSpawn",function(user_id,source,last_login) 
    local player = vRP.getUserSource({user_id})
    local bmoney = vRP.getBankMoney({user_id})

    balances[source] = bmoney
    TriggerClientEvent('banking:updateBalance', player, bmoney)
end)

RegisterServerEvent('playerSpawned')
AddEventHandler('playerSpawned', function()
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})

  balances[player] = vRP.getBankMoney({user_id})
  local bmoney = vRP.getBankMoney({user_id})

  TriggerClientEvent('banking:updateBalance', player, bmoney)
end)

AddEventHandler('playerDropped', function()
  balances[source] = nil
end)

-- HELPER FUNCTIONS
function deposit(player, amount, user_id, bankbalance)
  local p = vRP.getUserSource({user_id})
  local new_balance = bankbalance + math.abs(amount)

  balances[p] = new_balance

  if(isTransfer) then
    vRP.setBankMoney({user_id, math.floor(new_balance)})
  else
    vRP.tryDeposit({user_id,math.floor(math.abs(amount))})
  end

  TriggerClientEvent("banking:updateBalance", p, new_balance)
  
end

function withdraw(player, amount, user_id, bankbalance)
  local p = vRP.getUserSource({user_id})
  local new_balance = bankbalance - math.abs(amount)

  balances[p] = new_balance

  if(isTransfer) then
    vRP.setBankMoney({user_id, math.floor(new_balance)})
  else
    vRP.tryWithdraw({user_id,math.floor(math.abs(amount))})
  end

  TriggerClientEvent("banking:updateBalance", p, new_balance)
end

function round(num, numDecimalPlaces)
  local mult = 5^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

-- Bank Deposit
RegisterServerEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
  if not amount then return end
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local wallet = vRP.getMoney({user_id})
    local bankbalance = vRP.getBankMoney({user_id})
    local rounded = math.ceil(tonumber(amount))

    if(string.len(rounded) >= 9) then
      vRPclient.notify(player,{"~r~Entrada muito alta."})
    else
      if(rounded <= wallet) then
        TriggerClientEvent("banking:updateBalance", player, (bankbalance + rounded))
        TriggerClientEvent("banking:addBalance", player, rounded)

        deposit(player, rounded, user_id, bankbalance)
      else
        vRPclient.notify(player,{"~r~O dinheiro não é suficiente!"})
      end
    end
end)


RegisterServerEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
  if not amount then return end
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local rounded = round(tonumber(amount), 0)
    if(string.len(rounded) >= 9) then
      vRPclient.notify(player,{"~r~Entrada muito alta."})
    else
      local bankbalance = vRP.getBankMoney({user_id})
      if(tonumber(rounded) <= tonumber(bankbalance)) then
        TriggerClientEvent("banking:updateBalance", player, (bankbalance - rounded))
        TriggerClientEvent("banking:removeBalance", player, rounded)

        withdraw(player, rounded, user_id, bankbalance)
      else
        vRPclient.notify(player, {"~r~Não há dinheiro suficiente em conta!"})
      end
    end
end)

RegisterServerEvent('bank:transfer')
AddEventHandler('bank:transfer', function(fromPlayer, toPlayer, amount)
  local user_id = vRP.getUserId({fromPlayer})
  local player = vRP.getUserSource({user_id})

  if tonumber(fromPlayer) == tonumber(toPlayer) then
    vRPclient.notify(player, {"~r~Não pode transferir para si mesmo."})
    CancelEvent()
  else    
    local rounded = round(tonumber(amount), 0)
    if(string.len(rounded) >= 9) then
      vRPclient.notify(player,{"~r~Entrada muito alta."})
      CancelEvent()
    else
      local bankbalance = vRP.getBankMoney({user_id})
      if(tonumber(rounded) <= tonumber(bankbalance)) then
        isTransfer = true
        TriggerClientEvent("banking:updateBalance", player, (bankbalance - rounded))
        TriggerClientEvent("banking:removeBalance", player, rounded)

        withdraw(player, rounded, user_id, bankbalance)
        vRPclient.notify(player,{"Transferido: ~r~-$".. rounded .." ~n~~s~Novo balanço: ~g~$" .. (bankbalance - rounded)})

        local user_id2 = vRP.getUserId({toPlayer})
        local player2 = vRP.getUserSource({user_id2})
        local bankbalance2 = vRP.getBankMoney({user_id2})
        TriggerClientEvent("banking:updateBalance", player2, (bankbalance2 + rounded))
        TriggerClientEvent("banking:addBalance", player2, rounded)

        deposit(player2, rounded, user_id2, bankbalance2)
        vRPclient.notify(player2, {"~r~Não há dinheiro suficiente em conta!"})
        isTransfer = false
        CancelEvent()          
      else
        vRPclient.notify(player, {"~r~Não há dinheiro suficiente em conta!"})
      end
    end    
  end
end)