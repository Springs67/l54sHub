local function runfunc(func)
    local function e()
        func()
    end
    coroutine.wrap(e)()
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("l54s's Hub - Bubble Gum Simulator", "GrapeTheme")

local Main = Window:NewTab("Main")
local AutoFarm = Window:NewTab("AutoFarm")

local MainSection = Main:NewSection("Main")
local AutoFarmSection = AutoFarm:NewSection("AutoFarm")

runfunc(function()
    MainSection:NewToggle("faster speed", "fast speed", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end)
end)

runfunc(function()
    MainSection:NewToggle("gravity 0", "", function(state)
        if state then
            game.Workspace.Gravity = 0
        else
            game.Workspace.Gravity = 196.2
        end
    end)
end)

runfunc(function()
    local BlowBubbles = false
    AutoFarmSection:NewToggle("AutoBlow", "auto blows bubbles 4 u", function(state)
        if state then
            BlowBubbles = true
            repeat task.wait()
                local args = { [1] = "BlowBubble" }
                game:GetService("ReplicatedStorage"):WaitForChild("NetworkRemoteEvent"):FireServer(unpack(args))                
            until not BlowBubbles
        else
            BlowBubbles = false
        end
    end)
end)

runfunc(function()
    local EggHatched = "Frosted Egg"
    local Hatching = false
    local time1 = 0.1

    AutoFarmSection:NewToggle("AutoEggHatch", "auto hatches egg for u", function(state)
        if state then
            Hatching = true
            repeat task.wait(time1)
                local args = { [1] = "PurchaseEgg", [2] = EggHatched }
                game:GetService("ReplicatedStorage"):WaitForChild("NetworkRemoteEvent"):FireServer(unpack(args))
            until not Hatching         
        else
            Hatching = false
        end
    end)
    AutoFarmSection:NewSlider("Time", "time before hatch", 1, 0, function(time2)
        time1 = time2
    end)
    AutoFarmSection:NewTextBox("Egg", "type the egg you want here", function(egg)
        EggHatched = egg
    end)    
end)

local Hatching2
AutoFarmSection:NewToggle("MultiHatch 4 fun", "auto hatches egg for u", function(state)
    if state then
        Hatching2 = true
        repeat task.wait(time1)
            runfunc(function()
                local args = { [1] = "PurchaseEgg", [2] = "Frosted Egg", [3] = "Multi" }
                game:GetService("ReplicatedStorage"):WaitForChild("NetworkRemoteEvent"):FireServer(unpack(args))
            end)
            runfunc(function()
                local args = { [1] = "PurchaseEgg", [2] = "Candycane Egg", [3] = "Multi" }
                game:GetService("ReplicatedStorage"):WaitForChild("NetworkRemoteEvent"):FireServer(unpack(args))
            end)
        until not Hatching2         
    else
        Hatching2 = false
    end
end)
