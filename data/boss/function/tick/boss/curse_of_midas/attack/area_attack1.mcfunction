#particle dust_color_transition{from_color:[1.000,0.506,0.012],scale:1.5,to_color:[1.000,1.000,0.000]} ^ ^ ^5 1 0 1 0 200

#execute positioned ^ ^ ^4.5 run particle dust_color_transition{from_color:[1.000,1.000,0.000],scale:2,to_color:[1.000,0.467,0.000]} ~ ~0.2 ~ 8 0 8 0.05 1000

scoreboard players set @s ghost.generic.counter 60
execute positioned ^ ^ ^4.5 run function boss:tick/boss/curse_of_midas/attack/area_attack_pulse

playsound block.enchantment_table.use master @a ~ ~ ~ 1 0.5
playsound item.trident.hit_ground master @a ~ ~ ~ 0.5 0.5

scoreboard players set @s ghost.boss.move_cooldown 80

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s positioned ^ ^ ^4.5 as @a[distance=..15,scores={ghost.effect.midas=80..}] at @s unless entity @n[tag=midas_safezone,distance=..3] run damage @s 12 mob_attack by @n[tag=damager]
execute at @s positioned ^ ^ ^4.5 as @a[distance=..15,scores={ghost.effect.midas=40..}] at @s unless entity @n[tag=midas_safezone,distance=..3] run damage @s 8 mob_attack by @n[tag=damager]
execute at @s positioned ^ ^ ^4.5 as @a[distance=..15,scores={ghost.effect.midas=1..}] at @s unless entity @n[tag=midas_safezone,distance=..3] run damage @s 6 mob_attack by @n[tag=damager]
execute at @s positioned ^ ^ ^4.5 as @a[distance=..15] at @s unless entity @n[tag=midas_safezone,distance=..3] run damage @s 3 mob_attack by @n[tag=damager]

execute at @s positioned ^ ^ ^4.5 as @a[distance=..15] at @s unless entity @n[tag=midas_safezone,distance=..3] run scoreboard players add @s ghost.effect.midas 40


execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager