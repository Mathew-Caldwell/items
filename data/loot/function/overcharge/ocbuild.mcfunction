execute unless entity @s[type=minecraft:player] run return 0
scoreboard players set #lvl oc_lvl 0
execute store result score #lvl oc_lvl run data get entity @s equipment.chest.components."minecraft:enchantments"."loot:overcharge"
execute unless score #lvl oc_lvl matches 1.. store result score #lvl oc_lvl run data get entity @s equipment.chest.components."minecraft:enchantments"."loot:overcharge"
execute unless score #lvl oc_lvl matches 1.. run return 0

scoreboard players set #need oc_lvl 7
scoreboard players operation #need oc_lvl -= #lvl oc_lvl
scoreboard players add @s oc_charge 0
execute if score @s oc_charge >= #need oc_lvl run return 0

scoreboard players add @s oc_charge 1
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.2 12 force
execute if score @s oc_charge >= #need oc_lvl run return run function loot:overcharge/ocfull
title @s actionbar [{"text":"Charge ","color":"yellow"},{"score":{"name":"@s","objective":"oc_charge"}},{"text":"/"},{"score":{"name":"#need","objective":"oc_lvl"}}]