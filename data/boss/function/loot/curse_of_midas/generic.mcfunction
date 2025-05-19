
execute store result score loot_type ghost.generic.rng \
    run random value 1..10

execute if score loot_type ghost.generic.rng matches 1.. run data modify storage \
    boss:rng temp.loot.type set value "cursed_gold_ingot"

execute store result score loot_count ghost.generic.rng \
    store result storage boss:rng temp.loot.count int 1 \
    run random value 1..10


function boss:loot/apply