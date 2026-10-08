execute if score @s gt_rcd matches 1.. run return run title @s actionbar {"text":"Reaper recharging...","color":"dark_aqua"}
scoreboard players set @s gt_rcd 100
playsound minecraft:particle.soul_escape player @a ~ ~ ~ 2.5 0.55
particle minecraft:soul ~ ~1 ~ 2.5 1.2 2.5 0.06 60 force
execute as @e[distance=1..16,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow,limit=1,sort=nearest] run tag @s add gt_soul_linked
execute as @e[tag=gt_soul_linked] run effect give @s wither 10 1 true
execute as @e[tag=gt_soul_linked] run effect give @s glowing 10 0 true
effect give @s regeneration 10 2 true
effect give @s absorption 10 2 true
title @s actionbar {"text":"Soul Link!","color":"dark_aqua","bold":true}
schedule function loot:reaper/clear_link 200t append
