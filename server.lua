TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local spawned = false

ESX.RegisterServerCallback('callbackname', function( source, cb )
	cb(spawned)
    if not spawned then
        spawned = true
    end

end)


RegisterServerEvent('esx_strippers:remove')
AddEventHandler('esx_strippers:remove', function(source)
    
    print('stripers')
    print(source)

    TriggerClientEvent('esx_status:remove', source, 'stress', 10000000)



end)