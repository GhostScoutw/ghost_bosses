execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["init","solo_room","solo_mid"]}

$execute as @n[tag=solo_room,tag=solo_mid,tag=init] run scoreboard players set @s ghost.room.id $(id)
execute as @n[tag=solo_room,tag=solo_mid,tag=init] run tag @s remove init