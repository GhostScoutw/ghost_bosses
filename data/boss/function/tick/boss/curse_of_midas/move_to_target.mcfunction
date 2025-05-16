

execute if entity @s[tag=!aj.curse_of_midas.animation.triple_stab.playing] if entity @p[tag=this.target,distance=2..] run tp @s ~ ~ ~ facing entity @p[tag=this.target]
execute if entity @s[tag=!aj.curse_of_midas.animation.triple_stab.playing] if entity @p[tag=this.target,distance=5..] if block ^ ^ ^0.15 air run tp @s ^ ^ ^0.15 facing entity @p[tag=this.target]
execute if entity @s[tag=!aj.curse_of_midas.animation.triple_stab.playing] if entity @p[tag=this.target,distance=5..] unless block ^ ^ ^0.15 air if block ^ ^1 ^0.15 air run tp @s ^ ^1 ^0.15
execute if entity @s[tag=!aj.curse_of_midas.animation.triple_stab.playing] if entity @p[tag=this.target,distance=5..] if block ^ ^-1 ^ air run tp @s ^ ^-1 ^

execute if entity @s[tag=!aj.curse_of_midas.animation.triple_stab.playing,scores={ghost.boss.move_cooldown=1..}] run tp @s ~ ~ ~ facing entity @p[tag=this.target]


execute at @s run tp @s ~ ~ ~ ~ 0



execute if entity @s[tag=!aj.curse_of_midas.animation.triple_stab.playing] unless score @s ghost.boss.move_cooldown matches 1.. if entity @p[tag=this.target,distance=..5] run function boss:tick/boss/curse_of_midas/rng
