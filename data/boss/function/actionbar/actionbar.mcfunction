
data modify storage boss:temp temp.actionbar set value []


data modify storage boss:temp temp.actionbar append value [{"text":" ","color":"white","bold":"false"}]


execute as @s[team=ghost.lobby] run function boss:actionbar/lobby
execute as @s[team=ghost.arena] run function boss:actionbar/arena
execute as @s[team=ghost.pvp] run function boss:actionbar/pvp
execute as @s[team=ghost.solo] run function boss:actionbar/solo


