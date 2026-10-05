data remove storage loot:rigid item
execute if entity @s[type=minecraft:player] if data entity @s SelectedItem run data modify storage loot:rigid item set from entity @s SelectedItem
execute unless entity @s[type=minecraft:player] if data entity @s equipment.mainhand run data modify storage loot:rigid item set from entity @s equipment.mainhand
execute unless data storage loot:rigid item run return 0

item replace entity @s weapon.mainhand with minecraft:air

summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:40,Tags:["rigid_new"]}
data modify entity @e[type=minecraft:item,tag=rigid_new,limit=1,sort=nearest] Item set from storage loot:rigid item
data modify entity @e[type=minecraft:item,tag=rigid_new,limit=1,sort=nearest] Motion set value [0.0,0.25,0.0]
tag @e[type=minecraft:item,tag=rigid_new] remove rigid_new

particle minecraft:crit ~ ~1.2 ~ 0.2 0.2 0.2 0.3 15 force
playsound minecraft:entity.item.break player @a ~ ~ ~ 1 0.8
data remove storage loot:rigid item