

execute if entity @s[tag=!got_attacked_normally] on attacker run tag @s add only_parry

execute if entity @s[tag=!attacked_player] on attacker run tag @s add nohit



execute on vehicle if entity @s[tag=aj.haunted_sword.root] if entity @p[tag=only_parry] on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.haunted_sword.only_parry] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Parry King!]","color":"aqua"},{"text":"!","color": "white"}]
execute on vehicle if entity @s[tag=aj.haunted_sword.root] if entity @p[tag=only_parry] on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.haunted_sword.only_parry

execute on vehicle if entity @s[tag=aj.haunted_sword.root] if entity @p[tag=nohit] on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.haunted_sword.nohit] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Dodge King!]","color":"red","bold":true},{"text":"!","color": "white"}]
execute on vehicle if entity @s[tag=aj.haunted_sword.root] if entity @p[tag=nohit] on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.haunted_sword.nohit


execute on vehicle if entity @s[tag=aj.curse_of_midas.root] if entity @p[tag=only_parry] on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.curse_of_midas.only_parry] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[False Ruler!]","color":"aqua"},{"text":"!","color": "white"}]
execute on vehicle if entity @s[tag=aj.curse_of_midas.root] if entity @p[tag=only_parry] on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.curse_of_midas.only_parry

execute on vehicle if entity @s[tag=aj.curse_of_midas.root] if entity @p[tag=nohit] on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.curse_of_midas.nohit] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[True Ruler!]","color":"red","bold":true},{"text":"!","color": "white"}]
execute on vehicle if entity @s[tag=aj.curse_of_midas.root] if entity @p[tag=nohit] on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.curse_of_midas.nohit


execute on vehicle if entity @s[tag=aj.bow.root] if entity @p[tag=only_parry] on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.bow.only_parry] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Tamer of the Wind!]","color":"aqua"},{"text":"!","color": "white"}]
execute on vehicle if entity @s[tag=aj.bow.root] if entity @p[tag=only_parry] on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.bow.only_parry

execute on vehicle if entity @s[tag=aj.bow.root] if entity @p[tag=nohit] on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.bow.nohit] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Eye of the Storm!]","color":"red","bold":true},{"text":"!","color": "white"}]
execute on vehicle if entity @s[tag=aj.bow.root] if entity @p[tag=nohit] on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.bow.nohit


execute on attacker run tag @s remove only_parry
execute on attacker run tag @s remove nohit
