execute store result score @s var_a run data get entity @s Rotation[0] 10000
execute store result score @s var_b run data get entity @s Rotation[1] 10000

execute unless score @s var_a = @s rotation_x run tag @s add rotating
execute unless score @s var_b = @s rotation_y run tag @s add rotating

execute if score @s var_a = @s rotation_x run tag @s remove rotating
execute if score @s var_b = @s rotation_y run tag @s remove rotating

execute run scoreboard players operation @s rotation_x = @s var_a
execute run scoreboard players operation @s rotation_y = @s var_b