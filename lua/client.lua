local client = function()
	local t = {}

	t.impulse = impulse()
	t.OnPlayerJoin = t.impulse.startConnection

	return t
end
return client
