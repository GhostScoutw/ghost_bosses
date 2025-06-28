
execute if entity @n[type=player,tag=!this.origin,distance=..2] run return run scoreboard players operation @n[type=player,tag=!this.origin,distance=..2] ghost.gravity_gun.grabbed_by = @n[tag=this.origin] ghost.generic.id
execute if entity @n[tag=boss,distance=..2] run return run scoreboard players operation @n[tag=boss,distance=..2] ghost.gravity_gun.grabbed_by = @n[tag=this.origin] ghost.generic.id
execute if entity @n[tag=grav_test,distance=..2] run return run scoreboard players operation @n[tag=grav_test,distance=..2] ghost.gravity_gun.grabbed_by = @n[tag=this.origin] ghost.generic.id
