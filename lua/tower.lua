local tower = function(config)
	local t = {}
	if config == nil then
		config = {}
	end

	local defaultConfig = {
		id = 0,
		name = "",
		base_damage = 1,
		base_burst = 1,
		base_reload_time = 1,
		base_radius = 1,
		is_top = false,
		attributes = {},
		on_place = function(client, tower) end,
		on_shoot = function(client, tower, enemy) end,
		tick = function(client, tower, dt) end,
	}

	for key, value in pairs(defaultConfig) do
		t[key] = config[key] or defaultConfig[key]
	end

	t.recalculateStats = function(self)
		self.damage = self.base_damage * (self.damage_multiplier or 1)
		self.burst = self.base_burst
		self.reload_time = self.base_reload_time * (self.reload_multiplier or 1)
		self.radius = self.base_radius * (self.radius_multiplier or 1)
	end
	t.reload = t.reload_time
	t:recalculateStats()

	return t
end

return tower
