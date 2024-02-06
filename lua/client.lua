local client = function(impulse, game, map, tower, enemy, attributes)
	local t = {}

	t.impulse = impulse()
	t.OnPlayerJoin = t.impulse.startConnection

	return t
end
return client
