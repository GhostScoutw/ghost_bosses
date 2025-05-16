advancement revoke @s only boss:use_item

execute if items entity @s weapon.mainhand *[custom_data~{parry:1b}] unless score @s ghost.player.parry.cooldown matches 1.. run return run function boss:player/parry

execute if items entity @s weapon.mainhand *[custom_data~{healing_charge:1b}] unless score @s ghost.player.parry.cooldown matches 1.. unless score @s ghost.player.item.cooldown matches 1.. run return run function boss:player/heal_charge
