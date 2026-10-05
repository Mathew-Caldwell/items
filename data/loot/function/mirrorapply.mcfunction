execute unless entity @s[type=minecraft:player] run return 0
execute if score @s mirror_cd matches 1.. run return 0

scoreboard players set #lvl mirror_lvl 0
execute store result score #lvl mirror_lvl run data get entity @s equipment.chest.components."minecraft:enchantments"."loot:mirror_image"
execute unless score #lvl mirror_lvl matches 1.. run return 0

scoreboard players set @s mirror_cd 200
scoreboard players operation #left mirror_lvl = #lvl mirror_lvl
tag @s add mirror_src
data modify storage loot:mirror uuid set from entity @s UUID

particle minecraft:poof ~ ~1 ~ 0.4 0.6 0.4 0.1 30 force
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1

execute rotated ~ 0 run function loot:mirrorspawn
tag @s remove mirror_src