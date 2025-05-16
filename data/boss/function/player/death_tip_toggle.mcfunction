scoreboard players reset @s death_tip

execute if entity @s[tag=ghost.no_death_tip] run tellraw @s {"text":"Death tips enabled!","color":"green"}
execute if entity @s[tag=!ghost.no_death_tip] run tellraw @s {"text":"Death tips disabled!","color":"red"}


execute if entity @s[tag=ghost.no_death_tip] run return run tag @s remove ghost.no_death_tip
execute if entity @s[tag=!ghost.no_death_tip] run return run tag @s add ghost.no_death_tip
