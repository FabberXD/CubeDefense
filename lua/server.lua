local server = function(impulse, game, map, tower, enemy, towers, maps, attributes)
	local t = {}

	t.impulse = impulse()
	t.DidRecieveEvent = t.impulse.connectionCallback

	return t
end
return server
