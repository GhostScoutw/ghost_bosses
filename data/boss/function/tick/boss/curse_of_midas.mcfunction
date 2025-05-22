execute unless score @s ghost.boss.target matches -2147483648..2147483647 run function boss:tick/boss/get_target

execute if score @s ghost.generic.agro_timer matches ..0 run function boss:tick/boss/get_target


#hit detection
execute on passengers as @s[type=iron_golem] if data entity @s {HurtTime:9s} at @s run function boss:tick/boss/curse_of_midas/hurt

#idle particles
execute if entity @s[tag=!aj.curse_of_midas.animation.triple_stab.playing,tag=!aj.curse_of_midas.animation.area_attack.playing] run particle dust_color_transition{from_color:[1.000,0.506,0.012],scale:1,to_color:[1.000,1.000,0.000]} ~ ~5 ~ 0.8 3 0.8 0 4

tag @s add self

execute as @a if score @s ghost.generic.id = @n[tag=self] ghost.boss.target run tag @n[tag=self] add target.exists
execute as @a if score @s ghost.generic.id = @n[tag=self] ghost.boss.target run tag @s add this.target


execute if entity @s[tag=target.exists] at @s run function boss:tick/boss/curse_of_midas/move_to_target


#remove agro
execute if entity @s[tag=!target.exists] run scoreboard players reset @s ghost.boss.target
execute if entity @p[tag=this.target,distance=10..] run scoreboard players reset @s ghost.boss.target


execute as @a[tag=this.target] run tag @s remove this.target
tag @s remove target.exists
tag @s remove self

execute unless entity @s[tag=boss_solo] store result bossbar boss:curse_of_midas value run scoreboard players get @s ghost.boss.hp.temp
execute unless entity @s[tag=boss_solo] run bossbar set boss:curse_of_midas players @a

execute unless score @s ghost.boss.hp.temp >= @s ghost.boss.hp \
if score @s ghost.boss.heal matches 1.. run scoreboard players add @s ghost.boss.hp.temp 1

execute if score @s ghost.boss.heal matches 1.. run scoreboard players remove @s ghost.boss.heal 1