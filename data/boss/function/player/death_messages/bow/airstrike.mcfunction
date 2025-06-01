
tellraw @s {"text":"======[DEATH TIP]======\n","color":"dark_red"}

tellraw @s ["",{"text":"You died to ","color":"gray"},{"text":"Air Strike.\n","color":"dark_red"},{"text":"If you are trying to ","color":"gray"},{"text":"parry","color":"gold"},{"text":" it, do it as soon as the airstrike circle is nearly gone, or try weaving between them to dodge. The bow backs itself away, so maybe try weaving in their direction.","color":"gray"}]


tellraw @s [{"text":"Do ","color":"dark_gray"},{"text":"/trigger death_tip ","color":"yellow"},{"text":"to disable this message","color":"dark_gray"}]
tellraw @s {"text":"=======================","color":"dark_red"}

tag @s remove dead_player