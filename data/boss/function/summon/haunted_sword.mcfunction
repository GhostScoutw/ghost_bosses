execute align xyz rotated 0 0 run function animated_java:haunted_sword/summon {args:{}}

execute as @n[tag=aj.haunted_sword.root,tag=!boss] run function animated_java:haunted_sword/animations/idle/play

execute summon iron_golem run ride @s mount @n[tag=aj.haunted_sword.root,tag=!boss]


execute as @n[tag=aj.haunted_sword.root,tag=!boss] store result score @s ghost.boss.hp.temp run scoreboard players set @s ghost.boss.hp 200

execute as @n[tag=aj.haunted_sword.root,tag=!boss] run data modify entity @s CustomName set value '{"text":"Haunted Sword","color":"dark_red"}'
execute as @n[tag=aj.haunted_sword.root,tag=!boss] on passengers as @s[type=iron_golem] run data modify entity @s CustomName set value '{"text":"Haunted Sword","color":"dark_red"}'

execute as @n[tag=aj.haunted_sword.root,tag=!boss] on passengers as @s[type=iron_golem] run data merge entity @s {NoAI:1b,Silent:1b,Tags:["boss_hitbox"]}
execute as @n[tag=aj.haunted_sword.root,tag=!boss] on passengers as @s[type=iron_golem] run effect give @s invisibility infinite 1 true

execute if score @s ghost.room.id matches -2147483648..2147483647 run scoreboard players operation @n[tag=aj.haunted_sword.root,tag=!boss] ghost.boss.solo_claim = @s ghost.room.claimed
execute if entity @s[tag=solo_room] run tag @n[tag=aj.haunted_sword.root,tag=!boss] add boss_solo

execute unless entity @s[tag=solo_room] run bossbar add boss:haunted_sword {"text":"Haunted Sword","color":"dark_red","bold":true}
execute unless entity @s[tag=solo_room] store result bossbar boss:haunted_sword max run scoreboard players get @n[tag=aj.haunted_sword.root,tag=!boss] ghost.boss.hp
execute unless entity @s[tag=solo_room] run bossbar set boss:haunted_sword color red
execute unless entity @s[tag=solo_room] run bossbar set boss:haunted_sword style notched_6
execute unless entity @s[tag=solo_room] run bossbar set boss:haunted_sword visible true

execute as @n[tag=aj.haunted_sword.root,tag=!boss] run function boss:summon/get_id
execute as @n[tag=aj.haunted_sword.root,tag=!boss] run tag @s add boss

