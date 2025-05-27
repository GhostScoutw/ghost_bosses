tag @s add this.airstrike

execute unless score @s ghost.boss.solo_claim matches -2147483648..2147483647 at @r[distance=..40] as @n[tag=this.airstrike] run function boss:tick/boss/bow/attack/airstrike_displace

execute if score @s ghost.boss.solo_claim matches -2147483648..2147483647 as @a[distance=..40] at @s if score @s ghost.generic.id = @n[tag=this.airstrike] ghost.boss.solo_claim as @n[tag=this.airstrike] run function boss:tick/boss/bow/attack/airstrike_displace
tag @s remove this.airstrike