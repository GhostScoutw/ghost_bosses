
playsound item.trident.thunder master @a ~ ~ ~ 2 1.5


execute positioned ~ ~12 ~ run function boss:tick/boss/bow/attack/airstrike_pulse {distance:0,speed:0.00000028}

execute positioned ~ ~16 ~ run function boss:tick/boss/bow/attack/airstrike_pulse {distance:0,speed:0.00000020}

execute positioned ~ ~20 ~ run function boss:tick/boss/bow/attack/airstrike_pulse {distance:0,speed:0.00000015}

scoreboard players set @s ghost.boss.move_cooldown 80