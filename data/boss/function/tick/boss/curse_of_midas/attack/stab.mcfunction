particle dust_color_transition{from_color:[1.000,0.506,0.012],scale:1.5,to_color:[1.000,1.000,0.000]} ^ ^ ^5 1 0 1 0 200


playsound item.trident.hit_ground master @a ~ ~ ~ 0.5 0.5
playsound item.trident.hit_ground master @a ~ ~ ~ 0.5 0.7
playsound item.trident.hit_ground master @a ~ ~ ~ 0.5 0.9

scoreboard players set @s ghost.boss.move_cooldown 30

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s positioned ^ ^ ^5.5 as @a[distance=..3] run damage @s 8 mob_attack by @n[tag=damager]
execute at @s positioned ^ ^ ^5.5 as @a[distance=..3] run scoreboard players add @s ghost.effect.midas 10


execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager