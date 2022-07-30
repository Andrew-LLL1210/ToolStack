# say scan/detect

execute if block ~ ~ ~ #minecraft:mineable/pickaxe run scoreboard players set @s tool 1
execute if block ~ ~ ~ #minecraft:mineable/axe run scoreboard players set @s tool 2
execute if block ~ ~ ~ #minecraft:mineable/shovel run scoreboard players set @s tool 3
execute if block ~ ~ ~ #minecraft:mineable/hoe run scoreboard players set @s tool 4