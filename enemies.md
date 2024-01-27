# Enemies 
* Zombie (4 HP, 0.5 T/Sec) [nanskip.td_zombie]
* Fast Zombie (3 HP, 1 T/Sec) [nanskip.td_fast_zombie]
* Iron Zombie (9 HP, 0.25 T/Sec) [nanskip.td_iron_zombie]
* Fire Zombie (10 HP, 0.4 T/Sec) [nanskip.td_fire_zombie]
* Big Zombie (50 HP, 0.15 T/Sec) 
* Invisible Zombie (10 HP, 0.4 T/Sec) (Invisible) 
* Wizard Zombie (40 HP, 0.3 T/Sec) (Spawner; Invisible) 
* Slime Zombie (30 HP, 1 T/Sec) (Jumping) 
* Electric Zombie (60 HP, 0.7 T/Sec) (Stunner) 
* Mindbreaker (4K HP, 0.65 T/Sec) (BOSS; Stunner) 
* ZomBoss (50K HP, 0.2 T/Sec) (BOSS; Stunner) 
 
# lua 
{ 
	"id": "zombie", 
	"base_health": 4, 
	"base_speed": 3, 
	"attributes": {}, 
	"on_spawn" = function(enemy), 
	"on_death" = function(enemy), 
	"tick" = function(enemy, dt) 
} 