
execute unless block ~ ~ ~ air run return run function boss:tick/pojectile/player/coin/collision

particle dripping_lava
tp @s ~ ~ ~ facing entity @n[tag=coin_target]

execute rotated ~ ~-10 run tp @s ^ ^ ^0.1

execute at @s if entity @n[tag=coin_target,distance=..1] run function boss:tick/pojectile/player/coin/collision



scoreboard players remove @s[scores={ghost.generic.counter=1..}] ghost.generic.counter 1

execute unless score @s ghost.generic.counter matches 1.. run return fail

execute at @s run function boss:tick/pojectile/player/coin/ray