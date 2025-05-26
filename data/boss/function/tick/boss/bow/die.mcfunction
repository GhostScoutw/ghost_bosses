execute unless entity @n[tag=aj.bow.root,distance=1..] run bossbar remove boss:bow



execute on passengers as @s[type=iron_golem] on attacker run tellraw @a [{"selector": "@s","color":"gold"},{"text":" Finished off ","color":"gray"},{"selector": "@n[tag=aj.bow.root]"}]

execute on passengers as @s[type=iron_golem] run function boss:tick/boss/achievement_check

#execute on passengers as @s[type=iron_golem] on attacker as @s[tag=!ghost.adv.bow] run tellraw @a [{"selector": "@s"},{"text":" Has made the advancement ","color":"white"},{"text": "[Haunted no more]","color":"green"},{"text":"!","color": "white"}]
tag @s add this.root
execute as @e[tag=arrow] if score @s ghost.boss.id = @n[tag=this.root] ghost.boss.id run kill @s
tag @s remove this.root
execute on passengers as @s[type=iron_golem] on attacker run tag @s add ghost.adv.bow
function animated_java:bow/remove/this