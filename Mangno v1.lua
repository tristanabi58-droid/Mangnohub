-- Memuat Library GUI (Menggunakan Orion Library)
local OrionLib = loadstring(game:HttpGet(('https://githubusercontent.com')))()

-- Membuat Window Utama
local Window = OrionLib:MakeWindow({
    Name = "Mangno v1 | Steal an Egg 🥚", 
    HidePremium = true, 
    SaveConfig = true, 
    ConfigFolder = "MangnoConfig"
})

-- Membuat Tab Utama
local MainTab = Window:MakeTab({
    Name = "Main Features",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Bagian Info Status (Menegaskan Tidak Ada Premium)
MainTab:AddLabel("Status: Free Version (No Premium / No Key)")

-- Fitur Toggle: Auto Steal (Logika Dasar)
_G.AutoSteal = false
MainTab:AddToggle({
    Name = "Auto Steal Egg (BETA)",
    Default = false,
    Callback = function(Value)
        _G.AutoSteal = Value
        while _G.AutoSteal do
            task.wait(1)
            -- Catatan: Logika pemindahan telur ke base diletakkan di sini
            -- Diperlukan path objek spesifik dari game Steal an Egg
            print("Mangno v1: Simulating Auto Steal...")
        end
    end    
})

-- Fitur Toggle: Auto Hatch / Hatch Egg
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

-- Membuat Tab Player (Untuk Speed & Jump)
local PlayerTab = Window:MakeTab({
    Name = "Player Hacks",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Slider untuk Mengatur Kecepatan Jalan (WalkSpeed)
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

-- Inisialisasi Menu GUI
OrionLib:Init()
