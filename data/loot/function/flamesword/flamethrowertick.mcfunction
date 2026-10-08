scoreboard players remove @a[scores={flame_cd=1..}] flame_cd 1
scoreboard players add @a[scores={flame_time=1..}] flame_idle 1
execute as @a[scores={flame_idle=4..}] run function loot:flamesword/flameend