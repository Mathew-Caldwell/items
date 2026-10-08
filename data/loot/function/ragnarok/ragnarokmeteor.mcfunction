scoreboard players add @s rag_t 1
execute if score @s rag_t matches 100.. run return run kill @s

particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.02 6 force
particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 3 force

execute unless block ~ ~-1 ~ #minecraft:replaceable run return run function loot:ragnarok/ragnarokimpact
tp @s ~ ~-1 ~