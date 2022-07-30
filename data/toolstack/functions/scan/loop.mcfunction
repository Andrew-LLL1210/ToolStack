# say scan/loop

function toolstack:scan/detect
execute unless score @s tool matches 0 run function toolstack:scan/fail
execute if score @s tool matches 0 if entity @s[distance=..6,] positioned ^ ^ ^.1 run function toolstack:scan/loop