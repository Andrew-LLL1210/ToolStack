# say unstacker/test

# XXX this function is never run, this condition has been added to the unstacking_tools predicate
# make sure item in offhand is a toolstack
execute if data entity @s HandItems[1].tag.toolstack run function toolstack:unstacker/main
