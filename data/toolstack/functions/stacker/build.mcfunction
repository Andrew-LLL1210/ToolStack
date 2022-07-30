# say stacker/build

# prevent unstacking simultaneously to stacking
tag @s add stacking

summon armor_stand ~ ~ ~ {Tags:["stacker"],Invisible:1b}
item replace entity @e[tag=stacker] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[tag=stacker] weapon.offhand from entity @s weapon.offhand
execute as @e[tag=stacker] run function toolstack:stacker/main
item replace entity @s weapon.mainhand from entity @e[tag=stacker, limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @e[tag=stacker, limit=1] weapon.offhand
kill @e[tag=stacker]