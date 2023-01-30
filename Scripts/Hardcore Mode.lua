firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Script Activated!")
wait(3)
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Hardcore Version 1.08 Loaded!")
wait(3)
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Script Made By bembolikepizza#3673 And TotallyNotChrono#4785")
wait(3)
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Loud Sounds Alert!")
wait(3)
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Good Luck.")
wait(5)

-- loadstrings
loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/Sprint"))() -- sprint
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/CometV4/main/Items/Candle.lua",true))()

game.Lighting.FogEnd = "500"
game.Lighting.FogStart = "50"
game.Lighting.FogColor = Color3.fromRGB(0, 0, 0)

local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")

function openDoor()
   print("I cant open the door lol -entity")
end

wait(15)

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
local chance = math.random(1,30)

game.Lighting.FogEnd = game.Lighting.FogEnd-5
game.Lighting.FogStart = game.Lighting.FogStart-1

if chance == 1 then
   Matcher()
end	

if chance == 5 then
   Ampersand()
end	

if chance == 7 then
   Eater()
end	

if chance == 10 then
   Shocker()
end

if chance == 15 then
   A60()
end

if chance == 18 then
   StalkBot()
end	

if chance == 20 then
   Factory()
end

if chance == 23 then
   Smoke()
end	

if chance == 25 then
   Zylenth()
end	

if chance == 30 then
   Ampersand2()
end	

end)

function StalkBot()

local Spawner = loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/DoorEntitySpawn%2BSource'))()

-- Create entity
local entity = Spawner.createEntity({
    CustomName = "Stalk Bot", -- Custom name of your entity
    Model = "https://github.com/BemboLikePizza/MyCustomEntities/blob/main/StalkBot.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 20, -- Percentage, 100 = default Rush speed
    DelayTime = 0.1, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    NoDieOnCrouching = false,
    NoHiding = false,
    AntiCrucifix = false,
    KillRange = 50,
    OneRoom = true,
    DieOnLook = true,
    BreakLights = false,
    BackwardsMovement = false,
    MovementDeath = {
        true, -- Turned On?
        '2',  --- '1'= 'Instant Without Being Looked out' | '2' = 'With Being Looked At'
    },
    FlickerLights = {
        true, -- Enabled/Disabled
        0.5, -- Time (seconds)
    },
EntitySounds = { -- Can Get rid Of
    PlaySound = {
    "rbxassetid://9112775175", -- SoundId Link or Roblox ID
    { Volume = 5 }, -- Sound properties
    },
}, -- Up to Here

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 2,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Type = "2", -- "Normal" or 1 | "Pop" or 2 | "endlessdoorsrebound" or "Rebound" or 3 | More coming Soon
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                "https://github.com/MuhXd/Models/blob/main/video0-1-3.mp3?raw=true", -- SoundId Link or Roblox ID
                { Volume = 5 }, -- Sound properties
            },
            Sound2 = {
                "https://github.com/MuhXd/Models/blob/main/video0-1-3.mp3?raw=true", -- SoundId Link or Roblox ID
                { Volume = 3 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    DiffrentMessages = false,
    CustomDialog = {  
        {"You Died To Stalk Bot.", "Dont Move For Survive."}, -- Death Messages
    }
})

-----[[ Advanced Sctipting ]]-----

entity.Debug.OnEntityMoving = function(Invincible,Hiding,plrCollisionPoint)
print("Invincible: "..tostring(Invincible))
print("Player to Entity Collision (None hiding Point): "..tostring(plrCollisionPoint))
print("Hiding: "..tostring(Hiding))
end
       
entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned:")
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned:")
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:")
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", "has entered room:",room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:")
end

entity.Debug.OnDeath = function()
    warn("Player has died.")
end

------------------------

-- Run the created entity
Spawner.runEntity(entity)

end

function Ampersand2()

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Ampersand Revenge", -- Custom name of your entity
    Model = "https://github.com/BemboLikePizza/MyCustomEntities/blob/main/Ampersand%20Revenge.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 800, -- Percentage, 100 = default Rush speed
    DelayTime = 8, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 125,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        6, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 12,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {30, 75, 0.1, 2}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To...", "Ampersand?", "He Looks Different.", "Use The Same Tactics Of Ambush Again"}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
	openDoor()
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable)

end

function Matcher()

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Matcher", -- Custom name of your entity
    Model = "https://github.com/BemboLikePizza/MyCustomEntities/blob/main/Matcher%20Fix.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 50, -- Percentage, 100 = default Rush speed
    DelayTime = 0, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 35,
    BackwardsMovement = false,
    BreakLights = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 0,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to Matcher...", "The lights flicker upon its signal.", "If it does, hide!"}, -- Custom death message (can be as long as you want)
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
	openDoor()
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable)

end

