
data modify storage toolstack:temp item set from entity @s HandItems[1].tag.toolstack.hoe
data modify storage toolstack:temp item set from entity @s HandItems[1].tag.toolstack.shovel
data modify storage toolstack:temp item set from entity @s HandItems[1].tag.toolstack.axe
data modify storage toolstack:temp item set from entity @s HandItems[1].tag.toolstack.pickaxe

data modify storage toolstack:temp item.tag.toolstack set from entity @s HandItems[1].tag.toolstack

data modify entity @s HandItems[1] set from storage toolstack:temp item