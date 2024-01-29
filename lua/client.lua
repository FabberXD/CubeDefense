local client = function(impulse, game, map, tower, enemy)
	local t = {}

	t.impulse = impulse()
	t.onPlayerJoin = t.impulse.startConnection

	return t
end
return client
