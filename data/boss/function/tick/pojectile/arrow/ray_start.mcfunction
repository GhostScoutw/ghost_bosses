

function boss:tick/boss/bow/attack/cloud_pulse
scoreboard players set @s ghost.generic.counter 80
execute at @s run function boss:tick/pojectile/arrow/ray
