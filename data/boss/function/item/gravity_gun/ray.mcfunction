tp @s ^ ^ ^0.1
particle bubble

scoreboard players remove @s ghost.generic.counter 1



execute at @s unless block ~ ~ ~ air run return run function boss:item/gravity_gun/collision
execute at @s if entity @n[tag=!this.origin,type=!text_display,type=!item_display,type=!marker,tag=!crown,distance=..2] run return run function boss:item/gravity_gun/collision

execute if score @s ghost.generic.counter matches ..0 run return run kill @s

execute at @s run function boss:item/gravity_gun/ray