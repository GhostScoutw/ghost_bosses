

execute if entity @s[tag=arsenal_adventurer] on target run scoreboard players set @s ghost.player.weapon_id 1
execute if entity @s[tag=arsenal_adventurer] on target run clear @s *[minecraft:custom_data~{parry:1b}]

execute if entity @s[tag=arsenal_adventurer] on target run tellraw @s {"text":"Equipped Weapon","color":"gold"}
execute if entity @s[tag=arsenal_adventurer] run return run data remove entity @s interaction


execute if entity @s[tag=arsenal_madness] on target if entity @s[tag=ghost.adv.haunted_sword] run scoreboard players set @s ghost.player.weapon_id 2
execute if entity @s[tag=arsenal_madness] on target if entity @s[tag=ghost.adv.haunted_sword] run clear @s *[minecraft:custom_data~{parry:1b}]

execute if entity @s[tag=arsenal_madness] on target if entity @s[tag=ghost.adv.haunted_sword] run tellraw @s {"text":"Equipped Weapon","color":"gold"}
execute if entity @s[tag=arsenal_madness] on target if entity @s[tag=!ghost.adv.haunted_sword] run tellraw @s {"text":"You do not meet the requirements to equip this weapon!","color":"red"}
execute if entity @s[tag=arsenal_madness] run return run data remove entity @s interaction


execute if entity @s[tag=arsenal_galewind] on target if entity @s[tag=ghost.adv.bow] run scoreboard players set @s ghost.player.weapon_id 4
execute if entity @s[tag=arsenal_galewind] on target if entity @s[tag=ghost.adv.bow] run clear @s *[minecraft:custom_data~{parry:1b}]

execute if entity @s[tag=arsenal_galewind] on target if entity @s[tag=ghost.adv.bow] run tellraw @s {"text":"Equipped Weapon","color":"gold"}
execute if entity @s[tag=arsenal_galewind] on target if entity @s[tag=!ghost.adv.bow] run tellraw @s {"text":"You do not meet the requirements to equip this weapon!","color":"red"}
execute if entity @s[tag=arsenal_galewind] run return run data remove entity @s interaction
