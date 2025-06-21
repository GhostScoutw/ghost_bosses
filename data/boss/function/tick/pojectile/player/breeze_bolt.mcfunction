tag @s add this.projectile
execute as @a if score @s ghost.generic.id = @n[tag=this.projectile] ghost.generic.id run tag @s add this.origin

execute if block ~ ~ ~ air unless entity @s[tag=collided] run function boss:tick/pojectile/player/breeze_bolt/ray_start
execute unless entity @n[tag=this.origin,distance=..30] run kill @s

execute as @a[tag=this.origin] run tag @s remove this.origin
tag @s remove this.projectile