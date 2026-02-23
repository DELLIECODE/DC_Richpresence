-- Event pour récupérer le nombre de joueurs connectés en temps réel ou intervalle régulier
RegisterNetEvent('richpresence:requestPlayers', function()
    TriggerClientEvent('richpresence:receivePlayers', source, #GetPlayers())
end)
