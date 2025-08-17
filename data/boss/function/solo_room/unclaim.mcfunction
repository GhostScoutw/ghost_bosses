
execute as @e[tag=solo_text] if score @s ghost.room.id = @n[tag=this.room] ghost.room.id run data merge entity @s {text:{"text":"EMPTY","color":"green","bold":true}}

execute as @e[tag=solo_selector] if score @s ghost.room.claimed = @n[tag=this.room] ghost.room.claimed run kill @s

execute as @e[tag=boss] if score @s ghost.boss.solo_claim = @n[tag=this.room] ghost.room.claimed at @s run tp @s ~ ~-10 ~
execute as @e[tag=boss] if score @s ghost.boss.solo_claim = @n[tag=this.room] ghost.room.claimed at @s run function boss:kill/nearest/boss


execute as @e[tag=solo_room] if score @s ghost.room.id = @n[tag=this.room] ghost.room.id run scoreboard players reset @s ghost.room.claimed

