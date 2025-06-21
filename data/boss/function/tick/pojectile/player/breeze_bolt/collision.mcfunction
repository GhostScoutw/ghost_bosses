particle cloud ~ ~ ~ 0.2 0.2 0.2 0.3 40

execute positioned ~ ~0.2 ~ run function boss:tick/boss/bow/attack/cloud_pulse

playsound item.mace.smash_ground master @a ~ ~ ~ 0.5 2


execute at @s if entity @p[tag=this.origin,team=ghost.pvp] as @a[distance=..3,tag=!this.origin] run damage @s 7 mob_attack by @p[tag=this.origin]

execute at @s if entity @p[tag=this.origin,team=!ghost.pvp] as @e[distance=..3,type=!player,tag=!friendly] run damage @s 7 mob_attack by @p[tag=this.origin]

tag @s add collided