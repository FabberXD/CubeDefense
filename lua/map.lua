local map = function(config)
	local t = {}
	if config == nil then
		config = {}
	end

	local defaultConfig = {
		name = "",
		shape = "",
		scale = 1,
		playerScale = 1,

		spawnPos = Number3(0, 0, 0),
		endPos = Number3(0, 0, 0),
	}

	for key, value in pairs(defaultConfig) do
		t[key] = config[key] or defaultConfig[key]
	end

	t.load = function(self)
		local mapShape = MutableShape(self.shape)
		World:AddChild(mapShape)

		mapShape.Scale = self.scale

		return mapShape
	end

	return t
end

return map
