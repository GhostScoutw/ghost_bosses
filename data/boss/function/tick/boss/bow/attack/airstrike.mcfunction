#scale 1 8 2
$execute rotated ~$(x) 0 positioned ^ ^ ^$(z) run summon minecraft:item_display ~ ~ ~ {teleport_duration:1,Tags:["init","air_strike","projectile"],item: {count: 1, id: "minecraft:tipped_arrow",components:{potion_contents:{custom_color:65527}}}, transformation: {left_rotation: [0.7071068f, 4.2146854E-7f, -4.2146854E-7f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, -25.0f]},brightness:{block:15,sky:15}}

execute as @n[tag=init,tag=air_strike] at @s run function boss:tick/pojectile/airstrike/move_to_ground

execute as @n[tag=init,tag=air_strike] at @s run rotate @s facing entity @n[tag=this.airstrike]

execute as @n[tag=init,tag=air_strike] at @s run rotate @s ~180 90
$execute as @n[tag=init,tag=air_strike] at @s run rotate @s ~$(x1) ~$(z1)



execute as @n[tag=init,tag=air_strike] run scoreboard players set @s ghost.generic.delay 15
execute as @n[tag=init,tag=air_strike] run scoreboard players set @s ghost.generic.lifetime 80

execute as @n[tag=init,tag=air_strike] at @s positioned ~ ~0.5 ~ run function boss:tick/boss/bow/attack/airstrike_pulse

scoreboard players operation @n[tag=init,tag=air_strike] ghost.boss.id = @s ghost.boss.id
execute as @n[tag=init,tag=air_strike] run tag @s remove init