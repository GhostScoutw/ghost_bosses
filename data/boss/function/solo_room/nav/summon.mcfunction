#(id)

$summon item_display ~ ~ ~ {Tags:["room_nav","root","init"],\
Passengers:[\
    {id:"minecraft:interaction",width:0.25f,height:0.25f,response:1b,Tags:["room_nav"]},\
    \
    {alignment:"center",id:"minecraft:text_display",Tags:["room_nav"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,0.1f],scale:[0.75f,0.75f,1f]},\
    text:'{"bold":true,"color":"gold","text":"room $(id)","underlined":true}',background:0}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.125f,0f],scale:[1.0f,1.0f,1.0f]},\
    \
    item:{id:"minecraft:green_concrete",count:1}}


$execute as @n[tag=room_nav,tag=init] run scoreboard players set @s ghost.room.id $(id)

execute as @n[tag=room_nav,tag=init] run tag @s remove init