tag @s remove freeze_target
scoreboard players reset @s freeze_owner
scoreboard players reset @s freeze_dist
execute unless entity @s[type=minecraft:player] run data modify entity @s NoAI set value 0b