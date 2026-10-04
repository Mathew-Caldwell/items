tag @s add flame_owner

execute anchored eyes positioned ^ ^ ^1.5 run particle minecraft:flame ~ ~ ~ 0.15 0.15 0.15 0.02 5 force
execute anchored eyes positioned ^ ^ ^3 run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.02 8 force
execute anchored eyes positioned ^ ^ ^4.5 run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.02 10 force
execute anchored eyes positioned ^ ^ ^6 run particle minecraft:flame ~ ~ ~ 0.7 0.7 0.7 0.02 12 force
execute anchored eyes positioned ^ ^ ^6 run particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0.02 3 force

execute anchored eyes positioned ^ ^ ^1.5 as @e[distance=..1, tag=!flame_owner, type=!minecraft:item] run function loot:flamehit
execute anchored eyes positioned ^ ^ ^3 as @e[distance=..1.5, tag=!flame_owner, type=!minecraft:item] run function loot:flamehit
execute anchored eyes positioned ^ ^ ^4.5 as @e[distance=..2, tag=!flame_owner, type=!minecraft:item] run function loot:flamehit
execute anchored eyes positioned ^ ^ ^6 as @e[distance=..2.5, tag=!flame_owner, type=!minecraft:item] run function loot:flamehit

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.1 1
tag @s remove flame_owner