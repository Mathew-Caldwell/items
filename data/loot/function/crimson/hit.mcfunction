tag @s add gt_hit
scoreboard players add #hits gt_tmp 1
execute if score #hits gt_tmp matches 1 run damage @s 1000 minecraft:magic by @p[tag=gt_shooter]
execute if score #hits gt_tmp matches 2.. run damage @s 50 minecraft:magic by @p[tag=gt_shooter]
data modify entity @s[type=!player] Fire set value 200s
particle minecraft:flame ~ ~1 ~ 0.6 0.8 0.6 0.12 50 force
particle minecraft:lava ~ ~1 ~ 0.4 0.5 0.4 0.05 15 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 1.1
