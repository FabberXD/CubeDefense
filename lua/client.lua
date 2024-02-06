local client = function()
	local t = {}

	t.impulse = impulse()
	t.OnPlayerJoin = t.impulse.startConnection

	Camera:SetModeFree()
	World:AddChild(Player)
	Player.IsHidden = true

	return t
end
return client
