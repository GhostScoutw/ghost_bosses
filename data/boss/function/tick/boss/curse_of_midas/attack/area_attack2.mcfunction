#particle dust_color_transition{from_color:[1.000,0.506,0.012],scale:1.5,to_color:[1.000,1.000,0.000]} ^ ^ ^5 1 0 1 0 200

execute positioned ^ ^ ^4.5 run particle dust_color_transition{from_color:[1.000,1.000,0.000],scale:4,to_color:[1.000,0.467,0.000]} ~ ~0.2 ~ 9 9 9 0.5 2000


#playsound item.trident.hit_ground master @a ~ ~ ~ 0.5 0.5
#playsound item.trident.hit_ground master @a ~ ~ ~ 0.5 0.7
#playsound item.trident.hit_ground master @a ~ ~ ~ 0.5 0.9

scoreboard players set @s ghost.boss.move_cooldown 80

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s positioned ^ ^ ^4.5 as @a[distance=..15] at @s unless entity @n[tag=midas_safezone,distance=..3] run damage @s 35 mob_attack by @n[tag=damager]
execute at @s positioned ^ ^ ^4.5 as @a[distance=..15] at @s unless entity @n[tag=midas_safezone,distance=..3] run scoreboard players add @s ghost.effect.midas 140


execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager