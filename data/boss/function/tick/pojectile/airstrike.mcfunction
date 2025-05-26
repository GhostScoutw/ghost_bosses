scoreboard players remove @s[scores={ghost.generic.delay=1..}] ghost.generic.delay 1


execute unless entity @s[tag=collided] unless entity @s[scores={ghost.generic.delay=1..}] run function boss:tick/pojectile/airstrike/collision
tag @s add this.projectile
#execute as @e[tag=boss] if score @s ghost.boss.id = @n[tag=this.projectile] ghost.boss.id run tag @s add this.origin

#execute unless entity @n[tag=this.origin,tag=boss,distance=..40] run kill @s

#execute as @e[tag=boss,tag=this.origin] run tag @s remove this.origin
tag @s remove this.projectile