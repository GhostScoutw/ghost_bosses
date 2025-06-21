
execute unless score @s ghost.player.healing_charge matches 15.. run return run tellraw @s {"text":"Not enough energy!","color":"red"}

scoreboard players remove @s ghost.player.healing_charge 15

playsound block.chain.place master @a ~ ~ ~ 2 1.5

tag @s add this

execute anchored eyes rotated ~ 0 run summon item_display ^ ^0.3 ^0.3 {teleport_duration:1,Tags:["init","coin","projectile"],Passengers:[{id:"minecraft:interaction",width:0.2f,height:0.2f,response:1b,Tags:["coin_hitbox"]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0.3f,0.3f,0.3f]},item:{id:"minecraft:sunflower",count:1},brightness:{block:15,sky:15}}

execute as @n[tag=init,tag=coin] at @s rotated as @p[tag=this] run rotate @s ~ -90
execute as @n[tag=init,tag=coin] run scoreboard players set @s ghost.generic.lifetime 200

scoreboard players operation @n[tag=init,tag=coin] ghost.generic.id = @s ghost.generic.id
execute as @n[tag=init,tag=coin] run tag @s remove init

tag @s remove this