playsound item.shield.break master @a ~ ~ ~ 1 1.5

tag @s add hitbox

execute store result score @s ghost.boss.hurt run attribute @s max_health get 1
execute store result score @s ghost.boss.hurt.temp run data get entity @s Health 1

execute store result entity @s Health float 1 run scoreboard players get @s ghost.boss.hurt

scoreboard players operation @s ghost.boss.hurt -= @s ghost.boss.hurt.temp
execute if score @s ghost.boss.hurt matches 1 run scoreboard players remove @s ghost.boss.hurt 1

execute on vehicle run scoreboard players operation @s ghost.boss.hp.temp -= @n[tag=hitbox] ghost.boss.hurt

execute on attacker unless score @s ghost.player.parry.executed matches 1.. as @n[tag=hitbox] run tag @s add got_attacked_normally

tag @s remove hitbox

execute on vehicle if score @s ghost.boss.hp.temp matches ..0 run function boss:tick/boss/haunted_sword/die
