local impulse = function()
	local t = {}

	t.connectionCallback = function(self, event)
		-- DO SOMETHING
	end

	t.startConnection = function(self)
		local HANSHAKEID = math.random(0, 2048)

		local connection = {}
		connection.handshake_id = HANSHAKEID
		connection.send = function(event)
			if event.action == nil then
				error("IMPULSE: Action is nil")
			end
			event.id = HANSHAKEID
			event:SendTo(Server)
		end
		connection.listener = LocalEvent:Listen(LocalEvent.Name.DidReceiveEvent, function(event)
			self:connectionCallback(event)
		end)

		local handshake = Event()
		handshake.action = "IMPULSE:HANDSHAKE"
		handshake.id = HANSHAKEID
		handshake:SendTo(Server)
		return connection
	end

	return t
end
return impulse
