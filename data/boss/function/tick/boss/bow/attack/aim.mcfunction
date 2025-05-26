tag @s add this.bow

execute as @a if score @s ghost.generic.id = @n[tag=this.bow] ghost.boss.target positioned as @s as @n[tag=this.bow] run rotate @s facing ~ ~-2.5 ~

tag @s remove this.bow

