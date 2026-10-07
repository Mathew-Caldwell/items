scoreboard players add #step rc_step 1
particle minecraft:dust{color:[0.5,0.9,1.0],scale:1.5} ~ ~ ~ 0.05 0.05 0.05 0 2 force
particle minecraft:soul ~ ~ ~ 0.05 0.05 0.05 0 2 force
particle minecraft:dust{color:[0.3,0.0,0.8],scale:1.5} ~ ~ ~ 0.05 0.05 0.05 0 2 force

scoreboard players set #4 rc_step 4
scoreboard players operation #m rc_step = #step rc_step
scoreboard players operation #m rc_step %= #4 rc_step
execute if score #m rc_step matches 0 run particle minecraft:dust{color:[0.2,0.0,0.5],scale:1.5} ~ ~ ~ 0 0 0 0 1 force

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!rc_user,tag=!rc_hit,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:arrow] run function loot:crescenthit

execute unless block ~ ~ ~ #minecraft:replaceable run return 0
execute if score #step rc_step matches 52.. run return 0
execute positioned ^ ^ ^0.5 run function loot:crescentstep