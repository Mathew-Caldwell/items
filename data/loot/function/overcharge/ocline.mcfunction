particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force
scoreboard players add #beam oc_lvl 1
execute if score #beam oc_lvl matches 20.. run return 0
execute positioned ~ ~-1.2 ~ if entity @e[tag=oc_next,distance=..1.1] run return 0
execute positioned ^ ^ ^0.5 run function loot:overcharge/ocline