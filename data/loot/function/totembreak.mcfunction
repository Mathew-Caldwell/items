scoreboard players set #pop totem_chk 0
execute store result score #pop totem_chk run data get entity @s active_effects[{id:"minecraft:regeneration",amplifier:1b}].duration
execute unless score #pop totem_chk matches 890.. run return 0
execute unless data entity @s active_effects[{id:"minecraft:absorption",amplifier:1b}] run return 0

execute on attacker run tag @s add totem_breaker
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.4 30 force
damage @s 1000000 minecraft:generic_kill by @a[tag=totem_breaker,limit=1]
tag @a remove totem_breaker