# say swapper/main

function toolstack:swapper/test

item replace entity @s weapon.offhand from entity @s weapon.mainhand

data remove entity @s HandItems[0].tag.toolstack
data remove entity @s HandItems[0].tag.display.Lore

execute if predicate toolstack:mainhand/pickaxe run data modify entity @s HandItems[1].tag.toolstack.pickaxe set from entity @s HandItems[0]
execute if predicate toolstack:mainhand/axe run data modify entity @s HandItems[1].tag.toolstack.axe set from entity @s HandItems[0]
execute if predicate toolstack:mainhand/shovel run data modify entity @s HandItems[1].tag.toolstack.shovel set from entity @s HandItems[0]
execute if predicate toolstack:mainhand/hoe run data modify entity @s HandItems[1].tag.toolstack.hoe set from entity @s HandItems[0]

execute if score @s tool matches 1 run data modify entity @s HandItems[0] set from entity @s HandItems[1].tag.toolstack.pickaxe
execute if score @s tool matches 2 run data modify entity @s HandItems[0] set from entity @s HandItems[1].tag.toolstack.axe
execute if score @s tool matches 3 run data modify entity @s HandItems[0] set from entity @s HandItems[1].tag.toolstack.shovel
execute if score @s tool matches 4 run data modify entity @s HandItems[0] set from entity @s HandItems[1].tag.toolstack.hoe

data modify entity @s HandItems[0].tag.toolstack set from entity @s HandItems[1].tag.toolstack

function toolstack:setlore
