RegisterNetEvent('wk:velocidade')
AddEventHandler('wk:velocidade', function(carro)
  Citizen.InvokeNative( 0xB59E4BD37AE292DB, carro, 5.0)
end)
