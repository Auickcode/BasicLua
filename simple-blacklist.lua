--[[

Very simple blacklist

--]]

local blacklisted = {'usernames', 'go', 'here'}
local concat = table.concat(blacklisted)

game.Players.PlayerAdded:Connect(function(plr)
	if string.find(concat, plr.Name) then
		plr:Kick("You are blacklisted!")
	end
end)
