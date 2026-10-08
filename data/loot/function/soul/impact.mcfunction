execute as @s run summon tnt ~ ~ ~ {fuse:0, explosion_power:7}
particle minecraft:soul ~ ~1 ~ 5 2.5 5 0.15 180 force
particle minecraft:sculk_soul ~ ~1 ~ 4.5 2 4.5 0.12 140 force
particle minecraft:sculk_charge_pop ~ ~1 ~ 4 1.5 4 0.08 90 force
particle minecraft:portal ~ ~1 ~ 4 2 4 1.2 80 force
particle minecraft:sonic_boom ~ ~1 ~ 3 1 3 0 10 force
particle minecraft:explosion_emitter ~ ~ ~ 2 0.5 2 0 6 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 4 0.5
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 3 0.6
function loot:soul/sculk_zone
execute as @e[distance=..8,tag=!gt_shooter,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow] run damage @s 18 minecraft:magic
