# switch toolmode
scoreboard players operation @s toolmode += #1 toolmode
scoreboard players operation @s toolmode %= #n toolmode

# switch item in hands
summon armor_stand ~ ~ ~ {Tags:["temp"]}
item replace entity @e[tag=temp] weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[tag=temp, limit=1] weapon.mainhand
kill @e[tag=temp]

# change tooltip
function toolstack:tooltip
