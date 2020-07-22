execute as @a[tag=a3s] run scoreboard players add @s timer 1
execute as @a[tag=a3s,scores={timer=61..}] run tag @s add a3s_over
execute as @a[tag=a3s_over] run scoreboard players reset @s timer
execute as @a[tag=a3s_over] run tag @s remove a3s
execute as @a[tag=a3s_over] run tag @s remove a3s_over
