scoreboard players operation #drop hex_hp = @s hex_hp
scoreboard players operation #drop hex_hp -= #now hex_hp

scoreboard players set #pct hex_hp 20
execute if score @s hex_lvl matches 2 run scoreboard players set #pct hex_hp 35
execute if score @s hex_lvl matches 3 run scoreboard players set #pct hex_hp 50

scoreboard players operation #drop hex_hp *= #pct hex_hp
scoreboard players set #100 hex_hp 100
scoreboard players operation #drop hex_hp /= #100 hex_hp

execute if score #drop hex_hp matches 1.. run function loot:hexdamage
execute store result score @s hex_hp run data get entity @s Health 10