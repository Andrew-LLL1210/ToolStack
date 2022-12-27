execute align y run summon armor_stand ~ ~ ~ {Tags:["temp"],Invisible:1b,Marker:1b}
execute unless block ~ ~ ~ #slabs[type=top] unless block ~ ~ ~ #stairs[half=top] positioned ~ ~-.5 ~ align y if entity @e[tag=temp,distance=0..0.1,limit=1] run scoreboard players set @s tool 0
execute if block ~ ~ ~ #slabs[type=top] positioned ~ ~.5 ~ align y if entity @e[tag=temp,distance=0..0.1,limit=1] run scoreboard players set @s tool 0
execute if block ~ ~ ~ #stairs[half=top] positioned ~ ~.5 ~ align y if entity @e[tag=temp,distance=0..0.1,limit=1] run scoreboard players set @s tool 0
kill @e[tag=temp]
