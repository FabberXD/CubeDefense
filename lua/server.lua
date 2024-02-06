local server = function()
	impulse = impulse()
	Server.DidRecieveEvent = impulse.connectionCallback
end
return server
