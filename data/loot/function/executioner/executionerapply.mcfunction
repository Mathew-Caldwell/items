scoreboard players set #lvl exec_lvl 0
execute on attacker store result score #lvl exec_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."loot:executioner"
execute unless score #lvl exec_lvl matches 1.. run return 0

execute store result score #hp exec_lvl run data get entity @s Health 100
execute store result score #max exec_lvl run attribute @s minecraft:max_health get 1
execute unless score #max exec_lvl matches 1.. run return 0
scoreboard players operation #hp exec_lvl /= #max exec_lvl

scoreboard players operation #thr exec_lvl = #lvl exec_lvl
scoreboard players operation #thr exec_lvl *= #5 exec_lvl
scoreboard players add #thr exec_lvl 15
execute if score #hp exec_lvl > #thr exec_lvl run return 0

execute on attacker run tag @s add exec_user
execute if score #lvl exec_lvl matches 1 run damage @s 4 loot:execution by @a[tag=exec_user,limit=1]
execute if score #lvl exec_lvl matches 2 run damage @s 6 loot:execution by @a[tag=exec_user,limit=1]
execute if score #lvl exec_lvl matches 3 run damage @s 8 loot:execution by @a[tag=exec_user,limit=1]
execute if score #lvl exec_lvl matches 4 run damage @s 10 loot:execution by @a[tag=exec_user,limit=1]
execute if score #lvl exec_lvl matches 5 run damage @s 12 loot:execution by @a[tag=exec_user,limit=1]
tag @a remove exec_user

particle minecraft:crit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 force
particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.3 0.2 0.1 8 force
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.6