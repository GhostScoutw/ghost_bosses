
execute store result score @s ghost.player.parry.damage store result storage boss:temp temp.parry_damage double 1.2 run scoreboard players operation @s ghost.player.parry.max.shield -= @s ghost.player.parry.shield

playsound block.enchantment_table.use master @a ~ ~ ~ 1 2

particle totem_of_undying ~ ~ ~ 0.8 0.8 0.8 0 80

tellraw @s [{"text":"Parried attack for ","color":"yellow"},{"score": {"name": "@s","objective": "ghost.player.parry.damage"}},{"text":" damage."}]


execute as @s[tag=!ghost.adv.parry] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Parrystastic]","color":"green"},{"text":"!","color": "white"}]
tag @s add ghost.adv.parry

scoreboard players add @s ghost.stat.parry_count 1


execute as @s[tag=!ghost.adv.parry100,scores={ghost.stat.parry_count=100..}] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Parrytacular!]","color":"green"},{"text":"!","color": "white"}]
execute as @s[tag=!ghost.adv.parry1000,scores={ghost.stat.parry_count=1000..}] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Parry overload!]","color":"green"},{"text":"!","color": "white"}]
execute if score @s ghost.stat.parry_count matches 100.. run tag @s add ghost.adv.parry100
execute if score @s ghost.stat.parry_count matches 1000.. run tag @s add ghost.adv.parry1000



scoreboard players operation @s ghost.stat.damage_blocked += @s ghost.player.parry.damage




execute as @s[tag=!ghost.adv.block500,scores={ghost.stat.damage_blocked=500..}] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Denied!]","color":"green"},{"text":"!","color": "white"}]
execute as @s[tag=!ghost.adv.block5000,scores={ghost.stat.damage_blocked=5000..}] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[I aint hear no bell!]","color":"green"},{"text":"!","color": "white"}]
execute if score @s ghost.stat.damage_blocked matches 500.. run tag @s add ghost.adv.block500
execute if score @s ghost.stat.damage_blocked matches 5000.. run tag @s add ghost.adv.block5000



#healing charge
execute if items entity @s container.* *[custom_data~{healing_charge:1b}] run scoreboard players operation @s ghost.player.healing_charge += @s ghost.player.parry.damage

execute if score @s ghost.player.healing_charge matches 51.. if items entity @s container.* *[custom_data~{healing_charge:1b}] run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1.5 0.8
execute if score @s ghost.player.healing_charge matches 51.. if items entity @s container.* *[custom_data~{healing_charge:1b}] run scoreboard players set @s ghost.player.healing_charge 50


scoreboard players set @s ghost.player.parry.executed 4
tag @s add reset_parry

function boss:player/parry/parry_damage with storage boss:temp temp
