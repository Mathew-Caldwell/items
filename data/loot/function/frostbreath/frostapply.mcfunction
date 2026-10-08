scoreboard players set #lvl frost_lvl 0
execute on attacker store result score #lvl frost_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:frost_giant_breath"
#tellraw @a [{"text":"lvl="},{"score":{"name":"#lvl","objective":"frost_lvl"}}]
#execute on attacker run tellraw @a [{"text":"cd="},{"score":{"name":"@s","objective":"frost_cd"}}]
execute unless score #lvl frost_lvl matches 1.. run return 0
execute on attacker run function loot:froststart