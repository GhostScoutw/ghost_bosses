#scale 1 8 2
execute positioned ^ ^3 ^1 run summon minecraft:item_display ~ ~ ~ {teleport_duration:1,Tags:["init","air_strike","projectile"],item: {count: 1, id: "minecraft:arrow"}, transformation: {left_rotation: [0.7071068f, 4.2146854E-7f, -4.2146854E-7f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, -4.0f]},brightness:{block:15,sky:15}}

execute as @n[tag=init,tag=air_strike] at @s run rotate @s facing entity @n[tag=this.airstrike]
execute as @n[tag=init,tag=air_strike] at @s run rotate @s ~ 90


execute as @n[tag=init,tag=air_strike] run scoreboard players set @s ghost.generic.delay 30
execute as @n[tag=init,tag=air_strike] run scoreboard players set @s ghost.generic.lifetime 200

scoreboard players operation @n[tag=init,tag=air_strike] ghost.boss.id = @s ghost.boss.id
execute as @n[tag=init,tag=air_strike] run tag @s remove init