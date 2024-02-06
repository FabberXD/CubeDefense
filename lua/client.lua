local client = function()
	local t = {}

	t.impulse = impulse()
	Client.OnPlayerJoin = t.impulse.startConnection

	Camera:SetModeFree()
	World:AddChild(Player)
	Player.IsHidden = true

	return t
end
return client
