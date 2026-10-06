scoreboard players set #9 frost_lvl 9
scoreboard players set #10 frost_lvl 10
scoreboard players operation #rr frost_lvl = @s frost_rad
scoreboard players operation #rr frost_lvl *= #10 frost_lvl
scoreboard players operation #t frost_lvl = #h frost_lvl
scoreboard players add #t frost_lvl 2
scoreboard players operation #rr frost_lvl *= #t frost_lvl
scoreboard players operation #rr frost_lvl /= #9 frost_lvl
execute store result storage loot:frost r double 0.1 run scoreboard players get #rr frost_lvl
function loot:frostarms with storage loot:frost

scoreboard players add #h frost_lvl 1
execute if score #h frost_lvl matches ..7 positioned ~ ~1 ~ rotated ~30 0 run function loot:frostlayer