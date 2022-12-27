# say swapper/test

# make sure that the tool is in the stack
execute if score @s tool matches 0 run scoreboard players operation @s tool = @s specialtool

execute if score @s tool matches 1 unless data entity @s HandItems[0].tag.toolstack.pickaxe run function toolstack:swapper/testspecial
execute if score @s tool matches 2 unless data entity @s HandItems[0].tag.toolstack.axe run function toolstack:swapper/testspecial
execute if score @s tool matches 3 unless data entity @s HandItems[0].tag.toolstack.shovel run function toolstack:swapper/testspecial
execute if score @s tool matches 4 unless data entity @s HandItems[0].tag.toolstack.hoe run function toolstack:swapper/testspecial
