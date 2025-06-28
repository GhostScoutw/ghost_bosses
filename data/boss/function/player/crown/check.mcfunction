
execute on passengers run tag @s add check

execute unless entity @n[tag=check] run function boss:player/crown/create
execute if entity @n[tag=check] as @n[tag=check] at @s run function boss:player/crown/tick

execute on passengers run tag @s remove check