execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 as @e[tag=vdc_mod_base] run tp @s ~ ~ ~
execute store result score @s temp1 run data get entity @e[limit=1,tag=vdc_mod_base] Pos[0] 1000
execute store result score @s temp2 run data get entity @e[limit=1,tag=vdc_mod_base] Pos[1] 1000
execute store result score @s temp3 run data get entity @e[limit=1,tag=vdc_mod_base] Pos[2] 1000