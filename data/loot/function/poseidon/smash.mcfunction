scoreboard players set @s gt_pos_smash 0
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 3 0.75
playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 2.5 0.55
particle minecraft:splash ~ ~0.5 ~ 4 0.6 4 0.12 120 force
particle minecraft:bubble_column_up ~ ~1 ~ 3.5 1.2 3.5 0.1 80 force
particle minecraft:explosion ~ ~ ~ 1.2 0.3 1.2 0 4 force
execute as @e[distance=0.5..8,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow] run damage @s 5 minecraft:magic
execute as @e[distance=0.5..8,type=!item,type=!experience_orb,type=!marker] run effect give @s slowness 4 2 true
execute as @e[distance=0.5..8,type=!item,type=!experience_orb,type=!marker] at @s run tp @s ~ ~1.4 ~
title @s actionbar {"text":"Tidal Smash!","color":"dark_aqua","bold":true}
