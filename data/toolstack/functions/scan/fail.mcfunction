#say scan/fail

execute if block ~ ~ ~ #toolstack:excluded run scoreboard players set @s tool 0
execute if block ~ ~ ~ #toolstack:semiblock run function toolstack:scan/checksemi

execute unless score @s toolmode matches 1 if block ~ ~ ~ #toolstack:miniblock run scoreboard players set @s tool 0
execute unless score @s toolmode matches 1 if block ~ ~ ~ #toolstack:semiblockplus run function toolstack:scan/checksemi
