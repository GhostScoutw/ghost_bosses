
playsound item.mace.smash_ground_heavy master @a ~ ~ ~ 1 2
execute on passengers run kill @s
kill @s
scoreboard players set @s ghost.generic.counter 80
execute at @s run function boss:tick/pojectile/player/coin/ray
