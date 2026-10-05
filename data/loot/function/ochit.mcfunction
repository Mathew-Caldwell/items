tag @s remove oc_next
tag @s add oc_hit
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.4 30 force
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 0.5 1.8

execute if score #lvl oc_lvl matches 1 run damage @s 4 loot:overcharge by @a[tag=oc_user,limit=1]
execute if score #lvl oc_lvl matches 2 run damage @s 6 loot:overcharge by @a[tag=oc_user,limit=1]
execute if score #lvl oc_lvl matches 3 run damage @s 8 loot:overcharge by @a[tag=oc_user,limit=1]
execute if score #lvl oc_lvl matches 4 run damage @s 10 loot:overcharge by @a[tag=oc_user,limit=1]
execute if score #lvl oc_lvl matches 5 run damage @s 12 loot:overcharge by @a[tag=oc_user,limit=1]

execute unless score #jumps oc_lvl matches 1.. run return 0
scoreboard players remove #jumps oc_lvl 1
tag @e[distance=..6,tag=!oc_hit,tag=!oc_user,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:arrow,limit=1,sort=nearest] add oc_next
execute unless entity @e[tag=oc_next,limit=1] run return 0

scoreboard players set #beam oc_lvl 0
execute facing entity @e[tag=oc_next,limit=1] eyes positioned ~ ~1 ~ run function loot:ocline
execute as @e[tag=oc_next,limit=1] at @s run function loot:ochit