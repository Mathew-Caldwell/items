scoreboard players operation #o rag_owner = @s rag_owner
execute as @a if score @s rag_id = #o rag_owner run tag @s add rag_user

particle minecraft:explosion ~ ~0.5 ~ 0.5 0.3 0.5 0 3 force
particle minecraft:flame ~ ~0.5 ~ 1.2 0.4 1.2 0.15 40 force
particle minecraft:lava ~ ~0.5 ~ 1 0.3 1 0 12 force
particle minecraft:large_smoke ~ ~0.5 ~ 1 0.5 1 0.05 20 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 0.8

execute as @e[distance=..4,tag=!rag_user,type=!minecraft:marker,type=!minecraft:item,type=!minecraft:experience_orb] run function loot:ragnarok/ragnarokhit
tag @a remove rag_user
kill @s