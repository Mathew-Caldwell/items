effect give @s minecraft:slowness 1 255 true
execute unless entity @s[type=minecraft:player] run data modify entity @s NoAI set value 1b
execute unless entity @s[type=minecraft:player] run data modify entity @s TicksFrozen set value 150
particle minecraft:snowflake ~ ~1 ~ 0.3 0.5 0.3 0.01 4 force