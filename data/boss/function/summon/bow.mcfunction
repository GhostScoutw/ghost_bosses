execute align xyz rotated 0 0 run function animated_java:bow/summon {args:{}}

execute as @n[tag=aj.bow.root,tag=!boss] run function animated_java:bow/animations/idle/play

execute summon iron_golem run ride @s mount @n[tag=aj.bow.root,tag=!boss]


execute as @n[tag=aj.bow.root,tag=!boss] store result score @s ghost.boss.hp.temp run scoreboard players set @s ghost.boss.hp 200

execute as @n[tag=aj.bow.root,tag=!boss] run data modify entity @s CustomName set value {"text":"Gale Wind","color":"dark_aqua"}
execute as @n[tag=aj.bow.root,tag=!boss] on passengers as @s[type=iron_golem] run data modify entity @s CustomName set value {"text":"Gale Wind","color":"dark_aqua"}

execute as @n[tag=aj.bow.root,tag=!boss] on passengers as @s[type=iron_golem] run data merge entity @s {NoAI:1b,Silent:1b,Tags:["boss_hitbox","bow_hitbox"]}
execute as @n[tag=aj.bow.root,tag=!boss] on passengers as @s[type=iron_golem] run effect give @s invisibility infinite 1 true

execute as @n[tag=aj.bow.root,tag=!boss] on passengers as @s[type=iron_golem] run attribute @s scale base set 1.5

execute if score @s ghost.room.id matches -2147483648..2147483647 run scoreboard players operation @n[tag=aj.bow.root,tag=!boss] ghost.boss.solo_claim = @s ghost.room.claimed
execute if entity @s[tag=solo_room] run tag @n[tag=aj.bow.root,tag=!boss] add boss_solo

execute unless entity @s[tag=solo_room] run bossbar add boss:bow {"text":"Gale Wind","color":"dark_aqua","bold":true}
execute unless entity @s[tag=solo_room] store result bossbar boss:bow max run scoreboard players get @n[tag=aj.bow.root,tag=!boss] ghost.boss.hp
execute unless entity @s[tag=solo_room] run bossbar set boss:bow color blue
execute unless entity @s[tag=solo_room] run bossbar set boss:bow style notched_6
execute unless entity @s[tag=solo_room] run bossbar set boss:bow visible true

execute as @n[tag=aj.bow.root,tag=!boss] run function boss:summon/get_id
execute as @n[tag=aj.bow.root,tag=!boss] run tag @s add boss

