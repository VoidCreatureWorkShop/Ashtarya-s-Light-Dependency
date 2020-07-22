execute as @e[tag=deferent_outer] at @s run particle minecraft:dragon_breath ^ ^ ^10 0.05 0.05 0.05 0 3 force
execute as @e[tag=magic_circle] at @s run particle minecraft:flame ^ ^ ^9 0.05 0.05 0.05 0 3 force
#execute as @e[tag=magic_circle] at @s run particle minecraft:flame ~ ~6.36 ~ 0.05 0.05 1.6 0 3 force
#execute as @e[tag=magic_circle] at @s run particle minecraft:flame ~ ~-6.36 ~ 0.05 0.05 1.6 0 3 force
#execute as @e[tag=magic_circle] at @s run particle minecraft:flame ~ ~ ~6.36 0.05 1.6 0.05 0 3 force
#execute as @e[tag=magic_circle] at @s run particle minecraft:flame ~ ~ ~-6.36 0.05 1.6 0.05 0 3 force
execute as @e[tag=magic_circle] at @s[x_rotation=89.5..90] run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=magic_circle] at @s[x_rotation=-90..-89.5] run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=magic_circle] at @s[scores={var_1=1}] run tp @s ~ ~ ~ ~ ~1
execute as @e[tag=magic_circle] at @s[scores={var_1=2}] run tp @s ~ ~ ~ ~ ~-1


execute as @e[tag=magic_circle] at @s[x_rotation=89.5..90] run scoreboard players set @s var_1 2
execute as @e[tag=magic_circle] at @s[x_rotation=-90..-89.5] run scoreboard players set @s var_1 1


/execute as @e[tag=Portal_A] at @s as @e[distance=..9,tag=!magic_circle] positioned ~ ~-9 ~-9 as @s[dx=1,dy=18,dz=18] at @s positioned as @e[limit=1,tag=Portal_B] run say 1