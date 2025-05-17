
scoreboard players reset @s ghost.boss.target

execute unless score @s ghost.boss.solo_claim matches 1.. if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run scoreboard players operation @s ghost.boss.target = @p[gamemode=!creative,gamemode=!spectator] ghost.generic.id

tag @s add this.boss

execute if score @s ghost.boss.solo_claim matches 1.. as @a[distance=..10,gamemode=!creative,gamemode=!spectator] if score @s ghost.generic.id = @n[tag=this.boss] ghost.boss.solo_claim run scoreboard players operation @n[tag=this.boss] ghost.boss.target = @s ghost.generic.id

tag @s remove this.boss



execute if score @s ghost.boss.target matches -2147483648..2147483647 run scoreboard players set @s ghost.generic.agro_timer 120