-- Load the Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pendulum Hub V4", "Ocean")

-- Tabs
local ScriptsTab = Window:NewTab("Scripts")
local FunTab = Window:NewTab("Fun")
local SettingsTab = Window:NewTab("Settings")
local CreditsTab = Window:NewTab("Credits")

-- Sections
local ScriptsSection = ScriptsTab:NewSection("FE Scripts")
local UniversalSection = ScriptsTab:NewSection("Universal Scripts")
local FunSection = FunTab:NewSection("Fun Scripts")
local SettingsSection = SettingsTab:NewSection("Client-Sided Character Modifications")
local MenuSection = SettingsTab:NewSection("Menu Settings")
local CreditsSection = CreditsTab:NewSection("Credits")

-- ============================================================
-- SCRIPTS TAB - FE Scripts
-- ============================================================

ScriptsSection:NewButton("FE Gale Fighter", "Yeah a fighter right its cool right?", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/melanie198686-tech/Fighter/refs/heads/main/Fighter.lua"))()
end)

ScriptsSection:NewButton("FE Rune", "A flying men", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Rune.lua"))()
end)

ScriptsSection:NewButton("FE Sonic", "The skid idk i hate sonic.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/Sonic/refs/heads/main/Sonic.lua"))()
end)

ScriptsSection:NewButton("FE Chill", "Just a chill dude.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/chill/refs/heads/main/Chill.lua"))()
end)

ScriptsSection:NewButton("FE Rainbow King", "AHH so gayyy.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/RainbowKing.lua"))()
end)

ScriptsSection:NewButton("FE VERITY", "Hey its me VERITY!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Verity.lua"))()
end)

ScriptsSection:NewButton("FE Suicide GUN", "Yes vijay made it :)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/FE%20GUN.lua"))()
end)

ScriptsSection:NewButton("FE Caseoh", "FAT BOIIII", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Caseoh.lua"))()
end)

ScriptsSection:NewButton("FE Nullioner", "CRAZY HOW I GOT THIS TO WORK LMAO", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Nullioner.lua"))()
end)

ScriptsSection:NewButton("FE Addict", "So fucking buggy bruh.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Addict.lua"))()
end)

ScriptsSection:NewButton("FE Galefighter V1", "Yea v1 version is blocky.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Galefighterv1.lua"))()
end)

ScriptsSection:NewButton("FE Combine Soldier", "Half-Life 2 vibes", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/FE%20Combine%20Soldier.lua"))()
end)

ScriptsSection:NewButton("FE Jetpack", "SRRSSSSSSS Yea boring", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/FE%20jetpack.lua"))()
end)

-- ============================================================
-- SCRIPTS TAB - Universal Scripts
-- ============================================================

UniversalSection:NewButton("UNIVERSAL Sexy Staff Girl", "WITCHHHH.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Sexy%20staff%20girl.lua"))()
end)

UniversalSection:NewButton("UNIVERSAL Killbot V2", "DONT CLICK ANY KEYBINDS.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/killbotv2.lua"))()
end)

UniversalSection:NewButton("UNIVERSAL Krystal dance", "Yippieee dancing in da CLUB.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Krystal%20dance.lua"))()
end)

UniversalSection:NewButton("UNIVERSAL Minigun", "BRRRRR RATATA yippie finally done", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Minigun.lua"))()
end)

UniversalSection:NewButton("UNIVERSAL Darth Vadar", "FINALLY OMG dawg i worked on this so hard", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/darthvadar.lua"))()
end)

UniversalSection:NewButton("UNIVERSAL Chips", "Hit people with chips yea.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Chips.lua"))()
end)

UniversalSection:NewButton("UNIVERSAL Road Rogue", "vroom vroom", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Notify.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/melanie198686-tech/PendulumHub/refs/heads/main/Roadrogue.lua"))()
end)

-- ============================================================
-- FUN TAB - Fun Scripts
-- ============================================================

FunSection:NewButton('Bend over', 'girl sex', function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/melanie198686-tech/yeaafafa/refs/heads/main/README.md'))()
end)

