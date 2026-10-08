execute if score @s gt_ccd matches 1.. run return run title @s actionbar {"text":"Crimson recharging...","color":"red"}
scoreboard players set @s gt_holding 6
execute unless score @s gt_charge matches 1.. run scoreboard players set @s gt_charge 1
