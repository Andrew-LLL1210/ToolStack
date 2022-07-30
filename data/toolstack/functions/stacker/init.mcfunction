data modify storage toolstack:temp item set from entity @s HandItems[1]
execute if predicate toolstack:offhand/axe run data modify entity @s HandItems[1].tag.toolstack.axe set from storage toolstack:temp item
execute if predicate toolstack:offhand/hoe run data modify entity @s HandItems[1].tag.toolstack.hoe set from storage toolstack:temp item
execute if predicate toolstack:offhand/pickaxe run data modify entity @s HandItems[1].tag.toolstack.pickaxe set from storage toolstack:temp item
execute if predicate toolstack:offhand/shovel run data modify entity @s HandItems[1].tag.toolstack.shovel set from storage toolstack:temp item
