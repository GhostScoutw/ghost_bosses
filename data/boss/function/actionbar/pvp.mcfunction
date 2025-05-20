

data modify storage boss:temp temp.actionbar append value '[{"text": "cooldown: ","color":"yellow"},{"score": {"name": "@s","objective": "ghost.player.parry.cooldown"}}]'

execute if items entity @s container.* *[custom_data~{healing_charge:1b}] run data \
modify storage boss:temp temp.actionbar append value '[{"text": "  Energy: ","color":"green"},{"score": {"name": "@s","objective": "ghost.player.healing_charge"},"color":"green"}]'




title @s actionbar {"nbt":"temp.actionbar[]","storage":"boss:temp","interpret":true} 