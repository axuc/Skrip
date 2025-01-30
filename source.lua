local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Cheet0Puff/UI-Library/tree/main/source.lua"))()
local Window = Library.CreateLib("Skirp (xeno)", "DarkTheme")

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

local bloxfk = bloxf:NewSection("With Key:")

bloxfk:NewButton("Blacktrap", "Added by owners", function()
    loadstring(game:HttpGet('https://lua-library.btteam.net/script-auth.txt'))()
end)

bloxfk:NewButton("Alchemy Hub (BUGGY ON XENO)", "Added by owners", function()
    loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
end)

local fisc = Window:NewTab("Fisch")
local fisch = fisc:NewSection("All of these scripts are tested by owners & beta testers")

local fisch = fisc:NewSection("Misc")
fisch:NewButton("Set fps for AFK", "Added by owners", function()
    setfpscap(30)
end)
local osfisch = fisc:NewSection("Open-Source")
osfisch:NewButton("Fischy (d)", "Added by Cheet0Puff", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cheet0Puff/Fisch-Script-WORKING/refs/heads/main/Fischyscript.lua",true))()
end)
osfisch:NewButton("Fischy Tutorial (d)", "Added by Cheet0Puff", function()
    os.execute("start https://github.com/Cheet0Puff/Fisch-Script-WORKING/blob/main/README.md")
end)
