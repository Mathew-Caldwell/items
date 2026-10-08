advancement revoke @s only loot:ed_use
execute unless items entity @s weapon.mainhand minecraft:mace[minecraft:custom_data~{gt_decree:1b}] run return 0
function loot:decree/handle_use