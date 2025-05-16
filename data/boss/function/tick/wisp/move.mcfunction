

execute at @s if entity @n[tag=boss,distance=..30] run tp @s ~ ~ ~ facing entity @n[tag=boss,distance=..30]



execute at @s if entity @n[tag=boss,distance=..30] run tp @s ^ ^ ^0.5

execute at @s if entity @n[tag=boss,distance=..1] run function boss:tick/wisp/apply