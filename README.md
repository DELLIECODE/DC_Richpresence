# Discord Rich Presence Script

Script FiveM permettant d’afficher une **Rich Presence Discord dynamique** pour chaque joueur — avec **pseudo FiveM**, **nombre de joueurs en ligne**, **max slots**, et **FPS**.

---

## Fonctionnalités

* Affiche le **nom FiveM** du joueur dans le statut Discord
* Affiche **joueurs connectés / slots max**
* Affiche les **FPS** en temps réel (calcul léger)
* Gestion des **assets Discord** (grande image + petite image + textes)
* Support de **2 boutons Discord** (ex: Discord + site)
* Mise à jour configurable via `Config.UpdateInterval`

---

## Prérequis

* Aucun framework requis (fonctionne sur **ESX / QBCore / Standalone**)
* Une **application Discord Rich Presence**

👉 Crée-la ici (Discord Developer Portal officiel) :
[https://discord.com/developers/applications](https://discord.com/developers/applications)

Puis :

1. Clique sur **New Application**
2. Récupère l’**Application ID (Client ID)**
3. Va dans **Rich Presence → Art Assets** pour ajouter tes images

---

## Installation

1. Place le dossier dans `resources/`
2. Ajoute dans ton `server.cfg` :

```
ensure DC_RichPresence
```

3. Configure `config.lua` :

   * Remplace `Config.AppId` par ton **Application ID Discord**
   * Configure les images Rich Presence
   * Modifie les boutons si besoin

4. Redémarre ton serveur ✅

---

## Configuration (config.lua)

```lua
Config = {}

-- Discord Application ID
Config.AppId = TON_APPLICATION_ID_ICI

-- Images (Discord Rich Presence Assets)
Config.LargeImage = 'transp'
Config.LargeImageText = 'DELLIEDEV'

Config.SmallImage = 'ultradellie'
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
```

---

## Structure des fichiers

```
DC_RichPresence/
├── fxmanifest.lua
├── config.lua
├── client.lua
└── server.lua
```

---

## Détails du statut affiché

```
Pseudo | 32/64 | 120 FPS
```

---

## Licence

MIT — libre à utiliser, modifier et redistribuer.

---

## DISCORD

[https://discord.gg/XnkrNnqFtK](https://discord.gg/XnkrNnqFtK)

