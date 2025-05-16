
tellraw @s {"text":"======[DEATH TIP]======\n","color":"dark_red"}

tellraw @s ["",{"text":"You died to ","color":"gray"},{"text":"Cut.\n","color":"dark_red"},{"text":"Either step to the side to dodge, or immediately try to ","color":"gray"},{"text":"parry","color":"gold"},{"text":". Careful of the fall!","color":"gray"}]


tellraw @s [{"text":"Do ","color":"dark_gray"},{"text":"/trigger death_tip ","color":"yellow"},{"text":"to disable this message","color":"dark_gray"}]
tellraw @s {"text":"=======================","color":"dark_red"}

tag @s remove dead_player