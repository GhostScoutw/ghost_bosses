

gamerule naturalRegeneration false

tellraw @a {"text":"Bosses are load","color":"dark_red"}

tellraw @a[tag=is_dev] [{"text":"Check ","color":"yellow"},{"text":"ghost.config ","color":"light_purple"},{"text":"scoreboard for config options. set 1 for ON and 0 for OFF"}]

scoreboard objectives add ghost.config dummy

##boss
scoreboard objectives add ghost.boss.id dummy

scoreboard objectives add ghost.boss.target dummy
scoreboard objectives add ghost.boss.move_cooldown dummy

scoreboard objectives add ghost.boss.hp dummy
scoreboard objectives add ghost.boss.hp.temp dummy

scoreboard objectives add ghost.boss.hurt dummy

scoreboard objectives add ghost.boss.hurt.temp dummy
scoreboard objectives add ghost.boss.heal dummy

scoreboard objectives add ghost.boss.solo_claim dummy

scoreboard objectives add ghost.boss.bow.airstrike_count dummy

##generic
scoreboard objectives add ghost.generic.id dummy
scoreboard objectives add ghost.generic.agro_timer dummy
scoreboard objectives add ghost.generic.rng dummy

scoreboard objectives add ghost.generic.hp dummy
scoreboard objectives add ghost.generic.hp.temp dummy

scoreboard objectives add ghost.generic.lifetime dummy
scoreboard objectives add ghost.generic.counter dummy
scoreboard objectives add ghost.generic.delay dummy

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


scoreboard objectives add ghost.player.menu_page dummy

scoreboard objectives add ghost.player.weapon_id dummy
scoreboard objectives add ghost.player.madness_stack dummy

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

scoreboard objectives add death_tip trigger
scoreboard objectives add menu trigger

##constant
scoreboard objectives add ghost.constant dummy

scoreboard players set 2 ghost.constant 2
scoreboard players set -1 ghost.constant -1

##gravity Gun

scoreboard objectives add ghost.gravity_gun dummy
scoreboard objectives add ghost.gravity_gun.grabbed_by dummy
scoreboard objectives add ghost.gravity_gun.launch dummy


##teams
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
execute unless score crown ghost.config matches -2147483648..2147483647 run scoreboard players set crown ghost.config 0