# say stacker/main

# fail on edge cases
function toolstack:stacker/test

# initialize offhand to stack if not already
execute unless data entity @s HandItems[1].tag.toolstack run function toolstack:stacker/init

# put item to stack into stack
data modify storage toolstack:temp item set from entity @s HandItems[0]
execute if predicate toolstack:mainhand/axe run data modify entity @s HandItems[1].tag.toolstack.axe set from storage toolstack:temp item
execute if predicate toolstack:mainhand/hoe run data modify entity @s HandItems[1].tag.toolstack.hoe set from storage toolstack:temp item
execute if predicate toolstack:mainhand/pickaxe run data modify entity @s HandItems[1].tag.toolstack.pickaxe set from storage toolstack:temp item
execute if predicate toolstack:mainhand/shovel run data modify entity @s HandItems[1].tag.toolstack.shovel set from storage toolstack:temp item

# set lore
item replace entity @s weapon.mainhand from entity @s weapon.offhand
function toolstack:setlore
item replace entity @s weapon.offhand from entity @s weapon.mainhand

# remove old item
item replace entity @s weapon.mainhand with air
