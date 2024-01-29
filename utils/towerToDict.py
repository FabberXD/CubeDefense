import json

def towerToDict(tower:str):
	tower = tower.replace("\n", "\"").replace("\t", "").replace(" =", "\": ").replace(",", ", ")[:-4] + "}"
	return json.loads(tower)