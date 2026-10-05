scoreboard players remove @s rag_t 1
execute if score @s rag_t matches ..0 run return run kill @s

particle minecraft:large_smoke ~ ~25 ~ 8 0.5 8 0.01 6 force

scoreboard players set #5 rag_t 5

scoreboard players operation #m rag_t = @s rag_t
scoreboard players operation #m rag_t %= #5 rag_t
execute if score #m rag_t matches 0 run function loot:ragnarokspawn