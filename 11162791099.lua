local function runfunc(func)
    local function e()
        func()
    end
    coroutine.wrap(e)()
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("l54s's Hub - Free Hatchers", "GrapeTheme")

local Main = Window:NewTab("Main")
local AutoFarm = Window:NewTab("AutoFarm")

local MainSection = Main:NewSection("Main")
local AutoFarmSection = AutoFarm:NewSection("AutoFarm")

runfunc(function()
    MainSection:NewToggle("Auto Equip Best", "", function(state)
        if state then
            repeat
                game:GetService("ReplicatedStorage"):WaitForChild("Marchy"):WaitForChild("PetRemotes"):WaitForChild("Generic"):WaitForChild("EquipBest"):FireServer()
                task.wait()
            until not state
        else
            
        end
    end)
end)

runfunc(function()
    MainSection:NewToggle("Auto CraftAll", "", function(state)
        if state then
            repeat
                game:GetService("ReplicatedStorage"):WaitForChild("Marchy"):WaitForChild("PetRemotes"):WaitForChild("Generic"):WaitForChild("CraftAll"):FireServer()
                task.wait()
            until not state
        else
            
        end
    end)
end)

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
    local EggHatched = "Basic Egg"
    local Hatching = false
    local time1 = 0.1

    AutoFarmSection:NewToggle("AutoEggHatch 1x", "auto hatches egg for u", function(state)
        if state then
            Hatching = true
            repeat task.wait(time1)
                local args = { [1] = EggHatched, [2] = "Buy1" }     
                game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))                
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

runfunc(function()
    local EggHatched = "Basic Egg"
    local Hatching = false
    local time1 = 0.1

    AutoFarmSection:NewToggle("AutoEggHatch 3x", "auto hatches egg for u", function(state)
        if state then
            Hatching = true
            repeat task.wait(time1)
                local args = { [1] = EggHatched, [2] = "Buy3" }     
                game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))                
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

runfunc(function()
    local EggHatched = "Basic Egg"
    local Hatching = false
    local time1 = 0.1

    AutoFarmSection:NewToggle("AutoEggHatch 8x", "auto hatches egg for u", function(state)
        if state then
            Hatching = true
            repeat task.wait(time1)
                local args = { [1] = EggHatched, [2] = "Buy8" }     
                game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))                
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
