# say modeswitcher/main

execute store result score @s tool run data get entity @s HandItems[0].tag.toolmode
scoreboard players add @s tool 1
execute if score @s tool matches 1 unless data entity @s HandItems[0].tag.toolstack.pickaxe run scoreboard players add @s tool 1
execute if score @s tool matches 2 unless data entity @s HandItems[0].tag.toolstack.axe run scoreboard players add @s tool 1
execute if score @s tool matches 3 unless data entity @s HandItems[0].tag.toolstack.shovel run scoreboard players add @s tool 1
execute if score @s tool matches 4 unless data entity @s HandItems[0].tag.toolstack.hoe run scoreboard players add @s tool 1
scoreboard players operation @s tool %= #5 tool

data remove entity @s HandItems[0].tag.toolmode
execute if score @s tool matches 1..4 run function toolstack:swapper/main

execute store result entity @s HandItems[0].tag.toolmode byte 1 run scoreboard players get @s tool
execute if score @s tool matches 0 run data remove entity @s HandItems[0].tag.toolmode
