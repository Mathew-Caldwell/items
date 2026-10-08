advancement revoke @s only loot:reaper_use
execute unless items entity @s weapon.mainhand minecraft:netherite_hoe[minecraft:custom_data~{gt_reaper:1b}] run return 0
function loot:reaper/handle_use