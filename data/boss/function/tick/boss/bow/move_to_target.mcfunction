

execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] if entity @p[tag=this.target,distance=2..] run tp @s ~ ~ ~ facing entity @p[tag=this.target]
execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] if entity @p[tag=this.target,distance=..10] rotated ~ 0 if block ^ ^ ^-0.15 air run tp @s ^ ^ ^-0.15 facing entity @p[tag=this.target]
execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] if entity @p[tag=this.target,distance=..10] rotated ~ 0 unless block ^ ^ ^-0.15 air if block ^ ^1 ^-0.15 air run tp @s ^ ^1 ^-0.15



execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] if entity @p[tag=this.target,distance=10..] rotated ~ 0 if block ^ ^ ^0.15 air run tp @s ^ ^ ^0.15 facing entity @p[tag=this.target]
execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] if entity @p[tag=this.target,distance=10..] rotated ~ 0 unless block ^ ^ ^0.15 air if block ^ ^1 ^0.15 air run tp @s ^ ^1 ^0.15


execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] rotated ~ 0 if block ^ ^-1 ^ air run tp @s ^ ^-1 ^


execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] run tp @s ~ ~ ~ facing entity @p[tag=this.target]


execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] at @s run tp @s ~ ~ ~ ~ 0
execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] at @s on passengers run rotate @s ~ ~



execute at @s if entity @s[tag=!aj.bow.animation.shoot.playing,tag=!aj.bow.animation.airstrike.playing] unless score @s ghost.boss.move_cooldown matches 1.. if entity @p[tag=this.target,distance=..35] run function boss:tick/boss/bow/rng
