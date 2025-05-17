
execute unless score @s ghost.room.claimed matches -2147483648..2147483647 store result score @s ghost.room.claimed at @s positioned ~-15 ~-15 ~-15 as @p[dx=30,dy=30,dz=30] run scoreboard players get @s ghost.generic.id

execute unless score @s ghost.room.claimed matches -2147483648..2147483647 run return fail


tag @s add this.room

execute as @e[tag=solo_door] if score @s ghost.room.id = @n[tag=this.room] ghost.room.id run tag @s add this.door

execute as @e[tag=solo_room] if score @s ghost.room.id = @n[tag=this.room] ghost.room.id run scoreboard players operation @s ghost.room.claimed = @n[tag=this.room] ghost.room.claimed


execute at @s positioned ~-15 ~-15 ~-15 as @a[dx=30,dy=30,dz=30] positioned ~15 ~15 ~15 run function boss:solo_room/player_in_range


execute as @e[tag=solo_text] if score @s ghost.room.id = @n[tag=this.room] ghost.room.id run data merge entity @s {text:'{"text":"OCCUPIED","color":"red","bold":true}'}

#checks if theres a solo boss alive or a selector
execute as @e[tag=boss] if score @s ghost.boss.solo_claim = @n[tag=this.room] ghost.room.claimed run tag @n[tag=this.room] add solo_boss_alive

execute as @e[tag=solo_selector] if score @s ghost.room.claimed = @n[tag=this.room] ghost.room.claimed run tag @n[tag=this.room] add solo_selector_exists

execute as @s[tag=!solo_boss_alive,tag=!solo_selector_exists] at @s run function boss:solo_room/create_selector

#checks if owner left game or walked away
tag @s remove is_claimed
execute at @s positioned ~-15 ~-15 ~-15 as @p[dx=30,dy=30,dz=30] if score @s ghost.generic.id = @n[tag=this.room] ghost.room.claimed run tag @n[tag=this.room] add is_claimed

execute as @s[tag=solo_mid,tag=!is_claimed] run function boss:solo_room/unclaim




execute as @e[tag=solo_door,tag=this.door] run tag @s remove this.door
tag @s remove solo_selector_exists
tag @s remove solo_boss_alive
tag @s remove this.room
