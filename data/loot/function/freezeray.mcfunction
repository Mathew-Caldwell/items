scoreboard players add #steps freeze_id 1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!freeze_self,type=!minecraft:item,type=!minecraft:arrow,type=!minecraft:experience_orb,type=!minecraft:marker,limit=1,sort=nearest] run return run function loot:freezelock
execute unless block ~ ~ ~ #minecraft:replaceable run return 0
execute if score #steps freeze_id matches 60.. run return 0
execute positioned ^ ^ ^0.5 run function loot:freezeray