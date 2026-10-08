scoreboard players remove @s dj_t 1
particle minecraft:cloud ~ ~ ~ 0.2 0 0.2 0.02 3 force
execute if score @s dj_t matches 0 run effect clear @s minecraft:levitation