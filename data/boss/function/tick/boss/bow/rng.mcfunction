
execute store result score @s ghost.generic.rng run random value 1..100

execute if score @s ghost.generic.rng matches 1..50 run return run function animated_java:bow/animations/shoot/play



execute if score @s ghost.generic.rng matches 51.. unless entity @s[tag=airstrike.origin] run return run function animated_java:bow/animations/airstrike/play
execute if score @s ghost.generic.rng matches 51.. run return run function animated_java:bow/animations/shoot/play
