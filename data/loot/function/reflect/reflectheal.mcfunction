effect give @s minecraft:regeneration 1 5 true
scoreboard players remove @s reflect_heal 1
execute if score @s reflect_heal matches ..0 run effect clear @s minecraft:regeneration