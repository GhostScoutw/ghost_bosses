tag @s add this.projectile
execute as @a if score @s ghost.generic.id = @n[tag=this.projectile] ghost.generic.id run tag @s add this.origin

execute on passengers on attacker if entity @s[tag=this.origin] as @n[tag=this.projectile] at @s run function boss:tick/pojectile/player/coin/ray_start

execute at @s run tp @s ^ ^ ^0.15 ~ ~12
execute at @s run tp @s ~ ~-0.025 ~

execute unless block ~ ~ ~ air on passengers run kill @s
execute unless block ~ ~ ~ air run kill @s

execute unless entity @n[tag=this.origin,distance=..30] on passengers run kill @s
execute unless entity @n[tag=this.origin,distance=..30] run kill @s

execute as @a[tag=this.origin] run tag @s remove this.origin
tag @s remove this.projectile