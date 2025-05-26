

execute if entity @s[tag=!aj.bow.animation.shoot.playing] if entity @p[tag=this.target,distance=5..] run tp @s ~ ~ ~ facing entity @p[tag=this.target]
execute if entity @s[tag=!aj.bow.animation.shoot.playing] if entity @p[tag=this.target,distance=16..] if block ^ ^ ^0.15 air run tp @s ^ ^ ^0.15 facing entity @p[tag=this.target]
execute if entity @s[tag=!aj.bow.animation.shoot.playing] if entity @p[tag=this.target,distance=16..] unless block ^ ^ ^0.15 air if block ^ ^1 ^0.15 air run tp @s ^ ^1 ^0.15
execute if entity @s[tag=!aj.bow.animation.shoot.playing] if entity @p[tag=this.target,distance=16..] if block ^ ^-1 ^ air run tp @s ^ ^-1 ^

execute if entity @s[tag=!aj.bow.animation.shoot.playing,scores={ghost.boss.move_cooldown=1..}] run tp @s ~ ~ ~ facing entity @p[tag=this.target]


execute if entity @s[tag=!aj.bow.animation.shoot.playing] at @s run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=!aj.bow.animation.shoot.playing] at @s on passengers run rotate @s ~ ~



execute if entity @s[tag=!aj.bow.animation.shoot.playing] unless score @s ghost.boss.move_cooldown matches 1.. if entity @p[tag=this.target,distance=..16] run function boss:tick/boss/bow/rng
