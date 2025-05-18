data remove entity @s interaction

playsound entity.armor_stand.hit master @a ~ ~ ~ 1.5 1.5

execute if entity @s[tag=haunted_sword_selector] \
as @n[tag=this.room] at @s run return run function boss:solo_room/selector/summon {summon:haunted_sword}


execute if entity @s[tag=curse_of_midas_selector] \
as @n[tag=this.room] at @s run return run function boss:solo_room/selector/summon {summon:curse_of_midas}

execute if entity @s[tag=empty_selector] \
as @n[tag=this.room] at @s as @a if score @s ghost.generic.id = @n[tag=this.room] ghost.room.claimed run return run tellraw @s {"text":"This is a placeholder, selecting this does literally nothing."}


execute as @a if score @s ghost.generic.id = @n[tag=this.room] ghost.room.claimed run tellraw @s {"text":"Not implemented. If you are seeing this, notify GhostScoutw"}