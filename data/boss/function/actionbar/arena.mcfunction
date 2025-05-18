
execute if score @s ghost.effect.midas matches 1.. run data \
modify storage boss:temp temp.actionbar append value '[{"text":"[!]","color":"red"},{"text":"Midas curse! ","color":"gold","bold":true},{"score":{"name":"@s","objective":"ghost.effect.midas"}}]'


data modify storage boss:temp temp.actionbar append value '[{"text": "cooldown: ","color":"yellow"},{"score": {"name": "@s","objective": "ghost.player.parry.cooldown"}}]'

execute if items entity @s container.* *[custom_data~{healing_charge:1b}] run data \
modify storage boss:temp temp.actionbar append value '[{"text": "  Energy: ","color":"green"},{"score": {"name": "@s","objective": "ghost.player.healing_charge"},"color":"green"}]'



execute if entity @n[tag=boss,tag=!boss_solo] run data \
modify storage boss:temp temp.actionbar append value '[{"text": "   ","color":"gold"},{"score": {"name": "@n[tag=boss,tag=!boss_solo]","objective": "ghost.boss.hp.temp"},"color":"gold"},{"text": "❤ | ","color":"gold"},{"score": {"name": "@n[tag=boss,tag=!boss_solo]","objective": "ghost.boss.hp"},"color":"red"},{"text": "❤","color":"red"}]'

execute if entity @n[tag=boss,tag=!boss_solo,scores={ghost.boss.heal=1..}] run data \
modify storage boss:temp temp.actionbar append value '[{"text": " +","color":"light_purple"},{"score": {"name": "@n[tag=boss,scores={ghost.boss.heal=1..},tag=!boss_solo]","objective": "ghost.boss.heal"},"color":"light_purple"},{"text": "❤","color":"light_purple"}]'




title @s actionbar {"nbt":"temp.actionbar[]","storage":"boss:temp","interpret":true} 