

function boss:tick/boss/bow/attack/cloud_pulse
scoreboard players set @s ghost.generic.counter 40
execute at @s run function boss:tick/pojectile/player/breeze_bolt/ray
