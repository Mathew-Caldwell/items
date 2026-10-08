particle minecraft:witch ~ ~2.3 ~ 0.15 0.1 0.15 0 2 force
particle minecraft:soul ~ ~2.1 ~ 0 0 0 0.01 1 force
scoreboard players remove @s hex_time 1

execute store result score #now hex_hp run data get entity @s Health 10
execute if score #now hex_hp >= @s hex_hp run scoreboard players operation @s hex_hp = #now hex_hp
execute if score #now hex_hp < @s hex_hp run function loot:hex/hexbonus

execute if score @s hex_time matches ..0 run function loot:hex/hexend