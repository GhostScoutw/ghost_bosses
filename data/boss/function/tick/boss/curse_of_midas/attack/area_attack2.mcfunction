#particle dust_color_transition{from_color:[1.000,0.506,0.012],scale:1.5,to_color:[1.000,1.000,0.000]} ^ ^ ^5 1 0 1 0 200

#execute positioned ^ ^ ^4.5 run particle dust_color_transition{from_color:[1.000,1.000,0.000],scale:4,to_color:[1.000,0.467,0.000]} ~ ~0.2 ~ 9 9 9 0.5 2000

execute positioned ^ ^ ^4.5 run particle minecraft:glow_squid_ink ~ ~0.5 ~ 0 0 0 1.5 2000

#playsound entity.wither.death master @a ~ ~ ~ 1 2
playsound item.trident.thunder master @a ~ ~ ~ 0.5 2

scoreboard players set @s ghost.boss.move_cooldown 80

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s positioned ^ ^ ^4.5 as @a[distance=..15] at @s unless entity @n[tag=midas_safezone,distance=..3] run damage @s 35 mob_attack by @n[tag=damager]
execute at @s positioned ^ ^ ^4.5 as @a[distance=..15] at @s unless entity @n[tag=midas_safezone,distance=..3] run scoreboard players add @s ghost.effect.midas 140


execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager