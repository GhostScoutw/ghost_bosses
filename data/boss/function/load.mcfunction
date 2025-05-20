

gamerule naturalRegeneration false

tellraw @a {"text":"Bosses are load","color":"dark_red"}

tellraw @a[tag=is_dev] [{"text":"Check ","color":"yellow"},{"text":"ghost.config ","color":"light_purple"},{"text":"scoreboard for config options. set 1 for ON and 0 for OFF"}]

scoreboard objectives add ghost.config dummy

##boss
scoreboard objectives add ghost.boss.target dummy
scoreboard objectives add ghost.boss.move_cooldown dummy

scoreboard objectives add ghost.boss.hp dummy
scoreboard objectives add ghost.boss.hp.temp dummy

scoreboard objectives add ghost.boss.hurt dummy

scoreboard objectives add ghost.boss.hurt.temp dummy
scoreboard objectives add ghost.boss.heal dummy

scoreboard objectives add ghost.boss.solo_claim dummy

##generic
scoreboard objectives add ghost.generic.id dummy
scoreboard objectives add ghost.generic.agro_timer dummy
scoreboard objectives add ghost.generic.rng dummy

scoreboard objectives add ghost.generic.hp dummy
scoreboard objectives add ghost.generic.hp.temp dummy
scoreboard objectives add ghost.item_count dummy
##player
scoreboard objectives add ghost.player.parry.duration dummy
scoreboard objectives add ghost.player.parry.cooldown dummy
scoreboard objectives add ghost.player.parry.executed dummy

scoreboard objectives add ghost.player.parry.max.shield dummy
scoreboard objectives add ghost.player.parry.shield dummy
scoreboard objectives add ghost.player.parry.damage dummy

scoreboard objectives add ghost.player.healing_charge dummy

scoreboard objectives add ghost.player.item.cooldown dummy

scoreboard objectives add ghost.player.death deathCount

##wisp
scoreboard objectives add ghost.wisp.lifetime dummy
scoreboard objectives add ghost.wisp.delay dummy


##status effects
scoreboard objectives add ghost.effect.midas dummy

##statistics
scoreboard objectives add ghost.stat.parry_count dummy [{"text":"Parry count","color": "gold"}]
scoreboard objectives add ghost.stat.damage_blocked dummy

##rooms
scoreboard objectives add ghost.room.id dummy
scoreboard objectives add ghost.room.claimed dummy

##constant
scoreboard objectives add ghost.constant dummy



scoreboard objectives add death_tip trigger

scoreboard players set 2 ghost.constant 2

team add ghost.lobby

team modify ghost.lobby color dark_gray
team modify ghost.lobby prefix {"text":"[Lobby] ","color":"gray"}
team modify ghost.lobby friendlyFire false

team add ghost.arena

team modify ghost.arena color aqua
team modify ghost.arena prefix {"text":"[Warrior] ","color":"dark_aqua"}
team modify ghost.arena friendlyFire false

team add ghost.solo

team modify ghost.solo color yellow
team modify ghost.solo prefix {"text":"[Solo] ","color":"gold"}
team modify ghost.solo friendlyFire false

team add ghost.pvp

team modify ghost.pvp color red
team modify ghost.pvp prefix {"text":"[PvP] ","color":"dark_red"}
team modify ghost.pvp friendlyFire true


execute unless score tools ghost.config matches -2147483648..2147483647 run scoreboard players set tools ghost.config 0
execute unless score actionbar ghost.config matches -2147483648..2147483647 run scoreboard players set actionbar ghost.config 0
execute unless score autoteam ghost.config matches -2147483648..2147483647 run scoreboard players set autoteam ghost.config 0