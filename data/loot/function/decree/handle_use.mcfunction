execute if score @s gt_jhold matches 1.. run return run scoreboard players set @s gt_jhold 4
scoreboard players set @s gt_jhold 4
execute if score @s gt_dcd matches 1.. run return run title @s actionbar {"text":"Decree recharging...","color":"light_purple"}
scoreboard players set @s gt_dcd 70
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 2.5 0.7
particle minecraft:portal ~ ~1 ~ 0.7 1.2 0.7 0.6 100 force
particle minecraft:reverse_portal ~ ~1 ~ 0.6 1 0.6 0.4 50 force
particle minecraft:end_rod ~ ~1 ~ 0.5 0.8 0.5 0.05 40 force
tp @s ~ ~20 ~
particle minecraft:portal ~ ~1 ~ 0.7 1.2 0.7 0.6 100 force
particle minecraft:end_rod ~ ~1 ~ 0.5 0.8 0.5 0.05 50 force
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 2.5 1.15
title @s actionbar {"text":"Ascension!","color":"light_purple","bold":true}
