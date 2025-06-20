
execute unless score @s ghost.player.weapon_id matches -2147483648..2147483647 run scoreboard players set @s ghost.player.weapon_id 1

execute at @s store result score @s ghost.item_count run clear @s *[custom_data~{parry:1b}] 0


execute at @s if score @s ghost.item_count matches 0 if score @s ghost.player.weapon_id matches 1 run function boss:item/give/sword
execute at @s if score @s ghost.item_count matches 0 if score @s ghost.player.weapon_id matches 2 run function boss:item/give/madness


execute at @s if score @s ghost.item_count matches 2 run clear @s *[custom_data~{parry:1b}] 1

execute at @s store result score @s ghost.item_count run clear @s *[custom_data~{healing_charge:1b}] 0
execute at @s if score @s ghost.item_count matches 0 run function boss:item/give/healing_charge
execute at @s if score @s ghost.item_count matches 2 run clear @s *[custom_data~{healing_charge:1b}] 1

execute at @s store result score @s ghost.item_count run clear @s *[custom_data~{menu_gui:1b}] 0
execute at @s if score @s ghost.item_count matches 0 run function boss:item/give/menu_item
execute at @s if score @s ghost.item_count matches 2 run clear @s *[custom_data~{menu_gui:1b}] 1