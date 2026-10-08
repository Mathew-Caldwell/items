scoreboard players set @s rc_staff 0
execute unless data entity @s SelectedItem.components."minecraft:custom_data".crescent_staff run return 0
scoreboard players add @s rc_cd 0
execute if score @s rc_cd matches 1.. run return 0
scoreboard players set @s rc_cd 15

tag @s add rc_user
scoreboard players set #step rc_step 0
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 1 0.8
execute anchored eyes positioned ^ ^ ^0.5 run function loot:crescentstaff/crescentstep
tag @e[tag=rc_hit] remove rc_hit
tag @s remove rc_user