execute positioned ^ ^ ^2.5 run function loot:mirrorimage/mirrorone with storage loot:mirror

scoreboard players remove #left mirror_lvl 1
execute unless score #left mirror_lvl matches 1.. run return 0
execute if score #lvl mirror_lvl matches 1 rotated ~180 0 run function loot:mirrorimage/mirrorspawn
execute if score #lvl mirror_lvl matches 2 rotated ~120 0 run function loot:mirrorimage/mirrorspawn
execute if score #lvl mirror_lvl matches 3 rotated ~90 0 run function loot:mirrorimage/mirrorspawn
execute if score #lvl mirror_lvl matches 4 rotated ~72 0 run function loot:mirrorimage/mirrorspawn