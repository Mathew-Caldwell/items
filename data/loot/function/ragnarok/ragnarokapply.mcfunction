scoreboard players set #lvl rag_lvl 0
execute on attacker store result score #lvl rag_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:ragnarok"
execute unless score #lvl rag_lvl matches 1.. run return 0
execute on attacker run function loot:ragnarok/ragnarokstart