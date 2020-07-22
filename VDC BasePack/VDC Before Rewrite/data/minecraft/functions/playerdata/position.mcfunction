tag @s remove moving

execute store result score @s var_a run data get entity @s Pos[0] 100
execute store result score @s var_b run data get entity @s Pos[1] 100
execute store result score @s var_c run data get entity @s Pos[2] 100

execute unless score @s var_a = @s pos_x run tag @s add moving
execute unless score @s var_b = @s pos_y run tag @s add moving
execute unless score @s var_c = @s pos_z run tag @s add moving

execute run scoreboard players operation @s pos_x = @s var_a
execute run scoreboard players operation @s pos_y = @s var_b
execute run scoreboard players operation @s pos_z = @s var_c