
#item slot

$item modify entity @s enderchest.$(slot) {"function": "minecraft:set_lore","entity": "this",\
"lore": [\
[{"text": "Haunted Sword kills: ","color": "gold","italic":false},{"score": {"objective": "ghost.stat.parry_count","name": "@s"},"color": "dark_aqua","italic":false}],\
[{"text": "Curse Of Midas kills: ","color": "gold","italic":false},{"score": {"objective": "ghost.stat.damage_blocked","name": "@s"},"color": "dark_aqua","italic":false}],\
[{"text": "Deaths: ","color": "gold","italic":false},{"score": {"objective": "ghost.player.death","name": "@s"},"color": "dark_aqua","italic":false}]\
],"mode": "replace_all"}
