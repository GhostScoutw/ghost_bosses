execute unless entity @n[tag=aj.haunted_sword.root,distance=1..] run bossbar remove boss:haunted_sword



execute on passengers as @s[type=iron_golem] on attacker run tellraw @a [{"selector": "@s","color":"gold"},{"text":" Finished off ","color":"gray"},{"selector": "@n[tag=aj.haunted_sword.root]"}]



execute on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.haunted_sword] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Haunted no more]","color":"green"},{"text":"!","color": "white"}]
execute on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.haunted_sword
function animated_java:haunted_sword/remove/this