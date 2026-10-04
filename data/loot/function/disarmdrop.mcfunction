summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:50,Tags:["disarm_new"]}
data modify entity @e[type=minecraft:item,tag=disarm_new,limit=1,sort=nearest] Item set from storage loot:disarm item
data modify entity @e[type=minecraft:item,tag=disarm_new,limit=1,sort=nearest] Motion set value [0.0,0.25,0.0]
tag @e[type=minecraft:item,tag=disarm_new] remove disarm_new

particle minecraft:crit ~ ~1.2 ~ 0.2 0.2 0.2 0.3 15 force
playsound minecraft:entity.item.break player @a ~ ~ ~ 1 0.8
data remove storage loot:disarm item