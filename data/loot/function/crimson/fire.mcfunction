scoreboard players set @s gt_ccd 50
scoreboard players set @s gt_charge 0
tag @s add gt_shooter
scoreboard players set #d gt_tmp 0
scoreboard players set #hits gt_tmp 0
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 3 0.55
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 2 0.5
particle minecraft:flame ~ ~1 ~ 0.6 0.8 0.6 0.15 80 force
particle minecraft:lava ~ ~1 ~ 0.4 0.5 0.4 0.05 20 force
execute at @s anchored eyes positioned ^ ^ ^1 run function loot:crimson/step
tag @e[tag=gt_hit] remove gt_hit
tag @s remove gt_shooter
title @s actionbar {"text":"Crimson Beam!","color":"red","bold":true}
