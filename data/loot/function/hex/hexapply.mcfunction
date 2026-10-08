scoreboard players set #lvl hex_lvl 0
execute on attacker store result score #lvl hex_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:hex"
execute unless score #lvl hex_lvl matches 1.. run return 0

scoreboard players operation @s hex_lvl = #lvl hex_lvl
execute if score #lvl hex_lvl matches 1 run scoreboard players set @s hex_time 100
execute if score #lvl hex_lvl matches 2 run scoreboard players set @s hex_time 140
execute if score #lvl hex_lvl matches 3 run scoreboard players set @s hex_time 180
execute store result score @s hex_hp run data get entity @s Health 10

particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.1 25 force
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.8 0.7