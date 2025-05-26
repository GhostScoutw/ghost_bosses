
execute unless block ~ ~ ~ air run return run function boss:tick/pojectile/arrow/collision

tp @s ^ ^ ^0.1

execute positioned ~ ~-0.5 ~ as @a[distance=..0.5] run damage @s 9 mob_attack by @n[tag=bow_hitbox]

scoreboard players remove @s[scores={ghost.generic.counter=1..}] ghost.generic.counter 1

execute unless score @s ghost.generic.counter matches 1.. run return fail

execute at @s run function boss:tick/pojectile/arrow/ray