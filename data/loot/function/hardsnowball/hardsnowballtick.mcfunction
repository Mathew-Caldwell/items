execute as @e[type=minecraft:snowball] if data entity @s Item.components."minecraft:custom_data".hard_snowball at @s run particle minecraft:sonic_boom ^ ^ ^-0.5 0 0 0 0 1 force

execute as @e[type=minecraft:snowball] if data entity @s Item.components."minecraft:custom_data".hard_snowball at @s run damage @p[distance=..2, nbt={OnGround:0b}] 4 sonic_boom by @s