particle end_rod ~ ~0.3 ~ 0.3 0.3 0.3 0.1 10

data modify entity @s transformation.scale set value [1f,8.0f,2f]

data merge entity @s {transformation:{translation:[0.0f,0.0f,-3.0f]},interpolation_duration:2,start_interpolation:0,item:{id:"breeze_rod"}}

#playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 2
playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 0.5 1.5

execute at @s as @a[distance=..2] run damage @s 7 mob_attack by @n[tag=bow_hitbox]

tag @s add collided