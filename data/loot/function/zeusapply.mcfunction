scoreboard players set #lvl zeus_lvl 0
execute on attacker store result score #lvl zeus_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:zeus_wrath" 1
execute if score #lvl zeus_lvl matches 1.. run function loot:zeusstrike