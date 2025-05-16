execute align xyz rotated 0 0 run function animated_java:curse_of_midas/summon {args:{}}

execute as @n[tag=aj.curse_of_midas.root,tag=!boss] run function animated_java:curse_of_midas/animations/idle/play

execute summon iron_golem run ride @s mount @n[tag=aj.curse_of_midas.root,tag=!boss]


execute as @n[tag=aj.curse_of_midas.root,tag=!boss] store result score @s ghost.boss.hp.temp run scoreboard players set @s ghost.boss.hp 400

execute as @n[tag=aj.curse_of_midas.root,tag=!boss] run data modify entity @s CustomName set value '{"text":"Curse of Midas","color":"gold","bold":true}'
execute as @n[tag=aj.curse_of_midas.root,tag=!boss] on passengers as @s[type=iron_golem] run data modify entity @s CustomName set value '{"text":"Curse of Midas","color":"gold","bold":true}'

execute as @n[tag=aj.curse_of_midas.root,tag=!boss] on passengers as @s[type=iron_golem] run data merge entity @s {NoAI:1b,Silent:1b,Tags:["boss_hitbox"]}
execute as @n[tag=aj.curse_of_midas.root,tag=!boss] on passengers as @s[type=iron_golem] run effect give @s invisibility infinite 1 true

execute as @n[tag=aj.curse_of_midas.root,tag=!boss] on passengers as @s[type=iron_golem] run attribute @s scale base set 1.5


bossbar add boss:curse_of_midas {"text":"Curse of Midas","color":"gold","bold":true}
execute store result bossbar boss:curse_of_midas max run scoreboard players get @n[tag=aj.curse_of_midas.root,tag=!boss] ghost.boss.hp
bossbar set boss:curse_of_midas color yellow
bossbar set boss:curse_of_midas style notched_12
bossbar set boss:curse_of_midas visible true

execute as @n[tag=aj.curse_of_midas.root,tag=!boss] run tag @s add boss

