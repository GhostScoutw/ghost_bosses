
particle sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.01 1
particle soul ~ ~ ~ 0.2 0.2 0.2 0.01 1

execute if score @s ghost.wisp.delay matches ..0 at @s run function boss:tick/wisp/move


scoreboard players remove @s[scores={ghost.wisp.lifetime=1..}] ghost.wisp.lifetime 1
scoreboard players remove @s[scores={ghost.wisp.delay=1..}] ghost.wisp.delay 1

execute if score @s ghost.wisp.lifetime matches ..0 run function boss:tick/wisp/death