
tag @s add this.nav

execute as @e[tag=solo_mid] \
    if score @s ghost.room.id = @n[tag=this.nav] ghost.room.id \
    if score @s ghost.room.claimed matches -2147483648..2147483647 \
    run data merge entity @n[tag=this.nav] {item:{id:"minecraft:red_dye"}}

execute as @e[tag=solo_mid] \
    if score @s ghost.room.id = @n[tag=this.nav] ghost.room.id \
    unless score @s ghost.room.claimed matches -2147483648..2147483647 \
    run data merge entity @n[tag=this.nav] {item:{id:"minecraft:lime_dye"}}

execute on passengers as @s[type=interaction] if data entity @s interaction on target run tag @s add nav_player
execute on passengers as @s[type=interaction] if data entity @s interaction on target run say i interacted
execute on passengers as @s[type=interaction] if data entity @s interaction run data remove entity @s interaction

execute as @e[tag=solo_door] \
    if score @s ghost.room.id = @n[tag=this.nav] ghost.room.id \
     at @s run tp @p[tag=nav_player] ~ ~ ~ facing entity @n[tag=solo_mid]


execute as @a[tag=nav_player] run tag @s remove nav_player
tag @s remove this.nav

