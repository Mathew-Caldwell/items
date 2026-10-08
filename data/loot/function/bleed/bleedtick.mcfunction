particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.2 0.3 0.2 0 2 force

scoreboard players operation #m bleed_lvl = @s bleed_time
scoreboard players operation #m bleed_lvl %= #20 bleed_lvl
execute if score #m bleed_lvl matches 0 run function loot:bleed/bleeddamage

scoreboard players remove @s bleed_time 1
execute if score @s bleed_time matches ..0 run scoreboard players reset @s bleed_lvl
execute if score @s bleed_time matches ..0 run scoreboard players reset @s bleed_time