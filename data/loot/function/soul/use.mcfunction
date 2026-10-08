advancement revoke @s only loot:soul_use
execute unless items entity @s weapon.mainhand minecraft:echo_shard[minecraft:custom_data~{gt_soul:1b}] run return 0
function loot:soul/try_fire