
#execute if items entity @s player.cursor *[custom_data~{menu_button:1b}] run say clicked button
#execute if items entity @s container.* *[custom_data~{menu_button:1b}] run say clicked button

execute if items entity @s player.cursor *[custom_data~{menu_button:1b,next_page:1b}] run function boss:player/menu/button/next_page
execute if items entity @s container.* *[custom_data~{menu_button:1b,next_page:1b}] run function boss:player/menu/button/next_page

execute if items entity @s player.cursor *[custom_data~{menu_button:1b,prev_page:1b}] run function boss:player/menu/button/prev_page
execute if items entity @s container.* *[custom_data~{menu_button:1b,prev_page:1b}] run function boss:player/menu/button/prev_page

execute if items entity @s player.cursor *[custom_data~{menu_button:1b,player_stats:1b}] run function boss:player/menu/button/player_stats
execute if items entity @s container.* *[custom_data~{menu_button:1b,player_stats:1b}] run function boss:player/menu/button/player_stats

execute if items entity @s player.cursor *[custom_data~{menu_button:1b,bestiary:1b}] run function boss:player/menu/button/bestiary
execute if items entity @s container.* *[custom_data~{menu_button:1b,bestiary:1b}] run function boss:player/menu/button/bestiary


clear @s *[custom_data~{menu_item:1b}]