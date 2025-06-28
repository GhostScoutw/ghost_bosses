summon marker ~ ~ ~ {Tags:["grav_ray"]}

scoreboard players set @n[tag=grav_ray] ghost.generic.counter 60

execute anchored eyes run tp @n[tag=grav_ray] ^-0.65 ^-0.25 ^0.5 facing ^ ^ ^20



execute as @n[tag=grav_ray] at @s run function boss:item/gravity_gun/ray_tp
