possibleAttributes = {}

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
		base_burst_time = 0.1,
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

	t.checkAttributes = function(self)
		for key, value in pairs(self.attributes) do
			if possibleAttributes[key] == nil then
				error("TOWER: Invalid attribute '" .. key .. "' in tower " .. self.id)
			end
		end
	end
	t:checkAttributes()

	t.recalculateStats = function(self)
		self.damage = self.base_damage * (self.damage_multiplier or 1)
		self.burst = self.base_burst
		self.burst_time = self.base_burst_time * (self.burst_time_multiplier or 1)
		self.reload_time = self.base_reload_time * (self.reload_multiplier or 1)
		self.radius = self.base_radius * (self.radius_multiplier or 1)
	end
	t.reload = t.reload_time
	t.burst_reload = 0
	t:recalculateStats()

	return t
end

return tower
