
execute store result score @s ghost.generic.rng run random value 1..100

execute if score @s ghost.generic.rng matches 1..70 run function animated_java:curse_of_midas/animations/triple_stab/play
execute if score @s ghost.generic.rng matches 71.. run function animated_java:curse_of_midas/animations/area_attack/play
