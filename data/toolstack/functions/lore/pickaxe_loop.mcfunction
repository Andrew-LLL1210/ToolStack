
execute store success score @s toolmode run data modify storage toolstack:temp names[0].id set from storage toolstack:temp id
execute if score @s toolmode matches 0 run data modify entity @s HandItems[0].tag.display.Lore append from storage toolstack:temp names[0].name
execute if score @s toolmode matches 1 run data remove storage toolstack:temp names[0]
execute if score @s toolmode matches 1 if data storage toolstack:temp names[0] run function toolstack:lore/pickaxe_loop
