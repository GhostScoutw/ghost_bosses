

execute store result storage boss:rng temp.rotation int 1 run random value 1..360
execute store result storage boss:rng temp.distance float 0.1 run random value 60..120

function boss:tick/boss/curse_of_midas/attack/safezone_apply with storage boss:rng temp