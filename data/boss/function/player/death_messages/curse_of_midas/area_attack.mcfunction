
tellraw @s {"text":"======[DEATH TIP]======\n","color":"dark_red"}

tellraw @s ["",{"text":"You died to ","color":"gray"},{"text":"[area attack].\n","color":"dark_red"},{"text":"For this one, move as fast as you can to the ","color":"gray"},{"text":"safezone ","color":"aqua"},{"text":"created near the boss, as you cannot ","color":"gray"},{"text":"parry ","color":"gold"},{"text":"the last explosion.","color":"gray"}]


tellraw @s [{"text":"Do ","color":"dark_gray"},{"text":"/trigger death_tip ","color":"yellow"},{"text":"to disable this message","color":"dark_gray"}]
tellraw @s {"text":"=======================","color":"dark_red"}

tag @s remove dead_player