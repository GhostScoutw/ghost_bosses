
execute as @e[tag=solo_selector] if score @s ghost.room.claimed = @n[tag=this.room] ghost.room.claimed run kill @s


execute as @a if score @s ghost.generic.id = @n[tag=this.room] ghost.room.claimed at @n[tag=this.door] positioned ^ ^ ^1 rotated ~ ~ run spawnpoint @s ~ ~ ~ ~180



$function boss:summon/$(summon)


particle flame ~ ~1 ~