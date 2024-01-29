local impulse = function(onEvent, debug)
	local t = {}
	if onEvent == nil then
		error("IMPULSE: onEvent callback is nil")
	end
	if debug == nil then
		debug = false
	end

	t.onEvent = onEvent

	t.clients = {}
	t.connectionCallback = function(self, event)
		if event.action == "IMPULSE:HANDSHAKE" then
			if t.clients[event.Sender.Username] == nil then
				t.clients[event.Sender.Username] = {
					handshake_id = event.id,
					events = {},
				}
			else
				t.clients[event.Sender.Username].handshake_id = event.id
			end
		end

		if event.action ~= nil then
			print(
				"IMPULSE [Debug]: Got "
					.. event.action
					.. " event from "
					.. event.Sender.Username
					.. " with handshake_id: "
					.. event.id
			)
		end
		if t.clients[event.Sender.Username] ~= nil and t.clients[event.Sender.Username].id == event.id then
			table.insert(t.clients[event.Sender.Username].events, event)
			t:onEvent(event)
		end
	end

	return t
end
return impulse
