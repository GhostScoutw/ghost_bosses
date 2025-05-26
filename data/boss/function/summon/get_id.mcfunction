tag @s add has_id
tag @s add this.root

execute store result score @s ghost.boss.id run scoreboard players add last ghost.boss.id 1

execute on passengers run scoreboard players operation @s ghost.boss.id = @n[tag=this.root] ghost.boss.id

tag @s remove this.root