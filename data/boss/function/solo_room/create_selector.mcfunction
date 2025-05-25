summon text_display ~ ~4 ~ {billboard:"vertical",alignment:"center",Tags:["init","solo_selector","solo_selector_text"],text:'{"text":"Select a boss","bold":true,"color":"dark_red","underlined": true}',background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

#floating cube
summon minecraft:item_display ~ ~3 ~ \
{item:{id:"minecraft:black_glazed_terracotta"},Tags:["solo_selector","solo_block","init"],\
transformation:{left_rotation:[-0.3535534f, -0.14644665f, -0.3535534f, 0.85355335f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],\
scale:[1.0f, 1.0f, 1.0f],translation:[0.0f,0.0f,0.0f]}}

summon minecraft:item_display ~ ~3 ~ \
{item:{id:"minecraft:red_glazed_terracotta"},Tags:["solo_selector","solo_block_orbital","init"],\
transformation:{left_rotation:[-0.3535534f, -0.14644665f, -0.3535534f, 0.85355335f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],\
scale:[0.3f, 0.3f, 0.3f],translation:[0.0f,0.0f,0.0f]}}

execute as @e[tag=solo_block_orbital,tag=init] at @s run rotate @s ~120 ~ 

summon minecraft:item_display ~ ~3 ~ \
{item:{id:"minecraft:red_glazed_terracotta"},Tags:["solo_selector","solo_block_orbital","init"],\
transformation:{left_rotation:[-0.3535534f, -0.14644665f, -0.3535534f, 0.85355335f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],\
scale:[0.3f, 0.3f, 0.3f],translation:[0.0f,0.0f,0.0f]}}

execute as @e[tag=solo_block_orbital,tag=init] at @s run rotate @s ~120 ~ 
summon minecraft:item_display ~ ~3 ~ \
{item:{id:"minecraft:red_glazed_terracotta"},Tags:["solo_selector","solo_block_orbital","init"],\
transformation:{left_rotation:[-0.3535534f, -0.14644665f, -0.3535534f, 0.85355335f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],\
scale:[0.3f, 0.3f, 0.3f],translation:[0.0f,0.0f,0.0f]}}

execute as @e[tag=solo_block_orbital,tag=init] at @s run rotate @s ~120 ~ 

#haunted sword
summon interaction ~ ~ ~1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","haunted_sword_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"dark_red","text":"Haunted Sword"}',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 1","color":"green"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:netherite_sword",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~


#curse of midas
summon interaction ~ ~ ~-1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","curse_of_midas_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'[{"bold":true,"color":"gold","text":"Curse of Midas","bold":true},{"text":" [WIP]","color":"red","underlined": true}]',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 2","color":"yellow"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:gold_ingot",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~


#empty
summon interaction ~ ~ ~-1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","empty_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"white","text":"Placeholder","bold":true}',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 0","color":"white"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass_pane",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~

#empty
summon interaction ~ ~ ~-1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","empty_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"white","text":"Placeholder","bold":true}',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 0","color":"white"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass_pane",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~

#empty
summon interaction ~ ~ ~-1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","empty_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"white","text":"Placeholder","bold":true}',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 0","color":"white"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass_pane",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~

#empty
summon interaction ~ ~ ~-1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","empty_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"white","text":"Placeholder","bold":true}',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 0","color":"white"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass_pane",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~

#empty
summon interaction ~ ~ ~-1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","empty_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"white","text":"Placeholder","bold":true}',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 0","color":"white"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass_pane",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~

#empty
summon interaction ~ ~ ~-1.5 {width:0.7f,height:0.7f,response:1b,Tags:["solo_selector","selector_hitbox","empty_selector","init"],\
Passengers:[\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"white","text":"Placeholder","bold":true}',background:0},\
\
\
{alignment:"center",id:"minecraft:text_display",billboard:"vertical",Tags:["solo_selector","init"],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,0.8f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: 0","color":"white"}',background:0},\
{id:"minecraft:item_display",billboard:"center",Tags:["solo_selector","init"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
\
translation:[0f,-0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass_pane",count:1}}]}

execute as @e[tag=solo_selector,tag=init] at @s run rotate @s ~45 ~



scoreboard players operation @e[tag=solo_selector,tag=init] ghost.room.claimed = @s ghost.room.claimed

tag @e[tag=solo_selector,tag=init] remove init