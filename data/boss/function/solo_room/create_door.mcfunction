execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["init","solo_room","solo_door"]}

$execute as @n[tag=solo_door,tag=solo_room,tag=init] run scoreboard players set @s ghost.room.id $(id)
execute as @n[tag=solo_door,tag=solo_room,tag=init] run tag @s remove init