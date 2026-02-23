Config = {}

-- Discord Application ID 
Config.AppId = 12345678910111213 

-- Images (Discord Rich Presence Assets)
Config.LargeImage = 'transp' -- nom de votre image princpale
Config.LargeImageText = 'DELLIEDEV'

Config.SmallImage = 'ultradellie' --- nom de votre image secondaire
Config.SmallImageText = 'Scripts++'

-- Boutons Discord (max 2)
Config.Buttons = {
    {
        label = '🎮 Discord',
        url = 'https://discord.gg/xxxxxxx'
    },
    {
        label = '🏆 Top Serveur',
        url = 'https://top-serveurs.net/xxxxxxx'
    }
}

-- Intervalle de mise à jour (ms)
Config.UpdateInterval = 15000
