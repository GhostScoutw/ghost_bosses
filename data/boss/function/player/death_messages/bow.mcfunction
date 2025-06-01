
execute if entity @s[tag=aj.bow.animation.shoot.playing] \
as @p[tag=dead_player] run return run function boss:player/death_messages/bow/shoot

execute if entity @s[tag=airstrike.origin] \
as @p[tag=dead_player] run return run function boss:player/death_messages/bow/airstrike



tag @s remove dead_player