particle minecraft:explosion_emitter ~ ~ ~ 1.5 0.4 1.5 0 4 force
particle minecraft:flame ~ ~1 ~ 4 1.5 4 0.15 150 force
particle minecraft:lava ~ ~1 ~ 3 1 3 0.08 50 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 3.5 0.65
execute as @e[distance=..8,type=!item,type=!experience_orb,type=!marker,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!arrow] run damage @s 30 minecraft:magic
execute as @e[distance=..8,type=!item,type=!experience_orb,type=!marker] run data modify entity @s[type=!player] Fire set value 200s
fill ~-2 ~-1 ~-2 ~2 ~0 ~2 minecraft:fire replace #minecraft:replaceable
