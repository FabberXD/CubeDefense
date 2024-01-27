local enemy = function(config)
	local t = {}
	if config == nil then
		config = {}
	end

	local defaultConfig = {
		base_health = 1,
		base_speed = 1,
		attributes = {},
		on_spawn = function(client, enemy) end,
		on_death = function(client, enemy) end,
		tick = function(client, enemy, dt) end,
	}

	for key, value in pairs(defaultConfig) do
		t[key] = config[key] or defaultConfig[key]
	end

	t.recalculateStats = function(self)
		self.health = self.base_health * (self.health_multiplier or 1)
		self.speed = self.base_speed * (self.speed_multiplier or 1)
	end
	t:recalculateStats()

	return t
end

return enemy
