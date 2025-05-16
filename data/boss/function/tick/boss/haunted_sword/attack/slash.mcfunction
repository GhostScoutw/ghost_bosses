playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.8

scoreboard players set @s ghost.boss.move_cooldown 30

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s positioned ^ ^1 ^1.5 as @a[distance=..2] run damage @s 8 mob_attack by @n[tag=damager]
execute at @s positioned ^ ^1 ^3 as @a[distance=..2] run damage @s 7 mob_attack by @n[tag=damager]

execute at @s positioned ^2.5 ^1 ^2 as @a[distance=..2] run damage @s 6 mob_attack by @n[tag=damager]

execute at @s positioned ^-2.5 ^1 ^2 as @a[distance=..2] run damage @s 6 mob_attack by @n[tag=damager]

execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager