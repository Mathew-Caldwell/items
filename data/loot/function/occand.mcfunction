tag @s add oc_cand
execute on attacker if entity @s[tag=oc_user] run tag @e[tag=oc_cand,limit=1] add oc_target
tag @s remove oc_cand