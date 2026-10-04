advancement revoke @s only loot:useflamethrower
execute unless data entity @s SelectedItem.components."minecraft:custom_data".flamethrower run return 0
execute if score @s flame_cd matches 1.. run return 0

scoreboard players add @s flame_time 1
scoreboard players set @s flame_idle 0

function loot:flamecone
execute if score @s flame_time matches 300.. run function loot:flameend