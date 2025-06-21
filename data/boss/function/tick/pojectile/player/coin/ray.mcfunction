
execute unless block ~ ~ ~ air run return run function boss:tick/pojectile/player/breeze_bolt/collision

tp @s ^ ^ ^0.1

execute at @s if entity @p[tag=this.origin,team=ghost.pvp] as @a[distance=..0.7,tag=!this.origin] run function boss:tick/pojectile/player/coin/collision

execute at @s positioned ~ ~0.7 ~ if entity @p[tag=this.origin,team=!ghost.pvp] as @e[distance=..1,type=!player,tag=!friendly] run damage @s 9 player_attack by @p[tag=this.origin]
execute at @s positioned ~ ~ ~ if entity @p[tag=this.origin,team=!ghost.pvp] as @e[distance=..1,type=!player,tag=!friendly] run damage @s 9 player_attack by @p[tag=this.origin]
execute at @s positioned ~ ~-0.7 ~ if entity @p[tag=this.origin,team=!ghost.pvp] as @e[distance=..1,type=!player,tag=!friendly] run damage @s 9 player_attack by @p[tag=this.origin]

scoreboard players remove @s[scores={ghost.generic.counter=1..}] ghost.generic.counter 1

execute unless score @s ghost.generic.counter matches 1.. run return fail

execute at @s run function boss:tick/pojectile/player/breeze_bolt/ray