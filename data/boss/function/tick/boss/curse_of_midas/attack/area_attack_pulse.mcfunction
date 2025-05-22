
execute rotated ~ 0 run particle minecraft:glow_squid_ink ~ ~0.5 ~ ^ ^ ^1000000 0.00000215 0

execute rotated ~90 0 run particle minecraft:glow_squid_ink ~ ~0.5 ~ ^ ^ ^1000000 0.00000215 0

execute rotated ~180 0 run particle minecraft:glow_squid_ink ~ ~0.5 ~ ^ ^ ^1000000 0.00000215 0

execute rotated ~270 0 run particle minecraft:glow_squid_ink ~ ~0.5 ~ ^ ^ ^1000000 0.00000215 0


execute unless score @s ghost.generic.counter matches 1.. run return run scoreboard players reset @s ghost.generic.counter
scoreboard players remove @s ghost.generic.counter 1
execute rotated ~1.5 ~ run function boss:tick/boss/curse_of_midas/attack/area_attack_pulse