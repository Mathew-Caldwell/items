scoreboard players operation #o frost_owner = @s frost_owner
execute as @a if score @s frost_id = #o frost_owner run tag @s add frost_user

$execute positioned ~ ~3 ~ as @e[distance=..$(rad),tag=!frost_user,type=!minecraft:marker,type=!minecraft:item,type=!minecraft:experience_orb] run function loot:frostbreath/frosthit with storage loot:frost

playsound minecraft:entity.player.hurt_freeze player @a ~ ~2 ~ 1.5 0.8
tag @a remove frost_user