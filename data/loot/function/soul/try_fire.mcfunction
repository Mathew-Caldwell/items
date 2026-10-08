execute if score @s gt_jhold matches 1.. run return run scoreboard players set @s gt_jhold 4
scoreboard players set @s gt_jhold 4
execute if score @s gt_scd matches 1.. run return run title @s actionbar {"text":"Soul Energy recharging...","color":"aqua"}
scoreboard players set @s gt_scd 40
tag @s add gt_shooter
scoreboard players set #d gt_tmp 0
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 3 0.85
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 2 1.1
particle minecraft:soul ~ ~1 ~ 0.8 1 0.8 0.1 60 force
particle minecraft:sculk_soul ~ ~1 ~ 0.6 0.8 0.6 0.08 40 force
execute at @s anchored eyes positioned ^ ^ ^1 run function loot:soul/step
tag @e[tag=gt_hit] remove gt_hit
tag @s remove gt_shooter
title @s actionbar {"text":"Soul Cataclysm!","color":"aqua","bold":true}
