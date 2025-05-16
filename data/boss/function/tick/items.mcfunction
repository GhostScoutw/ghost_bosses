execute at @s store result score @s ghost.item_count run clear @s *[custom_data~{parry:1b}] 0
execute at @s if score @s ghost.item_count matches 0 run function boss:item/give/sword
execute at @s if score @s ghost.item_count matches 2 run clear @s *[custom_data~{parry:1b}] 1

execute at @s store result score @s ghost.item_count run clear @s *[custom_data~{healing_charge:1b}] 0
execute at @s if score @s ghost.item_count matches 0 run function boss:item/give/healing_charge
execute at @s if score @s ghost.item_count matches 2 run clear @s *[custom_data~{healing_charge:1b}] 1