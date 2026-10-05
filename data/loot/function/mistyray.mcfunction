scoreboard players add #step ms_lvl 1
execute if score #step ms_lvl > #steps ms_lvl run return run function loot:mistygo
execute positioned ^ ^ ^0.5 unless function loot:mistyok run return run function loot:mistygo
execute positioned ^ ^ ^0.5 run function loot:mistyray