
execute as @e[tag=solo_selector] if score @s ghost.room.claimed = @n[tag=this.room] ghost.room.claimed run kill @s


execute as @a if score @s ghost.generic.id = @n[tag=this.room] ghost.room.claimed at @n[tag=this.door] facing entity @n[tag=this.room] feet run spawnpoint @s ~ ~ ~ ~



$function boss:summon/$(summon)
