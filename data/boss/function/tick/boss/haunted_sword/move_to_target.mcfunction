

execute if entity @s[tag=!aj.haunted_sword.animation.slash.playing,tag=!aj.haunted_sword.animation.cut.playing,tag=!aj.haunted_sword.animation.shockwave.playing] if entity @p[tag=this.target,distance=3..] run tp @s ~ ~ ~ facing entity @p[tag=this.target]
execute if entity @s[tag=!aj.haunted_sword.animation.slash.playing,tag=!aj.haunted_sword.animation.cut.playing,tag=!aj.haunted_sword.animation.shockwave.playing] if entity @p[tag=this.target,distance=3..] run tp @s ^ ^ ^0.15 facing entity @p[tag=this.target]
execute if entity @s[tag=!aj.haunted_sword.animation.slash.playing,tag=!aj.haunted_sword.animation.cut.playing,tag=!aj.haunted_sword.animation.shockwave.playing] if entity @p[tag=this.target,distance=3..] unless block ^ ^ ^0.15 air if block ^ ^1 ^0.15 air run tp @s ^ ^1 ^0.15
execute if block ^ ^-1 ^ air run tp @s ^ ^-1 ^

execute if entity @s[tag=!aj.haunted_sword.animation.slash.playing,tag=!aj.haunted_sword.animation.cut.playing,tag=!aj.haunted_sword.animation.shockwave.playing,scores={ghost.boss.move_cooldown=1..}] run tp @s ~ ~ ~ facing entity @p[tag=this.target]


execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s on passengers run rotate @s ~ ~



execute if entity @s[tag=!aj.haunted_sword.animation.slash.playing,tag=!aj.haunted_sword.animation.cut.playing,tag=!aj.haunted_sword.animation.shockwave.playing] unless score @s ghost.boss.move_cooldown matches 1.. if entity @p[tag=this.target,distance=..3] run function boss:tick/boss/haunted_sword/rng
