attribute @s attack_damage modifier remove madness
attribute @s attack_speed modifier remove madness
scoreboard players reset @s ghost.player.madness_stack
execute unless score @s ghost.player.weapon_id matches 2 run return fail

scoreboard players set @s ghost.player.madness_stack 1

execute store result score @s ghost.generic.hp.temp run data get entity @s Health
execute store result score @s ghost.generic.hp run attribute @s max_health get


execute store result score @s ghost.player.madness_stack store result storage boss:temp temp.madness float 0.02 store result storage boss:temp temp.speed float 0.08 run scoreboard players operation @s ghost.generic.hp -= @s ghost.generic.hp.temp

function boss:player/effects/madness_apply with storage boss:temp temp