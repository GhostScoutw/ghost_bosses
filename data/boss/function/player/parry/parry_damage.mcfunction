
tag @s add player_damager
$execute on attacker as @s unless score @s ghost.player.parry.duration matches 1.. run damage @s $(parry_damage) player_attack by @p[tag=player_damager]
tag @s remove player_damager