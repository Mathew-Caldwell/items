advancement revoke @s only loot:oc_hit
execute unless score @s oc_charge matches 1.. run return 0

tag @s add oc_user
execute as @e[distance=..8,tag=!oc_user,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:arrow,nbt={HurtTime:10s}] run function loot:overcharge/occand
execute as @e[distance=..8,tag=!oc_user,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:arrow,nbt={HurtTime:9s}] run function loot:overcharge/occand
execute as @e[distance=..8,tag=!oc_user,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:arrow,nbt={HurtTime:8s}] run function loot:overcharge/occand

execute if entity @e[tag=oc_target] run function loot:overcharge/ocfire
tag @e[tag=oc_target] remove oc_target
tag @s remove oc_user