execute unless entity @s[type=minecraft:player] run return 0
scoreboard players set #lvl oc_lvl 0
execute store result score #lvl oc_lvl run data get entity @s equipment.chest.components."minecraft:enchantments"."loot:overcharge"
execute unless score #lvl oc_lvl matches 1.. store result score #lvl oc_lvl run data get entity @s equipment.chest.components."minecraft:enchantments"."loot:overcharge"
execute unless score #lvl oc_lvl matches 1.. run return 0

scoreboard players set #need oc_lvl 7
scoreboard players operation #need oc_lvl -= #lvl oc_lvl
execute unless score @s oc_charge >= #need oc_lvl run return 0

scoreboard players set @s oc_charge 0
tag @s add oc_user
scoreboard players operation #jumps oc_lvl = #lvl oc_lvl
execute as @e[tag=oc_target,limit=1] at @s run function loot:ochit
tag @e[tag=oc_hit] remove oc_hit
tag @s remove oc_user
title @s actionbar {"text":"Discharged!","color":"gray"}