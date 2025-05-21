$execute rotated ~$(rotation) ~ positioned ^ ^ ^$(distance) run summon item_display ~ ~ ~ {Tags:["init","midas_safezone","projectile"]}


execute as @n[tag=init,tag=midas_safezone] run scoreboard players set @s ghost.generic.lifetime 100

execute as @n[tag=init,tag=midas_safezone] run tag @s remove init