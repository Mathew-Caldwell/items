scoreboard players set #lvl bs_lvl 0
execute on attacker store result score #lvl bs_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:backstab"
execute unless score #lvl bs_lvl matches 1.. run return 0

execute on attacker run tag @s add backstab_user
execute unless entity @e[tag=backstab_user,limit=1] run return 0

# attacker must be inside the rear cone
scoreboard players set #behind bs_lvl 0
execute rotated ~ 0 positioned ^ ^ ^-2 if entity @a[tag=backstab_user,distance=..1.7] run scoreboard players set #behind bs_lvl 1
execute unless score #behind bs_lvl matches 1 run tag @a remove backstab_user
execute unless score #behind bs_lvl matches 1 run return 0

execute if score #lvl bs_lvl matches 1 run damage @s 3 loot:backstab by @a[tag=backstab_user,limit=1]
execute if score #lvl bs_lvl matches 2 run damage @s 5 loot:backstab by @a[tag=backstab_user,limit=1]
execute if score #lvl bs_lvl matches 3 run damage @s 7 loot:backstab by @a[tag=backstab_user,limit=1]

particle minecraft:crit ~ ~1 ~ 0.3 0.5 0.3 0.4 25 force
particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.3 0.2 0.1 8 force
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.5
title @a[tag=backstab_user] actionbar {"text":"Backstab!","color":"dark_red"}
tag @a remove backstab_user