local games = "BGS, Free Hatchers, Treasure Chest Simulator, and Mine Blocks Simulator"

if game.PlaceId == 11162791099 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/l54sHub/3kdIKfmsdSf/games/11162791099.lua"))()
elseif game.PlaceId == 2512643572 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/l54sHub/3kdIKfmsdSf/games/2512643572.lua"))()
elseif game.PlaceId == 11922377983 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/l54sHub/3kdIKfmsdSf/games/11922377983.lua"))()
elseif game.PlaceId == 13171269529 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/l54sHub/3kdIKfmsdSf/games/13171269529.lua"))()
else
    game.StarterGui:SetCore("SendNotification", {
		Title = "l54sHub";
		Text = "game not supported. Games that ARE supported are '"..games.."'.";
		Duration = 10;
	})
end
