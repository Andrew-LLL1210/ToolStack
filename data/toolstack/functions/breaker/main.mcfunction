# say breaker/main

# remove item from stack
execute if predicate toolstack:mainhand/axe run data remove entity @s HandItems[0].tag.toolstack.axe
execute if predicate toolstack:mainhand/hoe run data remove entity @s HandItems[0].tag.toolstack.hoe
execute if predicate toolstack:mainhand/pickaxe run data remove entity @s HandItems[0].tag.toolstack.pickaxe
execute if predicate toolstack:mainhand/shovel run data remove entity @s HandItems[0].tag.toolstack.shovel

# find new item
data modify storage toolstack:temp item set from entity @s HandItems[0].tag.toolstack.hoe
data modify storage toolstack:temp item set from entity @s HandItems[0].tag.toolstack.shovel
data modify storage toolstack:temp item set from entity @s HandItems[0].tag.toolstack.axe
data modify storage toolstack:temp item set from entity @s HandItems[0].tag.toolstack.pickaxe

data modify storage toolstack:temp item.tag.toolstack set from entity @s HandItems[0].tag.toolstack

data modify entity @s HandItems[0] set from storage toolstack:temp item

# remove stack data if only one tool left
execute if data entity @s HandItems[0].tag.toolstack.pickaxe run scoreboard players add @s tool 1
execute if data entity @s HandItems[0].tag.toolstack.axe run scoreboard players add @s tool 1
execute if data entity @s HandItems[0].tag.toolstack.shovel run scoreboard players add @s tool 1
execute if data entity @s HandItems[0].tag.toolstack.hoe run scoreboard players add @s tool 1

execute if score @s tool matches ..1 run data remove entity @s HandItems[0].tag.toolstack

function toolstack:setlore
