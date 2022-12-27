# say swapper/build

summon armor_stand ~ ~ ~ {Tags:["swapper"],Invisible:1b}
scoreboard players operation @e[tag=swapper] tool = @s tool
execute if score @s toolmode matches 1 run scoreboard players operation @e[tag=swapper] tool = @s specialtool
scoreboard players operation @e[tag=swapper] specialtool = @s tool
item replace entity @e[tag=swapper] weapon.mainhand from entity @s weapon.mainhand
execute as @e[tag=swapper] run function toolstack:swapper/main
item replace entity @s weapon.mainhand from entity @e[tag=swapper, limit=1] weapon.mainhand
kill @e[tag=swapper]
