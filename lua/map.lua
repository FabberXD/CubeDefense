local map = function(config)
	local t = {}

	local defaultConfig = {
		name = "",
		shape = "",
		playerScale = 1,
	}

	for key, value in pairs(defaultConfig) do
		t[key] = config[key] or defaultConfig[key]
	end

	t.load = function(self)
		local shape = MutableShape(shape)
		World:AddChild(shape)
		return shape
	end

	return t
end

return map
