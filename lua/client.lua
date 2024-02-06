local client = function()
	impulse = impulse()
	Client.OnPlayerJoin = impulse.startConnection

	Camera:SetModeFree()
	World:AddChild(Player)
	Player.IsHidden = true
end
return client
