execute as @e[type=minecraft:arrow] at @s if data entity @s item.components."minecraft:custom_data".electric_arrow run particle minecraft:electric_spark ^ ^ ^-0.5 0.1 0.1 0.1 0.02 5 force
execute as @e[type=minecraft:arrow, nbt={inGround:1b}] at @s if data entity @s item.components."minecraft:custom_data".electric_arrow run summon lightning_bolt ~ ~ ~
execute as @e[type=minecraft:arrow, nbt={inGround:1b}] at @s if data entity @s item.components."minecraft:custom_data".electric_arrow run summon tnt ~ ~ ~ {fuse:0}
schedule function loot:electroarrowtick 1t
execute as @e[type=minecraft:arrow, nbt={inGround:1b}] at @s if data entity @s item.components."minecraft:custom_data".electric_arrow run kill @s