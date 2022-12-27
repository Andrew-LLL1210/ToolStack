# say unstacker/main

execute if predicate toolstack:offhand/pickaxe run function toolstack:unstacker/rm/pickaxe
execute if predicate toolstack:offhand/axe run function toolstack:unstacker/rm/axe
execute if predicate toolstack:offhand/shovel run function toolstack:unstacker/rm/shovel
execute if predicate toolstack:offhand/hoe run function toolstack:unstacker/rm/hoe

# swap into next tool
function toolstack:unstacker/getnexttool

# remove stack data if only one tool left
execute if data entity @s HandItems[1].tag.toolstack.pickaxe run scoreboard players add @s tool 1
execute if data entity @s HandItems[1].tag.toolstack.axe run scoreboard players add @s tool 1
execute if data entity @s HandItems[1].tag.toolstack.shovel run scoreboard players add @s tool 1
execute if data entity @s HandItems[1].tag.toolstack.hoe run scoreboard players add @s tool 1

execute if score @s tool matches ..1 run data remove entity @s HandItems[1].tag.toolstack

item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
function toolstack:setlore
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s armor.head
