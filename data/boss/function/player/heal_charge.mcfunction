scoreboard players set @s ghost.player.item.cooldown 6

execute if score @s ghost.player.healing_charge matches ..9 run return run tellraw @s {"text":"Not enough charge!","color":"red"}


scoreboard players remove @s ghost.player.healing_charge 10

effect give @s instant_health

playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 2 1
particle totem_of_undying ~ ~1 ~ 0.6 0.6 0.6 0 80