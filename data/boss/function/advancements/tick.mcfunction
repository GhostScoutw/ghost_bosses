
#execute as @a[tag=!ghost.adv.parry] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Parrystastic]","color":"green"},{"text":"!","color": "white"}]

execute if entity @s[tag=ghost.adv.parry] run advancement grant @s only boss:parry


execute if entity @s[tag=ghost.adv.haunted_sword] run advancement grant @s only boss:haunted_sword
execute if entity @s[tag=ghost.adv.haunted_sword.only_parry] run advancement grant @s only boss:parry_haunted_sword
execute if entity @s[tag=ghost.adv.haunted_sword.nohit] run advancement grant @s only boss:nohit_haunted_sword


execute if entity @s[tag=ghost.adv.curse_of_midas] run advancement grant @s only boss:curse_of_midas
execute if entity @s[tag=ghost.adv.curse_of_midas.only_parry] run advancement grant @s only boss:parry_curse_of_midas
execute if entity @s[tag=ghost.adv.curse_of_midas.nohit] run advancement grant @s only boss:nohit_curse_of_midas

execute if entity @s[tag=ghost.adv.bow] run advancement grant @s only boss:galewind
execute if entity @s[tag=ghost.adv.bow.only_parry] run advancement grant @s only boss:parry_galewind
execute if entity @s[tag=ghost.adv.bow.nohit] run advancement grant @s only boss:nohit_galewind


execute if entity @s[scores={ghost.stat.parry_count=100..}] run advancement grant @s only boss:parry100
execute if entity @s[scores={ghost.stat.parry_count=1000..}] run advancement grant @s only boss:parry1000


execute if entity @s[scores={ghost.stat.damage_blocked=500..}] run advancement grant @s only boss:block500
execute if entity @s[scores={ghost.stat.damage_blocked=5000..}] run advancement grant @s only boss:block5000
