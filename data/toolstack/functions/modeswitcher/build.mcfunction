# say modeswitcher/build

summon armor_stand ~ ~ ~ {Tags:["modeswitcher"],Invisible:1b}
item replace entity @e[tag=modeswitcher] weapon.mainhand from entity @s weapon.offhand
execute as @e[tag=modeswitcher] run function toolstack:modeswitcher/main
scoreboard players operation @s tool = @e[tag=modeswitcher] tool
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[tag=modeswitcher, limit=1] weapon.mainhand
kill @e[tag=modeswitcher]

data modify storage toolstack:temp stack set from entity @s SelectedItem.tag.toolstack
function toolstack:tooltip/root