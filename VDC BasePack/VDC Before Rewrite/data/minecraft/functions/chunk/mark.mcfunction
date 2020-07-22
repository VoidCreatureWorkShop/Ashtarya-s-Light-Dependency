summon armor_stand ~ -1 ~ {Tags:["system","chunk","undet"],Invulnerable:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Invisible:1,Marker:1}
execute store result score pos var_a run data get entity @e[tag=undet,limit=1] Pos[0]
scoreboard players operation pos var_a /= 16 number
scoreboard players add pos var_a 1
scoreboard players operation pos var_a *= 16 number
execute store result entity @e[tag=undet,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players remove pos var_a 8

execute store result score pos var_a run data get entity @e[tag=undet,limit=1] Pos[2]
scoreboard players operation pos var_a /= 16 number
scoreboard players add pos var_a 1
scoreboard players operation pos var_a *= 16 number
execute store result entity @e[tag=undet,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players remove pos var_a 8

tag @e[tag=undet] remove undet