function Zylenth()
local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Zylenth", -- Custom name of your entity
    Model = "https://github.com/BemboLikePizza/MyCustomEntities/blob/main/Zylenth.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 60,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        4.5, -- Time (seconds)
    },
    Cycles = {
        Min = 6,
        Max = 10,
        WaitTime = 2.5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {6, 50, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to...", "...", "What Did Just Happened", "What Are This Entity."}, -- Custom death message
})

-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------

-- Run the created entity
Spawner.runEntity(entityTable)
end

function Ampersand()

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Ampersand", -- Custom name of your entity
    Model = "rbxassetid://12192238265", -- Can be GitHub file or rbxassetid
    Speed = 150, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 70,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {10, 75, 0.1, 2}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To Ampersand", "If You Hear Distorted Sounds", "Just Hide In Closet Or Bed.", "Use The Same Tactics Of Rush!"}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
	openDoor()
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable)

end

function A60()

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "https://github.com/ChronoAccelerator/CometRestorationPortalFullOfEntitiesAndStuffYes/blob/main/A-50.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://0", -- Image1 url
            Image2 = "rbxassetid://0", -- Image2 url
            Shake = true,
            Sound1 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to A-60", "Survive next-time!", "It is just like Ambush but 10x rare!", "And it rebounds a tad bit more!"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

end

function Shocker() -- shocker entity

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Shocker", -- Custom name of your entity
    Model = "rbxassetid://12199047614", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 100,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {10, 75, 0.1, 2}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To Shocker", "When The Lights Flicker. Hide Quickly", "He Is Faster Than Ambush.", "Good Luck!"}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
	openDoor()
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable)

end

function Factory()

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Factory", -- Custom name of your entity
    Model = "rbxassetid://12192922914", -- Can be GitHub file or rbxassetid
    Speed = 550, -- Percentage, 100 = default Rush speed
    DelayTime = 4.5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 120,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        3.5, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 2.5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {10, 75, 0.1, 2}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To Factory", "When The Lights Flicker. Hide Quickly", "He Is Faster Than Ambush.", "Good Luck!"}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
	openDoor()
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable)

end

local broom = game.ReplicatedStorage.GameData.LatestRoom.Value
timer=0
while true do

wait(1)
timer = timer + 1
    if game.ReplicatedStorage.GameData.LatestRoom.Value ~= broom then 
        timer=0
        break 

        elseif timer >= 300 then 
        loadstring(game:HttpGet("https://github.com/PABMAXICHAC/doors-monsters-scripts/raw/main/deal_damage_until_door_open"))()
        timer = 0
        break

    end
end

function Smoke()
   local enableDamage = true
repenttimes = 0
local deadeyescrucifix = false
local repentcomplete = false
local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes = game:GetObjects("rbxassetid://12271920298")[1]
local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

eyes.Parent = workspace
eyes.Initiate:Play()
task.wait(0.5)
eyes.Attachment.Eyes.Enabled = true
eyes.whisper:Play()
eyes.whisper.Looped = true
function EyesHell()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(15,30,0.7,0.1)
ts = game:GetService("TweenService")
wait(0.2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(2,30,5,2)
wait(3)

ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
wait(7)
eyes:Destroy()
end
local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

local function IsVisible(part)
	local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
	local onscreen = found and vec.Z > 0
	local cfg = RaycastParams.new();
	cfg.FilterType = Enum.RaycastFilterType.Blacklist
	cfg.FilterDescendantsInstances = {part};

	local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
	return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
end

while true do
	if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
		enableDamage = false
		task.wait(0.2)
		eyes:Destroy()
	end
	if enableDamage then
		if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
		game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 25
		wait(0.2)
		eyes.Scream:Play()
		elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
        print("GET THAT AWAY FROM ME")
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(5,50,0.7,0.2)
        wait(0.7)
        repenttimes = repenttimes + 1
        print(repenttimes)
        wait(0.4)
		elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
		local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
        hi.Anchored = true
        hi.Parent = workspace
        hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
        game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
        EyesHell()
        enableDamage = false
			if hum.Health <= 0 then
				game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
					"Smoke"
				debug.setupvalue(
					getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
					1,
					{
						"You died to the Smoke...",
						"Just Dont Look To Him.",
					}
				)
			end
		end
	end
	task.wait(0.2)
end
end

function Eater()

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
local EntitySpeed = math.random(75,100)
local FlickerSpeed = math.random(2,3)
local WaitTime = math.random(1,2)

-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Eater", -- Custom name of your entity
    Model = "rbxassetid://12271773766", -- Can be GitHub file or rbxassetid
    Speed = EntitySpeed, -- Percentage, 100 = default Rush speed
    DelayTime = 0, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        FlickerSpeed, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = WaitTime,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 75, 0.1, 2}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To...", "Eater?"}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
	openDoor()
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable)

end