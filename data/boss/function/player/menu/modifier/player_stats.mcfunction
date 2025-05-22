
#item slot

$item modify entity @s enderchest.$(slot) {"function": "minecraft:set_lore","entity": "this",\
"lore": [\
[{"text": "Parries: ","color": "gold","italic":false},{"score": {"objective": "ghost.stat.parry_count","name": "@s"},"color": "dark_aqua","italic":false}],\
[{"text": "Damage blocked: ","color": "gold","italic":false},{"score": {"objective": "ghost.stat.damage_blocked","name": "@s"},"color": "dark_aqua","italic":false}],\
[{"text": "Deaths: ","color": "gold","italic":false},{"score": {"objective": "ghost.player.death","name": "@s"},"color": "dark_aqua","italic":false}]\
],"mode": "replace_all"}
