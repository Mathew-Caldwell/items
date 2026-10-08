execute unless score @s rag_id matches 1.. run function loot:ragnarok/ragnarokassign
scoreboard players add @s rag_cd 0
execute if score @s rag_cd matches 1.. run return 0

scoreboard players set #dur rag_t 0
execute if score #lvl rag_lvl matches 1 run scoreboard players set #dur rag_t 360
execute if score #lvl rag_lvl matches 2 run scoreboard players set #dur rag_t 420
execute if score #lvl rag_lvl matches 3 run scoreboard players set #dur rag_t 480
execute if score #lvl rag_lvl matches 4 run scoreboard players set #dur rag_t 540
execute if score #lvl rag_lvl matches 5 run scoreboard players set #dur rag_t 600

scoreboard players operation @s rag_cd = #dur rag_t
scoreboard players add @s rag_cd 100
scoreboard players operation #o rag_owner = @s rag_id

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 4 0.5
summon minecraft:marker ~ ~ ~ {Tags:["rag_storm","rag_snew"]}
execute as @e[type=minecraft:marker,tag=rag_snew,limit=1] run function loot:ragnarok/ragnarokinit