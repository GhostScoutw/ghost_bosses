
execute if entity @s[tag=aj.haunted_sword.root] run function boss:tick/boss/haunted_sword
execute if entity @s[tag=aj.curse_of_midas.root] run function boss:tick/boss/curse_of_midas
execute if entity @s[tag=aj.bow.root] run function boss:tick/boss/bow


scoreboard players remove @s[scores={ghost.boss.move_cooldown=1..}] ghost.boss.move_cooldown 1
scoreboard players remove @s[scores={ghost.generic.agro_timer=1..}] ghost.generic.agro_timer 1

