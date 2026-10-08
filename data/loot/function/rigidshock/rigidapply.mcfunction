scoreboard players set #lvl rigid_lvl 0
execute store result score #lvl rigid_lvl run data get entity @s Inventory[{Slot:102b}].components."minecraft:enchantments"."loot:rigid_shock"
execute unless score #lvl rigid_lvl matches 1.. store result score #lvl rigid_lvl run data get entity @s equipment.chest.components."minecraft:enchantments"."loot:rigid_shock"
execute unless score #lvl rigid_lvl matches 1.. run return 0

scoreboard players set #chance rigid_lvl 0
execute if score #lvl rigid_lvl matches 1 run scoreboard players set #chance rigid_lvl 1
execute if score #lvl rigid_lvl matches 2 run scoreboard players set #chance rigid_lvl 3
execute if score #lvl rigid_lvl matches 3 run scoreboard players set #chance rigid_lvl 5

execute store result score #roll rigid_lvl run random value 1..100
execute if score #roll rigid_lvl > #chance rigid_lvl run return 0

execute on attacker at @s run function loot:rigidshock/rigiddrop