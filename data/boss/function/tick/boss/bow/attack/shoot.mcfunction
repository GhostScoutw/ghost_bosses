tag @s add this.bow
tag @s remove airstrike.origin
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 2 2

execute positioned ^ ^3 ^1 run summon minecraft:item_display ~ ~ ~ {teleport_duration:1,Tags:["init","arrow","projectile"],item: {count: 1, id: "minecraft:arrow"}, transformation: {left_rotation: [0.7071068f, 4.2146854E-7f, -4.2146854E-7f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [1.0f, 7.9999995f, 1.9999999f], translation: [0.0f, 0.0f, -4.0f]},brightness:{block:15,sky:15}}

execute as @n[tag=init,tag=arrow] at @s rotated as @n[tag=this.bow] run rotate @s ~ ~
execute as @n[tag=init,tag=arrow] run scoreboard players set @s ghost.generic.lifetime 200

scoreboard players operation @n[tag=init,tag=arrow] ghost.boss.id = @s ghost.boss.id
execute as @n[tag=init,tag=arrow] run tag @s remove init

tag @s remove this.bow