FunSection:NewButton('Bend over bang', 'girl sex', function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/melanie198686-tech/ayfrsfs/refs/heads/main/README.md'))()
end)

FunSection:NewButton('Bang', 'boy sex', function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/melanie198686-tech/yesirrr/refs/heads/main/README.md'))()
end)

FunSection:NewButton('Blowjob', 'Girl sex', function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/melanie198686-tech/sucker/refs/heads/main/README.md'))()
end)

-- ============================================================
-- SETTINGS TAB - Character Modifications
-- ============================================================

SettingsSection:NewButton("Remove Leg (Korblox)", "Clientsided - Removes your leg (Korblox)", function()
    local plr = game.Players.LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()

    -- R6
    local rightLeg = char:FindFirstChild("Right Leg")
    if rightLeg then rightLeg.Transparency = 1 end

    -- R15
    local rightUpperLeg = char:FindFirstChild("RightUpperLeg")
    local rightLowerLeg = char:FindFirstChild("RightLowerLeg")
    local rightFoot = char:FindFirstChild("RightFoot")
    if rightUpperLeg then rightUpperLeg.Transparency = 1 end
    if rightLowerLeg then rightLowerLeg.Transparency = 1 end
    if rightFoot then rightFoot.Transparency = 1 end

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Pendulum Hub V4",
        Text = "Korblox leg applied (clientsided)",
        Duration = 3
    })
end)

SettingsSection:NewButton("Remove Head (Headless)", "Clientsided - Makes you look headless", function()
    local plr = game.Players.LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()

    -- R6 head
    local head = char:FindFirstChild("Head")
    if head then
        head.Transparency = 1
        local face = head:FindFirstChildOfClass("Decal")
        if face then face.Transparency = 1 end
    end

    -- R15 head
    local r15Head = char:FindFirstChild("Head")
    if r15Head then
        r15Head.Transparency = 1
        local face = r15Head:FindFirstChildOfClass("Decal")
        if face then face.Transparency = 1 end
    end

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Pendulum Hub V4",
        Text = "Headless effect applied (clientsided)",
        Duration = 3
    })
end)

-- ============================================================
-- SETTINGS TAB - Menu Settings
-- ============================================================

MenuSection:NewKeybind("Open/Close Menu", "Toggles the GUI visibility", Enum.KeyCode.RightShift, function()
    Library:ToggleUI()
end)

MenuSection:NewButton("Close Menu", "Hides the GUI", function()
    Library:ToggleUI()
end)

MenuSection:NewButton("Destroy GUI", "Completely removes the GUI (rejoin or re-execute)", function()
    Library:Unload()
end)

-- ============================================================
-- CREDITS TAB
-- ============================================================

CreditsSection:NewLabel("Check the discord server for more information")
CreditsSection:NewLabel("Thank you all for going with us in this journey :D")
CreditsSection:NewButton("(this button definitely doesnt do anything)", "Hello uwu", function()
    setclipboard("https://www.youtube.com/watch?v=XrHTI04i9yk")
end)
CreditsSection:NewLabel("Credits to Tescalus#3758 for making the entire hub")
CreditsSection:NewLabel("Credits to padero#3957 for the Coffeeware tab")
CreditsSection:NewLabel("Ty ProductionTakeOne#3330 for help with new reanimation")
CreditsSection:NewLabel("Old ui was made by charli#4616")
CreditsSection:NewLabel("New ui was made by padero#3957")
CreditsSection:NewLabel("Recreate by melanie#070910")
CreditsSection:NewLabel("Recreate by pvijay#2024")
CreditsSection:NewLabel("Thanks for Giving us permission to edit this croaxer")
CreditsSection:NewLabel("github.com/Sanchez531/Pendulum-Hubs-Source/blob/main/LICENSE.md")
CreditsSection:NewButton("Copy Discord Invite", "Copies the invite link to your clipboard", function()
    setclipboard("https://discord.gg/pMBdK2marE")
end)
