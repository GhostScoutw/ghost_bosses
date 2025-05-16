
execute if entity @s[tag=aj.haunted_sword.animation.cut.playing] \
as @p[tag=dead_player] run return run function boss:player/death_messages/haunted_sword/cut

execute if entity @s[tag=aj.haunted_sword.animation.shockwave.playing] \
as @p[tag=dead_player] run return run function boss:player/death_messages/haunted_sword/shockwave

execute if entity @s[tag=aj.haunted_sword.animation.slash.playing] \
as @p[tag=dead_player] run return run function boss:player/death_messages/haunted_sword/slash




tag @s remove dead_player