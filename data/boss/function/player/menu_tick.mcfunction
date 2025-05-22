
execute if items entity @s player.cursor *[custom_data~{menu_item:1b}] run function boss:player/menu/button
execute if items entity @s container.* *[custom_data~{menu_item:1b}] run function boss:player/menu/button

execute if score @s ghost.player.menu_page matches 1 run function boss:player/menu/page1
execute if score @s ghost.player.menu_page matches 2 run function boss:player/menu/page2

execute if score @s ghost.player.menu_page matches 10 run function boss:player/menu/page_playerstatus
execute if score @s ghost.player.menu_page matches 15 run function boss:player/menu/page_bestiary


