
execute unless score @s ghost.generic.id = @n[tag=this.room] ghost.room.claimed run tag @s add intruder

tellraw @s[tag=intruder,tag=!is_dev] {"text":"Someone else is using this room!","color":"red"}

execute at @n[tag=this.door] run tp @a[tag=intruder,tag=!is_dev] ~ ~ ~

execute as @s[tag=intruder] run tag @s remove intruder