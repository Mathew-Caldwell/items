tag @s add gt_hit
damage @s 12 minecraft:magic by @p[tag=gt_shooter]
effect give @s darkness 4 0 true
effect give @s slowness 3 2 true
particle minecraft:soul ~ ~1 ~ 0.6 0.8 0.6 0.1 50 force
particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.6 0.5 0.08 30 force
playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 1.5 1
function loot:soul/sculk_zone
