execute unless data entity @s active_effects run return 0

scoreboard players set #lvl steal_lvl 0
execute on attacker store result score #lvl steal_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:steal"
execute unless score #lvl steal_lvl matches 1.. run return 0

scoreboard players set #chance steal_lvl 0
execute if score #lvl steal_lvl matches 1 run scoreboard players set #chance steal_lvl 33
execute if score #lvl steal_lvl matches 2 run scoreboard players set #chance steal_lvl 50
execute if score #lvl steal_lvl matches 3 run scoreboard players set #chance steal_lvl 66
execute store result score #roll steal_lvl run random value 1..100
execute if score #roll steal_lvl > #chance steal_lvl run return 0

data modify storage loot:steal effects set from entity @s active_effects
effect clear @s
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.1 25 force
execute on attacker run function loot:stealgive