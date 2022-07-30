# say stacker/test

# fail if item to stack is a stack (no stack merging / nesting!)
execute if data entity @s HandItems[0].tag.toolstack run kill @s

# fail if item to stack already in stack
execute if data entity @s HandItems[1].tag.toolstack.axe if predicate toolstack:mainhand/axe run kill @s
execute if data entity @s HandItems[1].tag.toolstack.hoe if predicate toolstack:mainhand/hoe run kill @s
execute if data entity @s HandItems[1].tag.toolstack.pickaxe if predicate toolstack:mainhand/pickaxe run kill @s
execute if data entity @s HandItems[1].tag.toolstack.shovel if predicate toolstack:mainhand/shovel run kill @s