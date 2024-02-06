local server = function()
	local t = {}

	t.impulse = impulse()
	t.DidRecieveEvent = t.impulse.connectionCallback

	return t
end
return server
