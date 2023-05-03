-- probably searched and copy pasted a lot from nodecore, but it works

local function setmax(player)
	player:set_properties({hp_max = 1})  -- set max hp to 1 to stop annoying damage sounds
end

nodecore.register_playerstep({
	label = "1slotting",--stops healing by setting health to 0(you cant die in this game)
	action = function(player)
	nodecore.setphealth(player, 0)
	end,})

nodecore.register_on_joinplayer("set max health on join", setmax)
nodecore.register_on_newplayer("set max health on new", setmax)