def displayTower(tower:dict):
	displayedTower = f"""[{tower['id']}] {tower['name']}
		DAMAGE: {tower['base_damage']}
		BURST: {tower['base_burst']}
		BURST_TIME: {tower['base_burst_time']}
		RELOAD: {tower['base_reload_time']}

		Top?: {tower['is_top']}
		Attributes: {tower['attributes']}""".replace("\t", "")
	return displayedTower