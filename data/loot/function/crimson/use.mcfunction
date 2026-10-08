advancement revoke @s only loot:crimson_use
execute unless items entity @s weapon.mainhand minecraft:netherite_spear[minecraft:custom_data~{gt_crimson:1b}] run return 0
function loot:crimson/start_charge