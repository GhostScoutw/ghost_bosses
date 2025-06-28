

particle dust{color:[1.000,1.000,0.000],scale:1.5} ~ ~ ~ 0.8 0.8 0.8 0 50

execute at @s as @n[distance=..3,tag=coin_target] run damage @s 20 mob_attack by @p[tag=this.origin]


tag @s add collided