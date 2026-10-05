scoreboard players add @s ms_was 0
scoreboard players add @s ms_win 0
scoreboard players add @s ms_cd 0
execute if score @s ms_cd matches 1.. run scoreboard players remove @s ms_cd 1
execute if score @s ms_win matches 1.. run scoreboard players remove @s ms_win 1

scoreboard players set #now ms_lvl 0
execute if score @s ms_sneak > @s ms_prev run scoreboard players set #now ms_lvl 1
scoreboard players operation @s ms_prev = @s ms_sneak

execute if score #now ms_lvl matches 1 if score @s ms_was matches 0 run function loot:mistypress
scoreboard players operation @s ms_was = #now ms_lvl