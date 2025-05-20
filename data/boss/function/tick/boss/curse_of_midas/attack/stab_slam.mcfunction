particle dust_color_transition{from_color:[1.000,0.506,0.012],scale:2,to_color:[1.000,1.000,0.000]} ~ ~ ~ 1.8 0 1.8 0 400

playsound item.trident.hit_ground master @a ~ ~ ~ 1.5 0.5
playsound item.trident.thunder master @a ~ ~ ~ 0.5 2

scoreboard players set @s ghost.boss.move_cooldown 30

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s positioned ~ ~ ~ as @a[distance=..4.5] run damage @s 16 mob_attack by @n[tag=damager]
execute at @s positioned ~ ~ ~ as @a[distance=..4.5] run scoreboard players add @s ghost.effect.midas 30


execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager