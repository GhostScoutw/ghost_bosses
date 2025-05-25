scoreboard players reset @s menu

clear @s *[custom_data~{menu_gui:1b}]
function boss:item/give/replace_held/menu_item

scoreboard players set @s ghost.player.item.cooldown 10
scoreboard players set @s ghost.player.menu_page 1
inventory @s enderchest