local impulse = function()
	local t = {}

	t.connectionCallback = function(self, event)
		-- DO SOMETHING
	end

	t.startConnection = function(self)
		local HANSHAKEID = math.random(0, 2048)

		local handshake = Event()
		handshake.action = "IMPULSE:HANDSHAKE"
		handshake.id = HANSHAKEID
		handshake:SendTo(Server)

		local connection = {}
		connection.handshake_id = HANSHAKEID
		connection.send = function(event)
			event.id = HANSHAKEID
			event:SendTo(Server)
		end
		connection.listener = LocalEvent:Listen(LocalEvent.Name.DidReceiveEvent, function(event)
			self:connectionCallback(event)
		end)
		return connection
	end

	return t
end
return impulse
