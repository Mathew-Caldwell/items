scoreboard players set @s ms_win 0
execute if score @s ms_cd matches 1.. run return 0

scoreboard players set #lvl ms_lvl 0
execute store result score #lvl ms_lvl run data get entity @s Inventory[{Slot:101b}].components."minecraft:enchantments"."loot:misty_step"
execute unless score #lvl ms_lvl matches 1.. store result score #lvl ms_lvl run data get entity @s equipment.legs.components."minecraft:enchantments"."loot:misty_step"
execute unless score #lvl ms_lvl matches 1.. run return 0

scoreboard players set @s ms_cd 100
scoreboard players operation #steps ms_lvl = #lvl ms_lvl
scoreboard players operation #steps ms_lvl *= #20 ms_lvl
scoreboard players set #step ms_lvl 0

particle minecraft:spit ~ ~1 ~ 0.3 0.6 0.3 0.5 40 force
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.2
function loot:mistyray