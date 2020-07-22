#
execute as @e[tag=sight_a] at @s unless entity @e[distance=..0.01] if block ~ ~ ~ air run tp @s ^ ^ ^0.05
execute as @e[tag=sight_a] at @s if entity @e[distance=..0.01] store result score @a[tag=sight_aiming] target_pos_x run data get entity @s Pos[0]
execute as @e[tag=sight_a] at @s if entity @e[distance=..0.01] store result score @a[tag=sight_aiming] target_pos_y run data get entity @s Pos[1]
execute as @e[tag=sight_a] at @s if entity @e[distance=..0.01] store result score @a[tag=sight_aiming] target_pos_z run data get entity @s Pos[2]
execute as @e[tag=sight_a] at @s if entity @e[distance=..0.01] run kill @s
execute as @e[tag=sight_a] at @s unless block ~ ~ ~ air store result score @a[tag=sight_aiming] target_pos_x run data get entity @s Pos[0]
execute as @e[tag=sight_a] at @s unless block ~ ~ ~ air store result score @a[tag=sight_aiming] target_pos_y run data get entity @s Pos[1]
execute as @e[tag=sight_a] at @s unless block ~ ~ ~ air store result score @a[tag=sight_aiming] target_pos_z run data get entity @s Pos[2]
execute as @e[tag=sight_a] at @s unless block ~ ~ ~ air run kill @s
execute if entity @e[tag=sight_a] run function minecraft:sight/collison_pl_move