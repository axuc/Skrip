local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("skirp (xeno)", "Midnight")

local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("<3")
Section:NewButton("Owners", "@pzuo / @nytmi on discord")


-- blox fruit fuck this shit i hate this
local bloxf = Window:NewTab("Blox Fruits")
local bloxs = bloxf:NewSection("(All of these scripts are tested by owners & beta testers)")
bloxs:NewButton("Set fps for afk", "Added by nytmi", function()
    setfpscap(30)
end)

local bloxkl = bloxf:NewSection("Keyless:")

bloxkl:NewButton("Frostware", "Added by owners", function()
    loadstring(game:HttpGet"https://frostware.onrender.com/fw")()
end)

bloxkl:NewButton("Ganteng", "Added by owners", function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a5c3af437cd698d64379cf75cacb9281.lua"))()
end)

local bloxfk = bloxf:NewSection("With key:")

bloxfk:NewButton("Blacktrap", "Added by owners", function()
    loadstring(game:HttpGet('https://lua-library.btteam.net/script-auth.txt'))()
end)

bloxfk:NewButton("Alchemy Hub (BUGGY ON XENO)", "Added by owners", function()
    loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
end)

local fisc = Window:NewTab("Fisch")
local fisch = fisc:NewSection("All of these scripts are tested by owners & beta testers")

local fisch = fisc:NewSection("misc")
fisch:NewButton("Set fps for afk", "Added by owners", function()
    setfpscap(30)
end)
local osfisch = fisc:NewSection("open-source")
osfisch:NewButton("Fischy (d)", "Added by Cheet0Puff", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cheet0Puff/Fisch-Script-WORKING/refs/heads/main/Fischyscript.lua",true))()
end)
osfisch:NewButton("Go to info for tut on fischy", "https://github.com/Cheet0Puff/Fisch-Script-WORKING/", function()
end)
