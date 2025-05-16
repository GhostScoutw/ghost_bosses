
tellraw @s {"text":"======[DEATH TIP]======\n","color":"dark_red"}

tellraw @s ["",{"text":"You died to ","color":"gray"},{"text":"Shockwave.\n","color":"dark_red"},{"text":"This attack does too much damage to ","color":"gray"},{"text":"parry","color":"gold"},{"text":" fully, its advised to run away from its radius. You can ","color":"gray"},{"text":"parry","color":"gold"},{"text":" it when its pulling out, though.","color":"gray"}]


tellraw @s [{"text":"Do ","color":"dark_gray"},{"text":"/trigger death_tip ","color":"yellow"},{"text":"to disable this message","color":"dark_gray"}]
tellraw @s {"text":"=======================","color":"dark_red"}

tag @s remove dead_player