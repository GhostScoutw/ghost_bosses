scoreboard players set @s ghost.player.parry.cooldown 30


execute if items entity @s weapon.mainhand *[custom_data~{storm_eye:1b}] run return run function boss:player/sneak_interaction/storm_eye
execute if items entity @s weapon.mainhand *[custom_data~{kingmaker:1b}] run return run function boss:player/sneak_interaction/kingmaker



tellraw @s {"text":"not implemented!","color":"red"}