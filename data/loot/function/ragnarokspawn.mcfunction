scoreboard players operation #o rag_owner = @s rag_owner
execute store result storage loot:rag x int 1 run random value -10..10
execute store result storage loot:rag z int 1 run random value -10..10
function loot:ragnarokmsummon with storage loot:rag