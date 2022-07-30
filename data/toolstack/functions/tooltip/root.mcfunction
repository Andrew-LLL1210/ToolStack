
data modify storage toolstack:temp tooltip set value ['{"text":""}','{"text":"Pickaxe"}','{"text":"Axe"}','{"text":"Shovel"}','{"text":"Hoe"}']

execute unless data storage toolstack:temp stack.pickaxe run data modify storage toolstack:temp tooltip[1] set value '{"color":"gray","strikethrough":true,"text":"Pickaxe"}'
execute unless data storage toolstack:temp stack.axe run data modify storage toolstack:temp tooltip[2] set value '{"color":"gray","strikethrough":true,"text":"Axe"}'
execute unless data storage toolstack:temp stack.shovel run data modify storage toolstack:temp tooltip[3] set value '{"color":"gray","strikethrough":true,"text":"Shovel"}'
execute unless data storage toolstack:temp stack.hoe run data modify storage toolstack:temp tooltip[4] set value '{"color":"gray","strikethrough":true,"text":"Hoe"}'

execute if score @s tool matches 0 run data modify storage toolstack:temp tooltip[0] set value '{"color":"yellow","text":""}'
execute if score @s tool matches 1 run data modify storage toolstack:temp tooltip[1] set value '{"color":"aqua","text":"Pickaxe"}'
execute if score @s tool matches 2 run data modify storage toolstack:temp tooltip[2] set value '{"color":"aqua","text":"Axe"}'
execute if score @s tool matches 3 run data modify storage toolstack:temp tooltip[3] set value '{"color":"aqua","text":"Shovel"}'
execute if score @s tool matches 4 run data modify storage toolstack:temp tooltip[4] set value '{"color":"aqua","text":"Hoe"}'

title @s actionbar {"nbt":"tooltip[]","storage":"toolstack:temp","interpret": true,"separator": " "}