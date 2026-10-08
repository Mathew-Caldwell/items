scoreboard players set #lvl reflect_lvl 0
execute store result score #lvl reflect_lvl run data get entity @s Inventory[{Slot:102b}].components."minecraft:enchantments"."loot:reflect"
execute unless score #lvl reflect_lvl matches 1.. store result score #lvl reflect_lvl run data get entity @s equipment.chest.components."minecraft:enchantments"."loot:reflect"
execute unless score #lvl reflect_lvl matches 1.. run return 0

execute store result score #roll reflect_lvl run random value 1..100
execute if score #roll reflect_lvl matches 6.. run return 0

execute store result score #now reflect_hp run data get entity @s Health 10
scoreboard players operation #drop reflect_hp = @s reflect_hp
scoreboard players operation #drop reflect_hp -= #now reflect_hp
execute unless score #drop reflect_hp matches 1.. run return 0

execute on attacker run tag @s add reflect_target
execute unless entity @e[tag=reflect_target,limit=1] run return 0

# refund the wearer: regeneration at 1 HP per tick, one tick per HP lost
scoreboard players operation @s reflect_heal = #drop reflect_hp
scoreboard players add @s reflect_heal 9
scoreboard players operation @s reflect_heal /= #10 reflect_hp

# damage for the attacker: drop x (100 + 5 x level) / 100
scoreboard players operation #pct reflect_hp = #lvl reflect_lvl
scoreboard players operation #pct reflect_hp *= #5 reflect_hp
scoreboard players add #pct reflect_hp 100
scoreboard players operation #drop reflect_hp *= #pct reflect_hp
scoreboard players operation #drop reflect_hp /= #100 reflect_hp
execute store result storage loot:reflect amt double 0.1 run scoreboard players get #drop reflect_hp
function loot:reflectdmg with storage loot:reflect

particle minecraft:enchanted_hit ~ ~1 ~ 0.4 0.6 0.4 0.3 30 force
playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1.4
tag @e[tag=reflect_target] remove reflect_target