playsound item.mace.smash_ground_heavy master @a ~ ~ ~ 1 1.5

scoreboard players set @s ghost.boss.move_cooldown 30


execute at @s positioned ^ ^0.5 ^2 run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.8 0 0.8 0 20
execute at @s positioned ^ ^0.5 ^4.5 run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.8 0 0.8 0 20
execute at @s positioned ^ ^0.5 ^7 run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.8 0 0.8 0 20


execute at @s positioned ^ ^0.5 ^2 run particle raid_omen ~ ~ ~ 0.3 1 0.3 0 20
execute at @s positioned ^ ^0.5 ^4.5 run particle raid_omen ~ ~ ~ 0.3 1 0.3 0 20
execute at @s positioned ^ ^0.5 ^7 run particle raid_omen ~ ~ ~ 0.3 1 0.3 0 20


execute on passengers as @s[tag=boss_hitbox] run tag @s add damager



execute at @s positioned ^ ^1 ^2 as @a[distance=..2] run tag @s add attack.launch
execute at @s positioned ^ ^1 ^4.5 as @a[distance=..2] run tag @s add attack.launch
execute at @s positioned ^ ^1 ^7 as @a[distance=..2] run tag @s add attack.launch


#launch up

execute as @a[tag=attack.launch] at @s run function boss:tick/boss/haunted_sword/attack/launch_up


execute on passengers as @s[tag=boss_hitbox] run tag @s remove damager