tag @s add freeze_self
scoreboard players set #steps freeze_id 0
execute anchored eyes positioned ^ ^ ^ run function loot:freezeray/freezeray
tag @s remove freeze_self