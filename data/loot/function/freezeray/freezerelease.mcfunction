scoreboard players set @s freeze_active 0
scoreboard players set @s freeze_idle 0
scoreboard players operation #me freeze_id = @s freeze_id
execute as @e[tag=freeze_target] if score @s freeze_owner = #me freeze_id run function loot:freezeray/freezefree