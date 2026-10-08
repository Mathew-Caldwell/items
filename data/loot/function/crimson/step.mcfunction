execute unless loaded ~ ~ ~ run return 0
scoreboard players add #d gt_tmp 1
particle minecraft:flame ~ ~ ~ 0.15 0.15 0.15 0.05 8 force
particle minecraft:lava ~ ~ ~ 0.08 0.08 0.08 0 2 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.02 3 force
execute positioned ~-0.7 ~-0.7 ~-0.7 as @e[dx=0.4,dy=0.4,dz=0.4,tag=!gt_shooter,tag=!gt_hit,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow] run function loot:crimson/hit
execute unless block ~ ~ ~ #minecraft:replaceable run return 0
execute if score #d gt_tmp matches ..48 positioned ^ ^ ^1 run function loot:crimson/step
