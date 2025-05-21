
execute as @a[tag=!has_id] run function boss:player/join
effect give @a saturation infinite 1 true

scoreboard players remove @a[scores={ghost.player.parry.executed=1..}] ghost.player.parry.executed 1

scoreboard players enable @a death_tip

execute as @a[scores={death_tip=1..}] run function boss:player/death_tip_toggle

execute as @a at @s run function boss:advancements/tick

execute as @e[tag=wisp] at @s run function boss:tick/wisp

execute as @a at @s run function boss:player/effects/check

execute as @a if score tools ghost.config matches 1.. run function boss:tick/items

execute as @a[scores={ghost.player.item.cooldown=1..}] run scoreboard players remove @s ghost.player.item.cooldown 1

#actionbar
execute as @a if score actionbar ghost.config matches 1.. run function boss:actionbar/actionbar

execute as @a[scores={ghost.player.parry.cooldown=1..}] run function boss:player/parry/cooldown

execute as @a[scores={ghost.player.parry.duration=1..}] run function boss:player/parry/tick

execute as @e[tag=boss] at @s run function boss:tick/boss

execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{delete_on_ground:1b}}}} run kill @s

execute as @e[type=marker,tag=solo_mid] at @s run function boss:solo_room/tick

execute as @e[tag=projectile] at @s run function boss:tick/projectile