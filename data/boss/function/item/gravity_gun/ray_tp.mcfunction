tp @s ^ ^ ^0.1
particle bubble

scoreboard players remove @s ghost.generic.counter 1



execute at @s unless block ^ ^ ^0.1 air run scoreboard players set @s ghost.generic.counter 0

execute at @s if score @s ghost.generic.counter matches ..0 as @e[scores={ghost.gravity_gun.grabbed_by=0..}] \
    if score @s ghost.gravity_gun.grabbed_by = @n[tag=this.origin] ghost.generic.id \
    run effect give @s slow_falling 1 1 true

execute at @s if score @s ghost.generic.counter matches ..0 as @e[scores={ghost.gravity_gun.grabbed_by=0..}] \
    if score @s ghost.gravity_gun.grabbed_by = @n[tag=this.origin] ghost.generic.id \
    run tp @s ~ ~ ~


#execute at @s if score @s ghost.generic.counter matches ..0 run effect give @n[tag=grav_grabbed] slow_falling 1 1 true
#execute at @s if score @s ghost.generic.counter matches ..0 run tp @n[tag=grav_grabbed] ~ ~ ~
execute if score @s ghost.generic.counter matches ..0 run return run kill @s

execute at @s run function boss:item/gravity_gun/ray_tp