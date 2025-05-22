
execute as @a run function boss:player/tick



execute as @e[tag=wisp] at @s run function boss:tick/wisp


execute as @e[tag=boss] at @s run function boss:tick/boss

execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{delete_on_ground:1b}}}} run kill @s

execute as @e[type=marker,tag=solo_mid] at @s run function boss:solo_room/tick

execute as @e[tag=projectile] at @s run function boss:tick/projectile