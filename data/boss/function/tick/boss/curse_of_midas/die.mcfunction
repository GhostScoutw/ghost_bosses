execute unless entity @n[tag=aj.curse_of_midas.root,distance=1..] run bossbar remove boss:curse_of_midas



execute on passengers as @s[type=iron_golem] on attacker run tellraw @a [{"selector": "@s","color":"gold"},{"text":" Finished off ","color":"gray"},{"selector": "@n[tag=aj.curse_of_midas.root]"}]

execute on passengers as @s[type=iron_golem] run function boss:tick/boss/achievement_check

execute on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.curse_of_midas] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Anti-Midas!]","color":"green"},{"text":"!","color": "white"}]
execute on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.curse_of_midas
function animated_java:curse_of_midas/remove/this