particle cloud ~ ~ ~ 0.2 0.2 0.2 0.3 40

execute positioned ~ ~0.2 ~ run function boss:tick/boss/bow/attack/cloud_pulse

playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 2 1.5

execute at @s as @a[distance=..3] run damage @s 7 mob_attack by @n[tag=bow_hitbox]

tag @s add collided