execute unless block ~ ~ ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["system","sight_target"]}
execute unless block ~ ~ ~ air store result score @s sight_target_x run data get entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=sight_target] Pos[0] 100
execute unless block ~ ~ ~ air store result score @s sight_target_y run data get entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=sight_target] Pos[1] 100
execute unless block ~ ~ ~ air store result score @s sight_target_z run data get entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=sight_target] Pos[2] 100
execute unless block ~ ~ ~ air run kill @e[type=area_effect_cloud,tag=sight_target]

execute if entity @e[tag=!sight_target,distance=..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["system","sight_target"]}
execute if entity @e[tag=!sight_target,distance=..1] store result score @s sight_target_x run data get entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=sight_target] Pos[0] 100 
execute if entity @e[tag=!sight_target,distance=..1] store result score @s sight_target_y run data get entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=sight_target] Pos[1] 100
execute if entity @e[tag=!sight_target,distance=..1] store result score @s sight_target_z run data get entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=sight_target] Pos[2] 100
execute if entity @e[tag=!sight_target,distance=..1] run kill @e[type=area_effect_cloud,tag=sight_target]


execute if block ~ ~ ~ air unless entity @e[tag=!sight_target,distance=..1] rotated as @s anchored feet positioned ^ ^ ^0.2 run function module/sight/target