scoreboard players add @s dj_used 0
scoreboard players add @s dj_jp 0
scoreboard players add @s dj_t 0

execute if score @s dj_t matches 1.. run function loot:djboost
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s dj_used 0

scoreboard players set #now dj_jp 0
execute if predicate loot:input_jump run scoreboard players set #now dj_jp 1
execute if score #now dj_jp matches 1 if score @s dj_jp matches 0 run function loot:djpress
scoreboard players operation @s dj_jp = #now dj_jp