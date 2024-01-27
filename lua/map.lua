local map = function(config)
	local t = {}

	local defaultConfig = {
		name = "",
		shape = "",
	}

	for key, value in pairs(defaultConfig) do
		t[key] = config[key] or defaultConfig[key]
	end

	return t
end

return map
