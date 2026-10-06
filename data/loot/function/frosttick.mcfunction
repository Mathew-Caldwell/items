scoreboard players remove @s frost_t 1
execute if score @s frost_t matches ..0 run return run kill @s

execute store result storage loot:frost rad int 1 run scoreboard players get @s frost_rad
execute store result storage loot:frost dmg int 1 run scoreboard players get @s frost_dmg

scoreboard players set #h frost_lvl 0
function loot:frostlayer
tp @s ~ ~ ~ ~25 0

scoreboard players set #10 frost_t 10
scoreboard players operation #m frost_t = @s frost_t
scoreboard players operation #m frost_t %= #10 frost_t
execute if score #m frost_t matches 0 run function loot:frostpulse with storage loot:frost