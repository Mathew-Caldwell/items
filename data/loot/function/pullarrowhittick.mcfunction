advancement revoke @s only loot:pullarrowhit

# mark shooter and victim
tag @s add pull_shooter
execute as @e[type=minecraft:arrow, distance=..128] at @s if data entity @s item.components."minecraft:custom_data".pull_arrow run tag @e[distance=..2, tag=!pull_shooter, nbt={HurtTime:10s}] add pull_target
execute as @e[type=minecraft:arrow, distance=..128] at @s if data entity @s item.components."minecraft:custom_data".pull_arrow run tag @e[distance=..2, tag=!pull_shooter, nbt={HurtTime:9s}] add pull_target

# yank victim to 2 blocks in front of the shooter
execute at @s run tp @e[tag=pull_target] ^ ^ ^2

particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 0.5 30 force
tag @e[tag=pull_target] remove pull_target
tag @s remove pull_shooter