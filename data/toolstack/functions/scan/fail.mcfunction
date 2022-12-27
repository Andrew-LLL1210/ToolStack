#say scan/fail

execute if block ~ ~ ~ #toolstack:excluded run scoreboard players set @s tool 0
execute unless score @s toolmode matches 1 if block ~ ~ ~ #toolstack:miniblock run scoreboard players set @s tool 0
execute if block ~ ~ ~ #toolstack:semiblock run function toolstack:scan/checksemi
execute if block ~ ~ ~ #toolstack:semiblockplus unless score @s toolmode matches 1 run function toolstack:scan/checksemi
execute if score @s toolmode matches 1 if block ~ ~ ~ #toolstack:tillable run scoreboard players set @s tool 4
execute if score @s toolmode matches 1 if score @s tool matches 1 if block ~ ~ ~ #toolstack:waxed run scoreboard players set @s tool 2
