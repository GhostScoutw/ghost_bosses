execute as @s[scores={ghost.player.parry.duration=1..}] run scoreboard players remove @s ghost.player.parry.duration 1

execute store result score @s ghost.player.parry.shield run data get entity @s AbsorptionAmount

execute if score @s ghost.player.parry.shield < @s ghost.player.parry.max.shield at @s run function boss:player/parry/execute

execute if entity @s[tag=reset_parry] run scoreboard players set @s ghost.player.parry.cooldown 2
execute if entity @s[tag=reset_parry] run scoreboard players set @s ghost.player.parry.duration 0

tag @s remove reset_parry
execute if entity @s[scores={ghost.player.parry.duration=..0}] run effect clear @s absorption
execute if entity @s[scores={ghost.player.parry.duration=..0}] run attribute @s movement_speed base set 0.1