function loot:hardsnowball/hardsnowballtick
function loot:arrows/electroarrowtick
function loot:arrows/sonicarrowtick
function loot:flamesword/flamethrowertick
function loot:freezeray/freezetick

execute as @e[scores={bleed_time=1..}] at @s run function loot:bleed/bleedtick
scoreboard players reset @a[scores={bleed_death=1..}] bleed_time
scoreboard players reset @a[scores={bleed_death=1..}] bleed_lvl
scoreboard players set @a[scores={bleed_death=1..}] bleed_death 0

execute as @a[scores={bv_used=1..}] run function loot:bloodvial/bloodvial

execute as @e[scores={hex_time=1..}] at @s run function loot:hex/hextick
scoreboard players reset @a[scores={hex_death=1..}] hex_time
scoreboard players reset @a[scores={hex_death=1..}] hex_lvl
scoreboard players reset @a[scores={hex_death=1..}] hex_hp
scoreboard players set @a[scores={hex_death=1..}] hex_death 0

scoreboard players remove @a[scores={mirror_cd=1..}] mirror_cd 1
execute as @e[type=minecraft:mannequin,tag=mirror_clone] at @s run function loot:mirrorimage/mirrortick

execute as @a[scores={reflect_heal=1..}] run function loot:reflect/reflectheal
execute as @a store result score @s reflect_hp run data get entity @s Health 10

execute as @a at @s run function loot:mistystep/mistytick

scoreboard players reset @a[scores={oc_death=1..}] oc_charge
scoreboard players set @a[scores={oc_death=1..}] oc_death 0

scoreboard players remove @a[scores={rag_cd=1..}] rag_cd 1
execute as @e[type=minecraft:marker,tag=rag_storm] at @s run function loot:ragnarok/ragnarokstorm
execute as @e[type=minecraft:marker,tag=rag_meteor] at @s run function loot:ragnarok/ragnarokmeteor

scoreboard players remove @a[scores={frost_cd=1..}] frost_cd 1
execute as @e[type=minecraft:marker,tag=frost_storm] at @s run function loot:frostbreath/frosttick

execute as @a at @s run function loot:jump/djtick

scoreboard players remove @a[scores={rc_cd=1..}] rc_cd 1
execute as @a[scores={rc_staff=1..}] at @s run function loot:crescentstaff/crescentstaff

scoreboard players remove @a[scores={gt_scd=1..}] gt_scd 1
scoreboard players remove @a[scores={gt_ccd=1..}] gt_ccd 1
scoreboard players remove @a[scores={gt_gcd=1..}] gt_gcd 1
scoreboard players remove @a[scores={gt_pcd=1..}] gt_pcd 1
scoreboard players remove @a[scores={gt_phcd=1..}] gt_phcd 1
scoreboard players remove @a[scores={gt_rcd=1..}] gt_rcd 1
scoreboard players remove @a[scores={gt_dcd=1..}] gt_dcd 1
scoreboard players remove @a[scores={gt_poscd=1..}] gt_poscd 1
scoreboard players remove @a[scores={gt_endcd=1..}] gt_endcd 1
scoreboard players remove @a[scores={gt_shcd=1..}] gt_shcd 1
scoreboard players remove @a[scores={gt_jhold=1..}] gt_jhold 1
# Crimson charge: while holding use, gt_holding is refreshed by on_use
execute as @a[scores={gt_charge=1..}] at @s run function loot:crimson/charge_tick
scoreboard players remove @a[scores={gt_holding=1..}] gt_holding 1
# Poseidon smash on land
scoreboard players remove @a[scores={gt_pos_smash=1..}] gt_pos_smash 1
#execute as @a[scores={gt_pos_smash=1..}] at @s if entity @s[nbt={OnGround:1b}] run function loot:poseidon/smash
# Shatter cores
#execute as @e[type=marker,tag=gt_shatter_core] at @s run function loot:shatter/core_tick
# Passives
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{gt_crimson:1b}] run effect give @s strength 2 2 true
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{gt_crimson:1b}] run effect give @s fire_resistance 2 0 true
execute as @a if items entity @s container.* minecraft:nether_star[minecraft:custom_data~{gt_immortal:1b}] run effect give @s absorption 5 4 true
execute as @a if items entity @s weapon.* minecraft:nether_star[minecraft:custom_data~{gt_immortal:1b}] run effect give @s absorption 5 4 true
#execute as @a[scores={gt_baura=1..}] at @s run function loot:beacon/aura_tick
