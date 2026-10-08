execute as @e[tag=freeze_mine,limit=1] store result storage loot:freeze d double 0.5 run scoreboard players get @s freeze_dist
function loot:freezeray/freezetp with storage loot:freeze

execute as @e[tag=freeze_mine] at @s run function loot:freezeray/freezeeffects

scoreboard players set #beam freeze_id 0
execute anchored eyes positioned ^-0.3 ^-0.3 ^0.6 facing entity @e[tag=freeze_mine,limit=1] eyes run function loot:freezeray/freezebeam

tag @e[tag=freeze_mine] remove freeze_mine