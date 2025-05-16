
playsound entity.wither.break_block master @a ~ ~ ~ 1 1
playsound entity.wither.death master @a ~ ~ ~ 1 1.5

scoreboard players set @s ghost.boss.move_cooldown 60

particle trial_spawner_detection ~ ~ ~ 2 0 2 0 500 force

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager

execute at @s as @a[distance=..4.5] run damage @s 30 mob_attack by @n[tag=damager]

execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager