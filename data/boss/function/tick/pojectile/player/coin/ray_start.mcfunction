
playsound block.amethyst_block.break master @a ~ ~ ~ 1 2
playsound block.amethyst_block.place master @a ~ ~ ~ 1 1


scoreboard players set @s ghost.generic.counter 300

execute if entity @p[team=ghost.solo,tag=this.origin] as @e[tag=boss] if score @s ghost.boss.solo_claim = @n[tag=this.projectile] ghost.generic.id on passengers as @s[tag=boss_hitbox] run tag @s add coin_target
execute if entity @p[team=!ghost.solo,team=!ghost.pvp,tag=this.origin] as @n[tag=boss_hitbox] run tag @s add coin_target
execute if entity @p[team=ghost.pvp,tag=this.origin] as @p[team=ghost.pvp,tag=!this.origin] run tag @s add coin_target



execute at @s run function boss:tick/pojectile/player/coin/ray

execute as @e[tag=coin_target] run tag @s remove coin_target
execute on passengers run kill @s
kill @s

