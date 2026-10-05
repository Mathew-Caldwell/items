scoreboard players set #chance disarm_chk 10
execute store result score #roll disarm_chk run random value 1..100
execute if score #roll disarm_chk > #chance disarm_chk run return 0

execute if entity @s[type=minecraft:player] if data entity @s SelectedItem run function loot:disarmplayer
execute unless entity @s[type=minecraft:player] if data entity @s equipment.mainhand run function loot:disarmmob