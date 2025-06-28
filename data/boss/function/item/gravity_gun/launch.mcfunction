

scoreboard players set @s ghost.player.parry.cooldown 15

tag @s add this.origin
scoreboard players reset player_id ghost.gravity_gun.launch

execute as @e if score @s ghost.gravity_gun.grabbed_by = @n[tag=this.origin] ghost.generic.id run tag @s add this.launch



execute store result score grav_x ghost.gravity_gun.launch run data get entity @n[tag=this.launch] Pos[0] 100
execute store result score grav_y ghost.gravity_gun.launch run data get entity @n[tag=this.launch] Pos[1] 100
execute store result score grav_z ghost.gravity_gun.launch run data get entity @n[tag=this.launch] Pos[2] 100

execute as @n[tag=this.launch] at @s rotated as @n[tag=this.origin] run summon marker ^ ^ ^1 {Tags:["this.marker"]}



execute store result score grav_x2 ghost.gravity_gun.launch run data get entity @n[tag=this.marker] Pos[0] 100
execute store result score grav_y2 ghost.gravity_gun.launch run data get entity @n[tag=this.marker] Pos[1] 100
execute store result score grav_z2 ghost.gravity_gun.launch run data get entity @n[tag=this.marker] Pos[2] 100

kill @e[tag=this.marker]

scoreboard players operation grav_x2 ghost.gravity_gun.launch -= grav_x ghost.gravity_gun.launch
scoreboard players operation grav_y2 ghost.gravity_gun.launch -= grav_y ghost.gravity_gun.launch
scoreboard players operation grav_z2 ghost.gravity_gun.launch -= grav_z ghost.gravity_gun.launch



execute store result storage boss:temp gravity_gun.grav_x double 0.02 run scoreboard players get grav_x2 ghost.gravity_gun.launch
execute store result storage boss:temp gravity_gun.grav_y double 0.02 run scoreboard players get grav_y2 ghost.gravity_gun.launch
execute store result storage boss:temp gravity_gun.grav_z double 0.02 run scoreboard players get grav_z2 ghost.gravity_gun.launch

execute unless entity @n[tag=this.launch] run return run tellraw @s {"text":"No entity grabbed to launch!","color":"red"}

execute as @n[tag=this.launch] at @s run function boss:item/gravity_gun/launch_apply with storage boss:temp gravity_gun
execute as @e[tag=this.launch] run tag @s remove this.launch
tag @s remove this.origin


