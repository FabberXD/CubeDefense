local game = function(config)
	local t = {}
	if config == nil then
		config = {}
	end

	local defaultConfig = {
		id = 0,
		wave = 0,
		players = {},
		attributes = {},
		on_start = function(game) end,
		on_end = function(game) end,
		on_wave = function(game) end,
	}

	for key, value in pairs(defaultConfig) do
		t[key] = config[key] or defaultConfig[key]
	end

	return t
end

return game
