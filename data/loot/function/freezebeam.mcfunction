particle minecraft:dust{color:[0.4,0.9,1.0],scale:0.7} ~ ~ ~ 0 0 0 0 1 force
scoreboard players add #beam freeze_id 1
execute if score #beam freeze_id matches 80.. run return 0
execute positioned ~ ~-0.8 ~ if entity @e[tag=freeze_mine,distance=..0.9] run return 0
execute positioned ^ ^ ^0.5 run function loot:freezebeam