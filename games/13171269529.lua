loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/l54sHub/3kdIKfmsdSf/scripts/notify"))() local function F_1(func) local function e() func() end coroutine.wrap(e)() end function F_2(e, f) local args = { [1] = e, [2] = f } game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args)) end function F_3(e) local args = { [1] = workspace:WaitForChild("Box"):WaitForChild(e):WaitForChild("Model") } game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Box"):FireServer(unpack(args)) end function F_4(e) local args = { [1] = { [1] = e } } game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Gift"):InvokeServer(unpack(args)) end local L_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() local L_2 = L_1.CreateLib("l54s's Hub - Treasure Chest Simulator", "GrapeTheme") local L_3 = L_2:NewTab("Main") local L_6 = L_2:NewTab("AutoFarm") local L_7 = L_3:NewSection("Main") local L_8 = L_6:NewSection("AutoFarm") F_1(function() L_8:NewButton("AutoMine", "auto mines for you", function() _G.Mining = not _G.Mining while _G.Mining do F_3("1") task.wait(0.01) end end) end) F_1(function() L_8:NewButton("AutoSpinWheel", "auto spins the wheel for you", function() _G.AutoSpinWheel = not _G.AutoSpinWheel while _G.AutoSpinWheel do game:GetService("ReplicatedStorage"):WaitForChild("Wheel"):FireServer() wait(930) end end) end) F_1(function() L_7:NewButton("InfinitePower", "we do some trolling..", function() notify("devs", "note: this only bypasses server, does not show on leaderboards!", 10) _G.InfinitePower = not _G.InfinitePower while _G.InfinitePower do game:GetService("Players").LocalPlayer.leaderstats.Strength.Value = 9e999999999 task.wait() end end) end) F_1(function() L_7:NewButton("InfiniteWins", "we do some trolling..", function() notify("devs", "note: this only bypasses server, does not show on leaderboards!", 10) _G.InfiniteWins = not _G.InfiniteWins while _G.InfiniteWins do game:GetService("Players").LocalPlayer.leaderstats.Wins.Value = 9e999999999 task.wait() end end) end) F_1(function() L_7:NewButton("InfiniteRebirths", "we do some trolling..", function() notify("devs", "note: this only bypasses server, does not show on leaderboards!", 10) _G.InfiniteWins = not _G.InfiniteWins while _G.InfiniteWins do game:GetService("Players").LocalPlayer.Rebirth.Value = 9e999999999 task.wait() end end) end)
--[[F_1(function()
	L_8:NewButton("AutoGiftCollector", "auto collects gifts for you", function()
		_G.AutoGiftCollector = not _G.AutoGiftCollector
		while _G.AutoGiftCollector do
			for i,v in pairs(game:GetService("Players").LocalPlayer.Gifts) do
				if v.Name ~= "180" then
					F_4(180)
				end
			end
			for i,v in pairs(game:GetService("Players").LocalPlayer.Gifts) do
				if v.Name ~= "300" then
					F_4(300)
				end
			end
			for i,v in pairs(game:GetService("Players").LocalPlayer.Gifts) do
				if v.Name ~= "420" then
					F_4(420)
				end
			end
			for i,v in pairs(game:GetService("Players").LocalPlayer.Gifts) do
				if v.Name ~= "900" then
					F_4(900)
				end
			end
			for i,v in pairs(game:GetService("Players").LocalPlayer.Gifts) do
				if v.Name ~= "1200" then
					F_4(1200)
				end
			end
			task.wait()
		end
	end)
end)]]
