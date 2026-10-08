execute if score @s gt_jhold matches 1.. run return run scoreboard players set @s gt_jhold 4
scoreboard players set @s gt_jhold 4
execute if score @s gt_rcd matches 1.. run return run title @s actionbar {"text":"Reaper recharging...","color":"dark_aqua"}
scoreboard players set @s gt_rcd 80
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 2.5 1.25
particle minecraft:sculk_soul ~ ~1 ~ 5 2 5 0.1 120 force
particle minecraft:soul ~ ~1 ~ 5 2 5 0.1 100 force
execute as @e[distance=0.5..10,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow] run function loot:reaper/harvest_hit
effect give @s regeneration 5 3 true
title @s actionbar {"text":"Soul Harvest!","color":"dark_aqua","bold":true}
