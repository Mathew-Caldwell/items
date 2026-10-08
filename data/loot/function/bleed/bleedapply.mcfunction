scoreboard players set #lvl bleed_lvl 0
execute on attacker store result score #lvl bleed_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:bleed"
execute unless score #lvl bleed_lvl matches 1.. run return 0

scoreboard players operation @s bleed_lvl = #lvl bleed_lvl
scoreboard players operation @s bleed_time = #lvl bleed_lvl
scoreboard players operation @s bleed_time *= #20 bleed_lvl
scoreboard players operation @s bleed_time += #40 bleed_lvl

particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.4 0.3 0 25 force