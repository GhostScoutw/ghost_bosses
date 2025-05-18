
advancement revoke @s only boss:player_death

tag @s add dead_player

execute if entity @s[tag=!ghost.no_death_tip] on attacker as @s[tag=boss_hitbox] run function boss:player/death_messages/check

execute on attacker as @s[tag=boss_hitbox] on vehicle at @s run function boss:tick/boss/haunted_sword/killed_player

execute if entity @s[team=ghost.arena] at @s positioned ~ ~2 ~ run function boss:player/summon_wisp

execute as @e[tag=boss] if score @s ghost.boss.solo_claim = @p[tag=dead_player] ghost.generic.id at @s run tp @s ~ ~-10 ~
execute as @e[tag=boss] if score @s ghost.boss.solo_claim = @p[tag=dead_player] ghost.generic.id at @s run function boss:kill/nearest/boss

tag @s remove dead_player