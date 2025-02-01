local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Skrip", "press Left Control to minimize", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)




local tab = win:Tab("Credits!!", "http://www.roblox.com/asset/?id=0")
tab:Label("@nytmi n @pzuo - owners")
tab:Line()



local Blox_Fruits = win:Tab("Blox Fruits", "http://www.roblox.com/asset/?id=0")
Blox_Fruits:Label("Every script here is tested by owners or beta testers")
Blox_Fruits:Label("Make a issue on github IF a script doesnt work")
Blox_Fruits:Line()
Blox_Fruits:Label("Keyless")


Blox_Fruits:Button("FrostWare", "added by @nytmi also sometimes the script is down", function()
loadstring(game:HttpGet"https://frostware.onrender.com/fw")()
end)

Blox_Fruits:Button("Speed hub", "added by @nytmi", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)

Blox_Fruits:Button("Zenith", "added by @nytmi", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
end)

Blox_Fruits:Button("Ganteng", "added by @nytmi", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a5c3af437cd698d64379cf75cacb9281.lua"))()
end)
Blox_Fruits:Line()
Blox_Fruits:Label("With key")
Blox_Fruits:Line()
Blox_Fruits:Button("blacktrap", "added by nytmi", function()
loadstring(game:HttpGet('https://lua-library.btteam.net/script-auth.txt'))()
end)

Blox_Fruits:Button("Kncrypt", "added by nytmi", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Kncrypt/refs/heads/main/sources/BloxFruit.lua"))()
end)


local Fisch = win:Tab("Fisch", "http://www.roblox.com/asset/?id=0")

Fisch:Label("Every script is tested by owners or beta testers")

Fisch:Button("Speed Hub", "added by nytmi", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)

Fisch:Button("nebora.org", "added by nytmi", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/499fa8eaaae391c6c3c77f2640811357.lua"))()
end)


local Rivals = win:Tab("Rivals", "http://www.roblox.com/asset/?id=0")
Rivals:Label("Every script is tested by owners or beta testers")
Rivals:Button("nebora.org", "added by nytmi", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/499fa8eaaae391c6c3c77f2640811357.lua"))()
end)




local SquidGameRbx = win:Tab("Shrimp Game", "http://www.roblox.com/asset/?id=0")
SquidGameRbx:Label("Every script is tested by owners or beta testers")
SquidGameRbx:Button("nebora.org", "added by nytmi", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/499fa8eaaae391c6c3c77f2640811357.lua"))()
end)



local combatinit = win:Tab("combatt initiation", "http://www.roblox.com/asset/?id=0")
combatinit:Label("Every script is tested by owners or beta testers")
combatinit:Button("press the thing on the bottom left mid wave", "added by nytmi", function()
local player = game.Players.LocalPlayer
local Randomize = false
local enemyPriority = {"Mark", "Beacon"} -- reversed
local backpack = player:WaitForChild("Backpack")
local function equipAndActivateTools()
    local character = player.Character
    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") then
            if tool.Parent == backpack then
                tool.Parent = character
            end
        end
    end
end


if player.PlayerGui:FindFirstChild("SigmaMenu") then
    player.PlayerGui:FindFirstChild("SigmaMenu"):Destroy()
end
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "SigmaMenu"
local button = Instance.new("ImageButton",gui)
button.Position = UDim2.new(0,0,0.5,100)
button.Size = UDim2.new(0,100,0,100)
button.Image = "rbxassetid://11122932914"
button.BackgroundColor3 = Color3.new(0,0,0)
local toggle = false
local activation = button.Activated:Connect(function()
    toggle = toggle == false
    if toggle then
        button.BackgroundColor3 = Color3.new(1,1,1)
    else
        button.BackgroundColor3 = Color3.new(0,0,0)
    end
    while toggle do
        pcall(function()
            task.wait()
            local enemyList = {}
            for _, enemy in workspace.Enemies:GetChildren() do
                if enemy and enemy.Humanoid and enemy.Humanoid.Health ~= 0 then
                    table.insert(enemyList, enemy)
                end
            end
            local target
            if Randomize then
                target = enemyList[math.random(1, #enemyList)] 
            else
               
                target = enemyList[1] 
                for _, priority in enemyPriority do
                    for _, enemy in enemyList do
                        if enemy.Name == priority then
                            target = enemy
                        end
                    end
                end
            end
          
            
            if #enemyList ~= 0 then
                player.Character.PrimaryPart.CFrame = target.PrimaryPart.CFrame - target.PrimaryPart.CFrame.LookVector * 2 + Vector3.new(0, 1, 0)
            end
            equipAndActivateTools()
        end)
    end
end)
gui.Destroying:Connect(function()
    activation:Disconnect()
    toggle = false
end)
end)
