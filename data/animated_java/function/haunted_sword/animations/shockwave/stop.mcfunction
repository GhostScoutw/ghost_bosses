# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.haunted_sword.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'haunted_sword', 'function_path': 'animated_java:haunted_sword/animations/shockwave/stop'}
tag @s remove aj.haunted_sword.animation.shockwave.playing
scoreboard players set @s aj.shockwave.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:haunted_sword/animations/shockwave/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only