tag @s remove mirror_new
scoreboard players set @s mirror_t 0
item replace entity @s armor.head from entity @a[tag=mirror_src,limit=1] armor.head
item replace entity @s armor.chest from entity @a[tag=mirror_src,limit=1] armor.chest
item replace entity @s armor.legs from entity @a[tag=mirror_src,limit=1] armor.legs
item replace entity @s armor.feet from entity @a[tag=mirror_src,limit=1] armor.feet
item replace entity @s weapon.mainhand from entity @a[tag=mirror_src,limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @a[tag=mirror_src,limit=1] weapon.offhand
data modify entity @s Rotation set from entity @a[tag=mirror_src,limit=1] Rotation
particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0.05 15 force