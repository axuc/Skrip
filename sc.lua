local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("skirp (xeno)", "Midnight")

local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("<3")
Section:NewButton("Owners", "@pzuo / @nytmi on discord")


-- blox fruit fuck this shit i hate this
local bloxf = Window:NewTab("Blox Fruits")
local bloxs = bloxf:NewSection("all of these scripts are tested by owners & beta testers")
bloxs:NewButton("set fps for afk", "added by nytmi", function()
    setfpscap(30)
end)

local bloxkl = bloxf:NewSection("keyless")

bloxkl:NewButton("frostware", "added by owners", function()
    loadstring(game:HttpGet"https://frostware.onrender.com/fw")()
end)

bloxkl:NewButton("ganteng", "added by owners", function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a5c3af437cd698d64379cf75cacb9281.lua"))()
end)

local bloxfk = bloxf:NewSection("with key")

bloxfk:NewButton("blacktrap", "added by owners", function()
    loadstring(game:HttpGet('https://lua-library.btteam.net/script-auth.txt'))()
end)

bloxfk:NewButton("alchemy hub (BUGGY ON XENO)", "added by owners", function()
    loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
end)

local fisc = Window:NewTab("Fisch")
local fisch = fisc:NewSection("all of these scripts are tested by owners & beta testers")

local fisch = fisc:NewSection("misc")
fisch:NewButton("set fps for afk", "added by owners", function()
    setfpscap(30)
end)
local osfisch = fisc:NewSection("open-source")
osfisch:NewButton("fischy (d)", "added by owners", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cheet0Puff/Fisch-Script-WORKING/refs/heads/main/Fischyscript.lua",true))()
end)
osfisch:NewButton("go to info for tut on fischy", "https://github.com/Cheet0Puff/Fisch-Script-WORKING/", function()
end)
