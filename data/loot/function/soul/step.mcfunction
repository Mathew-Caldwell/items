execute unless loaded ~ ~ ~ run return 0
scoreboard players add #d gt_tmp 1
particle minecraft:soul ~ ~ ~ 0.35 0.35 0.35 0.05 10 force
particle minecraft:sculk_soul ~ ~ ~ 0.25 0.25 0.25 0.04 6 force
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
particle minecraft:sculk_charge_pop ~ ~ ~ 0.4 0.4 0.4 0.03 4 force
particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0.4 3 force
execute positioned ~-1.1 ~-1.1 ~-1.1 as @e[dx=1.2,dy=1.2,dz=1.2,tag=!gt_shooter,tag=!gt_hit,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow] run function loot:soul/hit
execute unless block ~ ~ ~ #minecraft:replaceable run return run function loot:soul/impact
execute if score #d gt_tmp matches ..500 positioned ^ ^ ^1 run function loot:soul/step
#execute if score #d gt_tmp matches 56.. run function god_tools:soul/impact
