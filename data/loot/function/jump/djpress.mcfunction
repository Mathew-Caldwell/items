execute if entity @s[nbt={OnGround:1b}] run return 0
execute if entity @s[nbt={FallFlying:1b}] run return 0
execute if score @s dj_used matches 1.. run return 0

scoreboard players set #lvl dj_lvl 0
execute store result score #lvl dj_lvl run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments"."loot:jump_booster"
execute unless score #lvl dj_lvl matches 1.. store result score #lvl dj_lvl run data get entity @s equipment.feet.components."minecraft:enchantments"."loot:jump_booster"
execute unless score #lvl dj_lvl matches 1.. run return 0

scoreboard players set @s dj_used 1
scoreboard players set @s dj_t 6
effect give @s minecraft:levitation 1 7 true
particle minecraft:cloud ~ ~0.1 ~ 0.3 0 0.3 0.05 15 force
playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 0.8 1.3