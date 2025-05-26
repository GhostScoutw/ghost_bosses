
execute if block ~ ~ ~ air unless entity @s[tag=collided] run function boss:tick/pojectile/arrow/ray_start
tag @s add this.projectile
execute as @e[tag=boss] if score @s ghost.boss.id = @n[tag=this.projectile] ghost.boss.id run tag @s add this.origin

execute unless entity @n[tag=this.origin,tag=boss,distance=..40] run kill @s

execute as @e[tag=boss,tag=this.origin] run tag @s remove this.origin
tag @s remove this.projectile