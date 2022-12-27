# say swapper/test

# make sure that the specialtool is in the stack
scoreboard players operation @s tool = @s specialtool

execute if score @s tool matches 1 unless data entity @s HandItems[0].tag.toolstack.pickaxe run kill @s
execute if score @s tool matches 2 unless data entity @s HandItems[0].tag.toolstack.axe run kill @s
execute if score @s tool matches 3 unless data entity @s HandItems[0].tag.toolstack.shovel run kill @s
execute if score @s tool matches 4 unless data entity @s HandItems[0].tag.toolstack.hoe run kill @s
