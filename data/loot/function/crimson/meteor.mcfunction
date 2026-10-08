execute if score @s gt_ccd matches 1.. run return run title @s actionbar {"text":"Crimson recharging...","color":"red"}
scoreboard players set @s gt_ccd 90
playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 2.5 0.45
particle minecraft:lava ~ ~2 ~ 0.6 1.2 0.6 0.08 40 force
execute at @s anchored eyes positioned ^ ^ ^16 run function loot:crimson/meteor_impact
title @s actionbar {"text":"Crimson Meteor!","color":"gold","bold":true}
