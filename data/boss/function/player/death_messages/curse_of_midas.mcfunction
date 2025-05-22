
execute if entity @s[tag=aj.curse_of_midas.animation.triple_stab.playing] \
as @p[tag=dead_player] run return run function boss:player/death_messages/curse_of_midas/triple_stab

execute if entity @s[tag=aj.curse_of_midas.animation.area_attack.playing] \
as @p[tag=dead_player] run return run function boss:player/death_messages/curse_of_midas/area_attack



tag @s remove dead_player