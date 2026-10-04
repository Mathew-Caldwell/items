particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.3 0.2 0.1 6 force
particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.3 0.2 0.1 6 force
execute if score @s bleed_lvl matches 1..3 run damage @s 4 loot:bleed
execute if score @s bleed_lvl matches 4..5 run damage @s 6 loot:bleed