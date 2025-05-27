
execute store result storage boss:rng arrow.x float 1 run random value 0..360
execute store result storage boss:rng arrow.z float 0.01 run random value 0..1200

execute store result storage boss:rng arrow.x1 float 0.1 run random value -150..0
execute store result storage boss:rng arrow.z1 float 0.1 run random value -300..0


function boss:tick/boss/bow/attack/airstrike with storage boss:rng arrow