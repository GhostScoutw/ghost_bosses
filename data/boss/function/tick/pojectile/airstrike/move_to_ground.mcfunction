execute at @s if block ~ ~ ~ air run tp @s ~ ~-0.1 ~

execute at @s if blocks ~ ~ ~ ~ -64 ~ ~ 318 ~ all run kill @s

execute at @s unless block ~ ~ ~ air run tp @s ~ ~-0.2 ~

execute if block ~ ~ ~ air at @s run function boss:tick/pojectile/airstrike/move_to_ground