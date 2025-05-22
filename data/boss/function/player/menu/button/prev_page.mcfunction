function boss:player/menu/clear

execute if score @s ghost.player.menu_page matches 6.. run return run scoreboard players set @s ghost.player.menu_page 1
execute if score @s ghost.player.menu_page matches 0..5 run return run scoreboard players remove @s ghost.player.menu_page 1
