# toolstack:tick top-level function

# if player already sneaking when pressing [F], switch tool mode
execute as @a[tag=preparetomodeswitch,predicate=toolstack:mode_switch] run function toolstack:modeswitcher/build

# if player sneaks with a tool in both hands, try stacking
# if player sneaks with a stack in offhand, try unstacking
execute as @a[tag=!unstacking,predicate=toolstack:stacking_tools] run function toolstack:stacker/build
execute as @a[tag=!stacking,predicate=toolstack:unstacking_tools] run function toolstack:unstacker/build

execute as @a[tag=stacking,predicate=!toolstack:sneaking] run tag @s remove stacking
execute as @a[tag=unstacking,predicate=!toolstack:sneaking] run tag @s remove unstacking

# if player holding a toolstack, scan then try swapping
execute as @a if data entity @s SelectedItem.tag.toolstack unless data entity @s SelectedItem.tag.toolmode at @s run function toolstack:scan/main

# break held tool at 1 durability
execute as @a if predicate toolstack:break_tool run function toolstack:breaker/build



tag @a remove preparetomodeswitch
tag @a[predicate=toolstack:prepare_mode_switch] add preparetomodeswitch