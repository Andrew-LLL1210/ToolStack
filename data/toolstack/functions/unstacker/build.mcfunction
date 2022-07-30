# say unstacker/build

# prevent stacking simultaneously to unstacking
tag @s add unstacking

summon armor_stand ~ ~ ~ {Tags:["unstacker"],Invisible:1b}
item replace entity @e[tag=unstacker] weapon.offhand from entity @s weapon.offhand
execute as @e[tag=unstacker] run function toolstack:unstacker/main
item replace entity @s weapon.mainhand from entity @e[tag=unstacker, limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @e[tag=unstacker, limit=1] weapon.offhand
kill @e[tag=unstacker]