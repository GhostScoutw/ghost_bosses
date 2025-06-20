scoreboard players reset @s change_weapon

scoreboard players add @s ghost.player.weapon_id 1

execute if score @s[tag=ghost.adv.haunted_sword] ghost.player.weapon_id matches 2 run tellraw @s [{"text":"Equipped weapon: "},{"text":"Madness","color":"dark_red"}]
execute if score @s[tag=ghost.adv.haunted_sword] ghost.player.weapon_id matches 2 run return run clear @s *[custom_data~{parry:1b}]


scoreboard players set @s ghost.player.weapon_id 1

tellraw @s [{"text":"Equipped weapon: "},{"text":"Adventurer's Sword","color":"gray"}]
clear @s *[custom_data~{parry:1b}]