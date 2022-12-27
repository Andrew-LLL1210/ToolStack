# say scan/main

scoreboard players set @s tool 0
scoreboard players set @s specialtool 0
execute anchored eyes positioned ^ ^ ^ run function toolstack:scan/loop
execute if score @s tool matches 1 unless predicate toolstack:mainhand/pickaxe run function toolstack:swapper/build
execute if score @s tool matches 2 unless predicate toolstack:mainhand/axe run function toolstack:swapper/build
execute if score @s tool matches 3 unless predicate toolstack:mainhand/shovel run function toolstack:swapper/build
execute if score @s tool matches 4 unless predicate toolstack:mainhand/hoe run function toolstack:swapper/build
