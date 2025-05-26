execute as @n[tag=aj.bow.root] at @s unless entity @n[tag=aj.bow.root,distance=1..] run bossbar remove boss:bow

execute as @n[tag=aj.bow.root] run function animated_java:bow/remove/this

