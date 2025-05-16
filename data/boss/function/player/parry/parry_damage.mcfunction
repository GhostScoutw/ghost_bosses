
tag @s add player_damager
$execute on attacker run damage @s $(parry_damage) player_attack by @p[tag=player_damager]
tag @s remove player_damager