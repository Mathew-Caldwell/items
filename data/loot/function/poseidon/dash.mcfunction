execute if score @s gt_jhold matches 1.. run return run scoreboard players set @s gt_jhold 4
scoreboard players set @s gt_jhold 4
execute if score @s gt_poscd matches 1.. run return run title @s actionbar {"text":"Poseidon recharging...","color":"blue"}
scoreboard players set @s gt_poscd 35
playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 1.4 0.85
particle minecraft:bubble_column_up ~ ~1 ~ 0.6 0.6 0.6 0.08 50 force
particle minecraft:splash ~ ~1 ~ 0.6 0.5 0.6 0.08 40 force
execute at @s rotated ~ 0 run tp @s ^ ^0.5 ^7
scoreboard players set @s gt_pos_smash 45
title @s actionbar {"text":"Tidal Dash — land for Smash!","color":"blue","bold":true}
