local fps = 0
local serverPlayers = 1  

-- Calcul FPS (léger)
CreateThread(function()
    while true do
        local start = GetGameTimer()
        local frames = 0

        while GetGameTimer() - start < 1000 do
            frames = frames + 1
            Wait(0)
        end

        fps = frames
        Wait(1000)
    end
end)

-- Recevoir le nombre de joueurs depuis le serveur
RegisterNetEvent('richpresence:receivePlayers', function(count)
    serverPlayers = count
end)

-- Demander le nombre de joueurs au serveur toutes les 5 secondes
CreateThread(function()
    while true do
        TriggerServerEvent('richpresence:requestPlayers')
        Wait(5000)
    end
end)

-- Rich Presence Discord
CreateThread(function()
    SetDiscordAppId(Config.AppId)

    SetDiscordRichPresenceAsset(Config.LargeImage)
    SetDiscordRichPresenceAssetText(Config.LargeImageText)

    SetDiscordRichPresenceAssetSmall(Config.SmallImage)
    SetDiscordRichPresenceAssetSmallText(Config.SmallImageText)

    if Config.Buttons[1] then
        SetDiscordRichPresenceAction(0, Config.Buttons[1].label, Config.Buttons[1].url)
    end

    if Config.Buttons[2] then
        SetDiscordRichPresenceAction(1, Config.Buttons[2].label, Config.Buttons[2].url)
    end

    while true do
        local fiveMName = GetPlayerName(PlayerId()) or 'FiveM'
        local maxPlayers = GetConvarInt('sv_maxclients', 64)

        SetRichPresence(
            ('%s | %s/%s | %d FPS')
            :format(fiveMName, serverPlayers, maxPlayers, fps)
        )

        Wait(Config.UpdateInterval)
    end
end)
