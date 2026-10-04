data modify storage loot:steal cur.id set from storage loot:steal effects[0].id
execute store result storage loot:steal cur.amp int 1 run data get storage loot:steal effects[0].amplifier
execute store result storage loot:steal cur.secs int 0.05 run data get storage loot:steal effects[0].duration
execute if data storage loot:steal {cur:{secs:0}} run data modify storage loot:steal cur.secs set value 1
data modify storage loot:steal temp set from storage loot:steal effects[0].duration
execute if data storage loot:steal {temp:-1} run data modify storage loot:steal cur.secs set value "infinite"

function loot:stealfx with storage loot:steal cur

data remove storage loot:steal effects[0]
execute if data storage loot:steal effects[0] run function loot:stealloop