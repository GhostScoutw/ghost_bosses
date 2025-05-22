execute as @s[tag=!has_id] run function boss:player/join
effect give @s saturation infinite 1 true

scoreboard players remove @s[scores={ghost.player.parry.executed=1..}] ghost.player.parry.executed 1

scoreboard players enable @s death_tip
scoreboard players enable @s menu

function boss:player/menu_tick

execute as @s[scores={death_tip=1..}] run function boss:player/death_tip_toggle
execute as @s[scores={menu=1..}] run function boss:player/menu

execute at @s run function boss:advancements/tick

execute at @s run function boss:player/effects/check

execute if score tools ghost.config matches 1.. run function boss:tick/items

execute as @s[scores={ghost.player.item.cooldown=1..}] run scoreboard players remove @s ghost.player.item.cooldown 1

#actionbar
execute if score actionbar ghost.config matches 1.. run function boss:actionbar/actionbar

execute as @s[scores={ghost.player.parry.cooldown=1..}] run function boss:player/parry/cooldown

execute as @s[scores={ghost.player.parry.duration=1..}] run function boss:player/parry/tick

