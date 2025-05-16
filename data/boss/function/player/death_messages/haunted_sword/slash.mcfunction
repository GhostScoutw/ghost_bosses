
tellraw @s {"text":"======[DEATH TIP]======\n","color":"dark_red"}

tellraw @s ["",{"text":"You died to ","color":"gray"},{"text":"Slash.\n","color":"dark_red"},{"text":"Its easily ","color":"gray"},{"text":"parriable","color":"gold"},{"text":", just count 1 2 for the timing!","color":"gray"}]


tellraw @s [{"text":"Do ","color":"dark_gray"},{"text":"/trigger death_tip ","color":"yellow"},{"text":"to disable this message","color":"dark_gray"}]
tellraw @s {"text":"=======================","color":"dark_red"}

tag @s remove dead_player