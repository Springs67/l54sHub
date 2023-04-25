local games = "Bubble Gum Simulator and Free Hatchers"

if game.PlaceId == 11162791099 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/l54sHub/3kdIKfmsdSf/games/11162791099.lua"))()
elseif game.PlaceId == 2512643572 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/l54sHub/3kdIKfmsdSf/games/2512643572.lua"))()
else
    game.StarterGui:SetCore("SendNotification", {
		Title = "l54sHub";
		Text = "game not supported. Games that ARE supported are '"..games.."'.";
		Duration = 10;
	})
end
