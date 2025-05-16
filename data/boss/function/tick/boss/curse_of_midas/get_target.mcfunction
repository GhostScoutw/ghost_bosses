
scoreboard players reset @s ghost.boss.target
execute if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run scoreboard players operation @s ghost.boss.target = @e[gamemode=!creative,gamemode=!spectator,distance=..15,sort=furthest] ghost.generic.id

execute if score @s ghost.boss.target matches -2147483648..2147483647 run scoreboard players set @s ghost.generic.agro_timer 120