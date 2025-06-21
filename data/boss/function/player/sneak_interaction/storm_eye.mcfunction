
execute unless score @s ghost.player.healing_charge matches 10.. run return run tellraw @s {"text":"Not enough energy!","color":"red"}

scoreboard players remove @s ghost.player.healing_charge 10

playsound item.mace.smash_air master @a ~ ~ ~ 1 2

tag @s add this
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 2 2

execute anchored eyes positioned ^ ^ ^1 run summon minecraft:item_display ~ ~ ~ {teleport_duration:1,Tags:["init","breeze_bolt","projectile"],item: {count: 1, id: "minecraft:breeze_rod"}, transformation: {left_rotation: [0.7071068f, 4.2146854E-7f, -4.2146854E-7f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [1.0f, 3.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},brightness:{block:15,sky:15}}

execute as @n[tag=init,tag=breeze_bolt] at @s rotated as @p[tag=this] run rotate @s ~ ~
execute as @n[tag=init,tag=breeze_bolt] run scoreboard players set @s ghost.generic.lifetime 200

scoreboard players operation @n[tag=init,tag=breeze_bolt] ghost.generic.id = @s ghost.generic.id
execute as @n[tag=init,tag=breeze_bolt] run tag @s remove init

tag @s remove this