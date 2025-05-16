scoreboard players set @s ghost.player.parry.cooldown 30
scoreboard players set @s ghost.player.parry.duration 10

particle campfire_cosy_smoke ~ ~ ~ 0.6 0 0.6 0.02 10
playsound item.armor.equip_wolf master @a ~ ~ ~ 1 1.3

attribute @s movement_speed base set 0.05
effect give @s absorption infinite 4 true
execute store result score @s ghost.player.parry.max.shield run attribute @s max_absorption get
