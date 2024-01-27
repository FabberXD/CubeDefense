local impulse = function(onEvent)
	local t = {}

	t.onEvent = onEvent

	t.clients = {}
	t.connectionCallback = function(self, event)
		if event.action == "IMPULSE:HANDSHAKE" then
			if t.clients[event.Sender.Username] == nil then
				t.clients[event.Sender.Username] = {
					handshake_id = event.id,
					events = { event },
				}
			end
		end

		if t.clients[event.Sender.Username] ~= nil and t.clients[event.Sender.Username].id == event.id then
			t:onEvent(event)
		end
	end

	local connection = {}
	connection.listener = LocalEvent:Listen(LocalEvent.Name.DidReceiveEvent, function(event)
		t:connectionCallback(event)
	end)

	return t
end
return impulse
