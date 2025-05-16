
execute as @n[tag=aj.curse_of_midas.root] at @s unless entity @n[tag=aj.curse_of_midas.root,distance=1..] run bossbar remove boss:curse_of_midas

execute as @n[tag=aj.curse_of_midas.root] run function animated_java:curse_of_midas/remove/this

