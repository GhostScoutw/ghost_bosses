
tellraw @s {"text":"======[DEATH TIP]======\n","color":"dark_red"}

tellraw @s ["",{"text":"You died to ","color":"gray"},{"text":"Arrow Shot.\n","color":"dark_red"},{"text":"Either ","color":"gray"},{"text":"parry","color":"gold"},{"text":" it as soon as the bow finishes drawing itself, or run horizontally to dodge.","color":"gray"}]


tellraw @s [{"text":"Do ","color":"dark_gray"},{"text":"/trigger death_tip ","color":"yellow"},{"text":"to disable this message","color":"dark_gray"}]
tellraw @s {"text":"=======================","color":"dark_red"}

tag @s remove dead_player