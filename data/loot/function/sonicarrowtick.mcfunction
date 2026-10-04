execute as @e[type=minecraft:arrow, nbt={inGround:0b}] at @s if data entity @s item.components."minecraft:custom_data".sonic_arrow run particle minecraft:sonic_boom ^ ^ ^-0.5 0.1 0.1 0.1 0.02 5 force
execute as @e[type=minecraft:arrow, nbt={inGround:1b}] at @s if data entity @s item.components."minecraft:custom_data".sonic_arrow run summon tnt ~ ~ ~ {fuse:0}
execute as @e[type=minecraft:arrow, nbt={inGround:0b}] at @s if data entity @s item.components."minecraft:custom_data".sonic_arrow run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~
schedule function loot:sonicarrowtick 1t
execute as @e[type=minecraft:arrow, nbt={inGround:1b}] at @s if data entity @s item.components."minecraft:custom_data".sonic_arrow run kill @s