
scoreboard players remove loot_count ghost.generic.rng 1

execute if data storage boss:rng {temp:{loot:{type:"cursed_gold_ingot"}}} run function boss:loot/give/cursed_gold_ingot

execute if data storage boss:rng {temp:{loot:{type:"rotten_metal_chunk"}}} run function boss:loot/give/rotten_metal_chunk



execute if score loot_count ghost.generic.rng matches 1.. run return run function boss:loot/apply