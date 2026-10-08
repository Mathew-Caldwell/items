effect give @s minecraft:slowness 1 2 true
execute unless entity @s[type=minecraft:player] run data modify entity @s TicksFrozen set value 200
particle minecraft:snowflake ~ ~1 ~ 0.3 0.5 0.3 0.05 8 force
$execute if entity @a[tag=frost_user] run damage @s $(dmg) loot:frost_breath by @a[tag=frost_user,limit=1]
$execute unless entity @a[tag=frost_user] run damage @s $(dmg) loot:frost_breath