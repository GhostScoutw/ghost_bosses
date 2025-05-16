
execute store result score @s ghost.generic.rng run random value 1..100

execute if score @s ghost.generic.rng matches 1..40 run function animated_java:haunted_sword/animations/slash/play

execute if score @s ghost.generic.rng matches 41..80 run function animated_java:haunted_sword/animations/cut/play

execute if score @s ghost.generic.rng matches 81.. run function animated_java:haunted_sword/animations/shockwave/play