damage @s 2 minecraft:in_fire by @a[tag=flame_owner, limit=1]
execute unless entity @s[type=minecraft:player] run data modify entity @s Fire set value 100s