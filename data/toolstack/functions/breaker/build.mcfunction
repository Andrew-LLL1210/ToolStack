# say breaker/build

playsound entity.item.break player @s ~ ~ ~ 1 1 1

summon armor_stand ~ ~ ~ {Tags:["breaker"],Invisible:1b}
item replace entity @e[tag=breaker] weapon.mainhand from entity @s weapon.mainhand
execute as @e[tag=breaker] run function toolstack:breaker/main
item replace entity @s weapon.mainhand from entity @e[tag=breaker, limit=1] weapon.mainhand
kill @e[tag=breaker]
