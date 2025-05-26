scoreboard players remove @s[scores={ghost.generic.lifetime=1..}] ghost.generic.lifetime 1

execute if entity @s[tag=midas_safezone] at @s run function boss:tick/pojectile/midas_safezone
execute if entity @s[tag=arrow] at @s run function boss:tick/pojectile/arrow
execute if entity @s[tag=air_strike] at @s run function boss:tick/pojectile/airstrike


execute if score @s ghost.generic.lifetime matches 0 run kill @s