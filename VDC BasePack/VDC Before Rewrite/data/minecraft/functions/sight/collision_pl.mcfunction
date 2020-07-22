tag @s add sight_aiming
summon armor_stand ~ ~1.62 ~ {Tags:["sight_a"]}
execute as @e[type=armor_stand,tag=sight_a] at @s rotated as @p run tp @s ~ ~ ~
execute as @e[tag=sight_a] at @s run tp @s ^ ^ ^1
function minecraft:sight/collison_pl_move
