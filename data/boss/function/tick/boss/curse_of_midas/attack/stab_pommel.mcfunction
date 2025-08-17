particle dust_color_transition{from_color:[1.000,0.506,0.012],scale:2,to_color:[1.000,1.000,0.000]} ~ ~ ~ 1 0 1 0 50

playsound item.mace.smash_ground master @a ~ ~ ~ 0.5 1.5

scoreboard players set @s ghost.boss.move_cooldown 30

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s positioned ~ ~ ~ as @a[distance=..3] run damage @s 5 mob_attack by @n[tag=damager]

#execute at @s positioned ~ ~ ~ as @a[distance=..3] run scoreboard players add @s ghost.effect.midas 100


execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager