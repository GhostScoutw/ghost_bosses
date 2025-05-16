
execute as @n[tag=aj.haunted_sword.root] at @s unless entity @n[tag=aj.haunted_sword.root,distance=1..] run bossbar remove boss:haunted_sword

execute as @n[tag=aj.haunted_sword.root] run function animated_java:haunted_sword/remove/this

