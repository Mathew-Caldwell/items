advancement revoke @s only loot:freeze_use
execute unless data entity @s SelectedItem.components."minecraft:custom_data".freeze_ray run return 0

execute unless score @s freeze_id matches 1.. run function loot:freezeassign
scoreboard players operation #me freeze_id = @s freeze_id
scoreboard players set @s freeze_active 1
scoreboard players set @s freeze_idle 0

scoreboard players set #has freeze_id 0
execute as @e[tag=freeze_target] if score @s freeze_owner = #me freeze_id run scoreboard players set #has freeze_id 1

execute if score #has freeze_id matches 0 run function loot:freezegrab

execute as @e[tag=freeze_target] if score @s freeze_owner = #me freeze_id run tag @s add freeze_mine
execute if entity @e[tag=freeze_mine] run function loot:freezehold