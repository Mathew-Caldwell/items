function loot:hardsnowballtick
function loot:electroarrowtick
function loot:sonicarrowtick
function loot:flamethrowertick
function loot:freezetick

execute as @e[scores={bleed_time=1..}] at @s run function loot:bleedtick
scoreboard players reset @a[scores={bleed_death=1..}] bleed_time
scoreboard players reset @a[scores={bleed_death=1..}] bleed_lvl
scoreboard players set @a[scores={bleed_death=1..}] bleed_death 0

execute as @a[scores={bv_used=1..}] run function loot:bloodvial

execute as @e[scores={hex_time=1..}] at @s run function loot:hextick
scoreboard players reset @a[scores={hex_death=1..}] hex_time
scoreboard players reset @a[scores={hex_death=1..}] hex_lvl
scoreboard players reset @a[scores={hex_death=1..}] hex_hp
scoreboard players set @a[scores={hex_death=1..}] hex_death 0

scoreboard players remove @a[scores={mirror_cd=1..}] mirror_cd 1
execute as @e[type=minecraft:mannequin,tag=mirror_clone] at @s run function loot:mirrortick

execute as @a[scores={reflect_heal=1..}] run function loot:reflectheal
execute as @a store result score @s reflect_hp run data get entity @s Health 10

execute as @a at @s run function loot:mistytick

scoreboard players reset @a[scores={oc_death=1..}] oc_charge
scoreboard players set @a[scores={oc_death=1..}] oc_death 0

scoreboard players remove @a[scores={rag_cd=1..}] rag_cd 1
execute as @e[type=minecraft:marker,tag=rag_storm] at @s run function loot:ragnarokstorm
execute as @e[type=minecraft:marker,tag=rag_meteor] at @s run function loot:ragnarokmeteor

scoreboard players remove @a[scores={frost_cd=1..}] frost_cd 1
execute as @e[type=minecraft:marker,tag=frost_storm] at @s run function loot:frosttick