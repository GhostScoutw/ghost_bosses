data modify storage example:s list set value []
data modify storage example:s list append value '{"text":"a"}'
data modify storage example:s list append value '{"text":"b"}'
tellraw @a {"nbt":"list[]","storage":"example:s","interpret":true,"separator":" | "} 


data modify storage example:s list set value []
data modify storage example:s list append value '[{"text": "cooldown: ","color":"yellow"},{"score": {"name": "@s","objective": "ghost.player.parry.cooldown"}}]'

execute if items entity @s container.* *[custom_data~{healing_charge:1b}] run data modify storage example:s list append value '[{"text": "  Energy: ","color":"green"},{"score": {"name": "@s","objective": "ghost.player.healing_charge"},"color":"green"}]'

tellraw @a {"nbt":"list[]","storage":"example:s","interpret":true} 