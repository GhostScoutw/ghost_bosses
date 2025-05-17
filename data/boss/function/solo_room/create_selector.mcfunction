summon text_display ~ ~4 ~ {alignment:"center",Tags:["init","solo_selector","solo_selector_text"],text:'{"text":"Select a boss","bold":true,"color":"gold"}'}




scoreboard players operation @e[tag=solo_selector,tag=init] ghost.room.claimed = @s ghost.room.claimed

tag @e[tag=solo_selector,tag=init] remove init