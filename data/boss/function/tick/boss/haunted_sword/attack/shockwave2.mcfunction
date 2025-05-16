
playsound entity.wither.break_block master @a ~ ~ ~ 1 1.5
playsound entity.wither.death master @a ~ ~ ~ 0.5 2

scoreboard players set @s ghost.boss.move_cooldown 60

particle trial_spawner_detection ~ ~ ~ 1.8 0 1.8 0 120 force

execute on passengers as @s[tag=boss_hitbox] run tag @s add damager
execute at @s as @a[distance=..4] run damage @s 10 mob_attack by @n[tag=damager]

execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager