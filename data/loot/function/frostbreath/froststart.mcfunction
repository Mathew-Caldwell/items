execute unless score @s frost_id matches 1.. run function loot:frostbreath/frostassign
scoreboard players add @s frost_cd 0
execute if score @s frost_cd matches 1.. run return 0

execute if score #lvl frost_lvl matches 1 run scoreboard players set #dur frost_t 360
execute if score #lvl frost_lvl matches 2 run scoreboard players set #dur frost_t 420
execute if score #lvl frost_lvl matches 3 run scoreboard players set #dur frost_t 480
execute if score #lvl frost_lvl matches 4 run scoreboard players set #dur frost_t 540
execute if score #lvl frost_lvl matches 5 run scoreboard players set #dur frost_t 600

scoreboard players set #rad frost_rad 4
scoreboard players add #rad frost_rad 5
scoreboard players operation #rad frost_rad += #lvl frost_lvl

scoreboard players set #dmg frost_dmg 1
execute if score #lvl frost_lvl matches 4.. run scoreboard players set #dmg frost_dmg 2

scoreboard players operation @s frost_cd = #dur frost_t
scoreboard players add @s frost_cd 60
scoreboard players operation #o frost_owner = @s frost_id

playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 3 0.6
particle minecraft:snowflake ~ ~1 ~ 2 1 2 0.3 100 force
summon minecraft:marker ~ ~ ~ {Tags:["frost_storm","frost_new"]}
execute as @e[type=minecraft:marker,tag=frost_new,limit=1] run function loot:frostbreath/frostinit