tag @s add this.origin

scoreboard players set @s ghost.gravity_gun 2


execute as @e if score @s ghost.gravity_gun.grabbed_by = @n[tag=this.origin] ghost.generic.id as @n[tag=this.origin] run tag @s add grav_grabbed

execute unless entity @n[tag=grav_grabbed] run function boss:item/gravity_gun/ray_start
execute if entity @n[tag=grav_grabbed] run function boss:item/gravity_gun/ray_start_tp

tag @e[tag=grav_grabbed] remove grav_grabbed
tag @s remove this.origin