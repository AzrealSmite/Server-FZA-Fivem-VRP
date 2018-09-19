local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_stationaryRadars")

RegisterServerEvent('cobrarMulta')
AddEventHandler('cobrarMulta', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local multa = 350
	if vRP.hasPermission({user_id,"radar.pass"}) then
        vRPclient.notify(player,{"~r~Sem multas para você! Obrigado por seus serviços!"}) 		
	else
	vRP.tryFullPayment({user_id,multa})
end
end)
