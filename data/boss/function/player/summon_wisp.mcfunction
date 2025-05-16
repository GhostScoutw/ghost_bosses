
summon bee ~ ~ ~ {Invulnerable:1b,Silent:1b,Tags:["init","wisp"]}

execute as @n[type=bee,tag=init,tag=wisp] run effect give @s invisibility infinite 1 true

execute as @n[type=bee,tag=init,tag=wisp] run scoreboard players set @s ghost.wisp.lifetime 160
execute as @n[type=bee,tag=init,tag=wisp] run scoreboard players set @s ghost.wisp.delay 100
execute as @n[type=bee,tag=init,tag=wisp] run tag @s remove init