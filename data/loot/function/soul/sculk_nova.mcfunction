execute if score @s gt_scd matches 1.. run return run title @s actionbar {"text":"Soul Energy recharging...","color":"aqua"}
scoreboard players set @s gt_scd 55
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 3 0.65
particle minecraft:sculk_soul ~ ~1 ~ 5 2 5 0.12 150 force
particle minecraft:soul ~ ~1 ~ 5 2 5 0.12 120 force
particle minecraft:sonic_boom ~ ~1 ~ 3 0.5 3 0 8 force
execute as @e[distance=0.5..11,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow] run damage @s 18 minecraft:magic
execute as @e[distance=0.5..11,type=!item,type=!experience_orb,type=!marker] run effect give @s darkness 5 0 true
execute as @e[distance=0.5..11,type=!item,type=!experience_orb,type=!marker] run effect give @s slowness 4 2 true
function loot:soul/sculk_zone
title @s actionbar {"text":"Sculk Nova!","color":"aqua","bold":true}
