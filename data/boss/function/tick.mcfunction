
execute as @a run function boss:player/tick



execute as @e[tag=wisp] at @s run function boss:tick/wisp


execute as @e[tag=boss] at @s run function boss:tick/boss

execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{delete_on_ground:1b}}}} run kill @s

execute as @e[type=item_display,tag=room_nav,tag=root] at @s run function boss:solo_room/nav/tick

execute as @e[type=marker,tag=solo_mid] at @s run function boss:solo_room/tick

execute as @e[tag=projectile] at @s run function boss:tick/projectile


execute as @e[type=interaction,tag=arsenal] if data entity @s interaction run function boss:tick/arsenal


execute as @e[tag=crown] unless score crown ghost.config matches 1 on passengers run kill @s
execute as @e[tag=crown] unless score crown ghost.config matches 1 run kill @s

execute as @e[tag=crown] on vehicle on passengers as @s[tag=crown] run tag @s add dont_kill

execute as @e[tag=crown,tag=!dont_kill] on passengers run kill @s
execute as @e[tag=crown,tag=!dont_kill] run kill @s

execute as @e[tag=crown] on vehicle on passengers as @s[tag=crown] run tag @s remove dont_kill

execute unless entity @a[scores={ghost.gravity_gun=1..}] run effect clear @e[scores={ghost.gravity_gun.grabbed_by=-2147483648..2147483647}] slow_falling
execute unless entity @a[scores={ghost.gravity_gun=1..}] run scoreboard players reset @e[scores={ghost.gravity_gun.grabbed_by=-2147483648..2147483647}] ghost.gravity_gun.grabbed_by
