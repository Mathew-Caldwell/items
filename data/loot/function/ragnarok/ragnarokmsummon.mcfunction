$summon minecraft:marker ~$(x) ~25 ~$(z) {Tags:["rag_meteor","rag_mnew"]}
execute as @e[type=minecraft:marker,tag=rag_mnew,limit=1] run function loot:ragnarok/ragnarokminit