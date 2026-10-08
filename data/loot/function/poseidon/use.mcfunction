advancement revoke @s only loot:posiden_use
execute unless items entity @s weapon.mainhand minecraft:netherite_nautilus_armor[minecraft:custom_data~{gt_poseidon:1b}] run return 0
function loot:poseidon/dash