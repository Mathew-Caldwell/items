execute if score @s gt_holding matches 1.. run scoreboard players add @s gt_charge 1
execute if score @s gt_holding matches 1.. at @s run function loot:crimson/circle
execute if score @s gt_holding matches 1.. if score @s gt_charge matches 35.. run title @s actionbar {"text":"FULL CHARGE — release!","color":"red","bold":true}
execute if score @s gt_holding matches 0 if score @s gt_charge matches 12.. run function loot:crimson/fire
execute if score @s gt_holding matches 0 if score @s gt_charge matches 1..11 run scoreboard players set @s gt_charge 0
