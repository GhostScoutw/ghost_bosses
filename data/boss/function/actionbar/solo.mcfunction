
execute if score @s ghost.effect.midas matches 1.. run data \
modify storage boss:temp temp.actionbar append value '[{"text":"[!]","color":"red"},{"text":"Midas curse! ","color":"gold","bold":true},{"score":{"name":"@s","objective":"ghost.effect.midas"}}]'


data modify storage boss:temp temp.actionbar append value '[{"text": "cooldown: ","color":"yellow"},{"score": {"name": "@s","objective": "ghost.player.parry.cooldown"}}]'

execute if items entity @s container.* *[custom_data~{healing_charge:1b}] run data \
modify storage boss:temp temp.actionbar append value '[{"text": "  Energy: ","color":"green"},{"score": {"name": "@s","objective": "ghost.player.healing_charge"},"color":"green"}]'


tag @s add player.this
execute as @e[tag=boss,tag=boss_solo] if score @s ghost.boss.solo_claim = @p[tag=player.this] ghost.generic.id run tag @s add my_boss


execute as @n[tag=my_boss] at @s run particle flame ^ ^1 ^1

execute if entity @n[tag=boss,tag=boss_solo,tag=my_boss] run data \
modify storage boss:temp temp.actionbar append value '[{"text": "   ","color":"gold"},{"score": {"name": "@n[tag=my_boss]","objective": "ghost.boss.hp.temp"},"color":"gold"},{"text": "❤ | ","color":"gold"},{"score": {"name": "@n[tag=my_boss]","objective": "ghost.boss.hp"},"color":"red"},{"text": "❤","color":"red"}]'


execute if entity @n[tag=boss,tag=boss_solo,scores={ghost.boss.heal=1..},tag=my_boss] run data \
modify storage boss:temp temp.actionbar append value '[{"text": " +","color":"light_purple"},{"score": {"name": "@n[scores={ghost.boss.heal=1..},tag=my_boss]","objective": "ghost.boss.heal"},"color":"light_purple"},{"text": "❤","color":"light_purple"}]'



title @s actionbar {"nbt":"temp.actionbar[]","storage":"boss:temp","interpret":true} 
execute as @e[tag=boss,tag=boss_solo,tag=my_boss] run tag @s remove my_boss
tag @s remove player.this


