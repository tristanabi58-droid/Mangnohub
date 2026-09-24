local OrionLib = loadstring(game:HttpGet(('https://githubusercontent.com')))()

local Window = OrionLib:MakeWindow({
    Name = "Mangno v1 | Steal an Egg 🥚", 
    HidePremium = true, 
    SaveConfig = true, 
    ConfigFolder = "MangnoConfig"
})

local MainTab = Window:MakeTab({
    Name = "Main Features",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddLabel("Status: Free Version (No Premium / No Key)")

_G.AutoSteal = false
MainTab:AddToggle({
    Name = "Auto Steal Egg (BETA)",
    Default = false,
    Callback = function(Value)
        _G.AutoSteal = Value
        while _G.AutoSteal do
            task.wait(1)
            print("Mangno v1: Simulating Auto Steal...")
        end
    end    
})

_G.AutoHatch = false
MainTab:AddToggle({
    Name = "Auto Hatch Egg",
    Default = false,
    Callback = function(Value)
        _G.AutoHatch = Value
        while _G.AutoHatch do
            task.wait(0.5)
            print("Mangno v1: Simulating Auto Hatch...")
        end
    end    
})

local PlayerTab = Window:MakeTab({
    Name = "Player Hacks",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

PlayerTab:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 200,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

OrionLib:Init()
