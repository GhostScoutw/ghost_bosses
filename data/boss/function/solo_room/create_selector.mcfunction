summon text_display ~ ~4 ~ {billboard:"vertical",alignment:"center",Tags:["init","solo_selector","solo_selector_text"],text:'{"text":"Select a boss","bold":true,"color":"gold"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

summon interaction ~ ~ ~ {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","haunted_sword_selector","init"],\
Passengers:[{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.1f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"dark_red","text":"Haunted Sword"}'},\
\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:netherite_sword",count:1}}]}


scoreboard players operation @e[tag=solo_selector,tag=init] ghost.room.claimed = @s ghost.room.claimed

tag @e[tag=solo_selector,tag=init] remove init