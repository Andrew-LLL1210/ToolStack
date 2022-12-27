# say scan/detect

execute if block ~ ~ ~ #minecraft:mineable/pickaxe run scoreboard players set @s tool 1
execute if block ~ ~ ~ #minecraft:mineable/axe run scoreboard players set @s tool 2
execute if block ~ ~ ~ #minecraft:mineable/shovel run scoreboard players set @s tool 3
execute if block ~ ~ ~ #minecraft:mineable/hoe run scoreboard players set @s tool 4

execute if block ~ ~ ~ #toolstack:waxed run scoreboard players set @s specialtool 2
execute if block ~ ~ ~ #minecraft:campfires[lit=true] run scoreboard players set @s specialtool 3
execute if block ~ ~ ~ #toolstack:tillable run scoreboard players set @s specialtool 4
